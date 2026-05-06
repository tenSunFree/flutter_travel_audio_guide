import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/list_skeleton.dart';
import '../../domain/entities/audio_guide.dart';
import '../enums/sort_filter_enums.dart';
import '../controllers/audio_guide_list_controller.dart';
import '../widgets/audio_guide_tile.dart';
import '../../../../core/widgets/common_app_bar.dart';
import '../widgets/condition_summary_bar.dart';
import '../widgets/sort_filter_bottom_sheet.dart';
import 'audio_guide_detail_page.dart';

class AudioGuideListPage extends ConsumerStatefulWidget {
  const AudioGuideListPage({super.key});

  @override
  ConsumerState<AudioGuideListPage> createState() => _AudioGuideListPageState();
}

class _AudioGuideListPageState extends ConsumerState<AudioGuideListPage> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;
    const threshold = 240.0;
    final position = _scrollController.position;
    final shouldLoadMore =
        position.pixels >= position.maxScrollExtent - threshold;
    if (shouldLoadMore) {
      unawaited(ref.read(audioGuideListControllerProvider.notifier).loadMore());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  Future<void> _openSortFilter(BuildContext context) async {
    final state = ref.read(audioGuideListControllerProvider);
    final result = await showModalBottomSheet<(SortOrder, FilterType)>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => SortFilterBottomSheet(
        initialSortOrder: state.sortOrder,
        initialFilterType: state.filterType,
      ),
    );
    if (result != null) {
      final (sort, filter) = result;
      ref
          .read(audioGuideListControllerProvider.notifier)
          .applySortFilter(sort, filter);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(audioGuideListControllerProvider);
    final controller = ref.read(audioGuideListControllerProvider.notifier);
    final isNonDefault = !state.isDefaultFilter;
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar: CommonAppBar(
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.tune,
                  color: isNonDefault ? primaryColor : null,
                ),
                tooltip: '排序與篩選',
                onPressed: () => _openSortFilter(context),
              ),
              if (isNonDefault)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (state.allItems.isEmpty && state.isSyncing) {
            return const ListSkeleton(
              itemCount: 7,
              itemHeight: 100,
              hasLeadingBox: true,
            );
          }
          if (state.allItems.isEmpty && !state.isSyncing) {
            return RefreshIndicator(
              onRefresh: controller.loadInitial,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(height: 200),
                  Center(child: Text('暫無語音導覽資料')),
                ],
              ),
            );
          }
          if (state.errorMessage != null && state.items.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.errorMessage!, textAlign: TextAlign.center),
                    const SizedBox(height: 12),
                    FilledButton(
                      onPressed: controller.loadInitial,
                      child: const Text('重新載入'),
                    ),
                  ],
                ),
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: controller.loadInitial,
            child: Column(
              children: [
                // Condition summary bar
                ConditionSummaryBar(
                  sortOrder: state.sortOrder,
                  filterType: state.filterType,
                  isNonDefault: isNonDefault,
                  onReset: controller.resetSortFilter,
                ),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: ListView.separated(
                      key: ValueKey(
                        '${state.sortOrder.name}_${state.filterType.name}',
                      ),
                      controller: _scrollController,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount:
                          state.items.length + (state.isLoadingMore ? 1 : 0),
                      separatorBuilder: (context, index) =>
                          const Divider(height: 1),
                      itemBuilder: (context, index) {
                        if (index >= state.items.length) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 24),
                            child: Center(child: CircularProgressIndicator()),
                          );
                        }
                        final guide = state.items[index];
                        return AudioGuideTile(
                          guide: guide,
                          isDownloading: state.downloadingIds.contains(
                            guide.id,
                          ),
                          onActionPressed: () => _handleAction(context, guide),
                        );
                      },
                    ),
                  ),
                ),
                if (state.errorMessage != null && state.items.isNotEmpty)
                  Container(
                    width: double.infinity,
                    color: AppColors.errorSurface,
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      state.errorMessage!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _handleAction(BuildContext context, AudioGuide guide) async {
    if (guide.isDownloaded && guide.localFilePath != null) {
      _openDetail(context, guide);
      return;
    }
    final error = await ref
        .read(audioGuideListControllerProvider.notifier)
        .downloadGuide(guide);
    if (!mounted) return;
    if (error != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error)));
      return;
    }
    final latestState = ref.read(audioGuideListControllerProvider);
    final latestGuide = latestState.items.firstWhere(
      (item) => item.id == guide.id,
      orElse: () => guide,
    );
    if (latestGuide.localFilePath != null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('下載完成')));
    }
  }

  void _openDetail(BuildContext context, AudioGuide guide) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => AudioGuideDetailPage(guide: guide),
      ),
    );
  }
}
