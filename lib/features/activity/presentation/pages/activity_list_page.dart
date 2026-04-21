import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../audio_guide/presentation/widgets/common_app_bar.dart';
import '../../domain/entities/activity.dart';
import '../controllers/activity_list_controller.dart';
import '../widgets/activity_tile.dart';
import 'activity_detail_page.dart';

class ActivityListPage extends ConsumerStatefulWidget {
  const ActivityListPage({super.key});

  @override
  ConsumerState<ActivityListPage> createState() => _ActivityListPageState();
}

class _ActivityListPageState extends ConsumerState<ActivityListPage> {
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
      unawaited(ref.read(activityListControllerProvider.notifier).loadMore());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _openDetail(Activity activity) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ActivityDetailPage(activity: activity),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(activityListControllerProvider);
    final controller = ref.read(activityListControllerProvider.notifier);
    return Scaffold(
      appBar: const CommonAppBar(title: '活動展演'),
      body: Builder(
        builder: (context) {
          // Initial loading
          if (state.isInitialLoading && state.items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          // Initial loading failed (list is completely empty)
          if (state.errorMessage != null && state.items.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      state.errorMessage!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: AppColors.textSecondary),
                    ),
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
          // Empty data (but no errors)
          if (!state.isInitialLoading && state.items.isEmpty) {
            return RefreshIndicator(
              onRefresh: controller.loadInitial,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(height: 160),
                  Center(child: Text('目前沒有活動資料')),
                ],
              ),
            );
          }
          // Normal list
          return RefreshIndicator(
            onRefresh: controller.loadInitial,
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    controller: _scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount:
                        state.items.length + (state.isLoadingMore ? 1 : 0),
                    separatorBuilder: (_, __) =>
                        const Divider(height: 1, color: AppColors.divider),
                    itemBuilder: (context, index) {
                      // Last slot: Load more indicators
                      if (index >= state.items.length) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      final item = state.items[index];
                      return ActivityTile(
                        activity: item,
                        onTap: () => _openDetail(item),
                      );
                    },
                  ),
                ),
                // If loading more fails, display an error message at the bottom (the list already contains information).
                if (state.errorMessage != null && state.items.isNotEmpty)
                  Container(
                    width: double.infinity,
                    color: AppColors.errorSurface,
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      state.errorMessage!,
                      style: const TextStyle(color: AppColors.textError),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
