import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../audio_guide/presentation/widgets/common_app_bar.dart';
import '../../di/attraction_providers.dart';
import '../../domain/entities/attraction.dart';
import '../widgets/attraction_tile.dart';
import 'attraction_detail_page.dart';

class AttractionListPage extends ConsumerStatefulWidget {
  const AttractionListPage({super.key});

  @override
  ConsumerState<AttractionListPage> createState() => _AttractionListPageState();
}

class _AttractionListPageState extends ConsumerState<AttractionListPage> {
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
    if (position.pixels >= position.maxScrollExtent - threshold) {
      unawaited(ref.read(attractionListControllerProvider.notifier).loadMore());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _openDetail(Attraction attraction) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => AttractionDetailPage(attraction: attraction),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(attractionListControllerProvider);
    final controller = ref.read(attractionListControllerProvider.notifier);
    return Scaffold(
      appBar: const CommonAppBar(title: '遊憩景點'),
      body: Builder(
        builder: (context) {
          // Initial Load
          if (state.isLoading && state.items.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          // Initial error (no data)
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
          // Empty state
          if (!state.isLoading && state.items.isEmpty) {
            return RefreshIndicator(
              onRefresh: controller.refresh,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 160),
                  Center(child: Text('目前沒有遊憩景點資料')),
                ],
              ),
            );
          }
          // Normal List
          return RefreshIndicator(
            onRefresh: controller.refresh,
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
                      // Load more loading indicators
                      if (index >= state.items.length) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(vertical: 24),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      final item = state.items[index];
                      return AttractionTile(
                        attraction: item,
                        onTap: () => _openDetail(item),
                      );
                    },
                  ),
                ),
                // Bottom error banner when loading more failures
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
