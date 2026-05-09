import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/common_app_bar.dart';
import '../../domain/entities/home_state.dart';
import '../controllers/home_controller.dart';
import '../widgets/hero_recommend_card.dart';
import '../widgets/home_empty_card.dart';
import '../widgets/home_section_title.dart';
import '../widgets/home_subtitle.dart';
import '../widgets/period_chips.dart';
import '../widgets/rainy_mode_card.dart';
import '../widgets/recommend_list_tile.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final controller = ref.read(homeControllerProvider.notifier);
    return Scaffold(
      backgroundColor: AppColors.pageBackground,
      appBar: CommonAppBar(
        title: '首頁',
        actions: [
          IconButton(
            onPressed: () {
              // Homepage Filter / Recommendation Criteria Settings
            },
            icon: const Icon(Icons.tune),
            tooltip: '首頁設定',
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async => controller.changePeriod(state.selectedPeriod),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            // Subtitle (Time Period Description)
            SliverToBoxAdapter(
              child: HomeSubtitle(subtitle: '${state.title}・${state.subtitle}'),
            ),
            // Rainy day filing switch
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
                child: RainyModeCard(
                  value: state.isRainyMode,
                  onChanged: controller.toggleRainyMode,
                ),
              ),
            ),
            // Time period selection Chips
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                child: PeriodChips(
                  selected: state.selectedPeriod,
                  onSelected: controller.changePeriod,
                ),
              ),
            ),
            // Main content area
            if (state.isLoading && state.heroCard == null)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: HomeEmptyCard(message: '正在整理今日推薦...'),
                ),
              )
            else if (state.errorMessage != null)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: HomeEmptyCard(message: '首頁資料讀取失敗'),
                ),
              )
            else ...[
              // Featured Recommendation (Hero Card)
              SliverToBoxAdapter(
                child: HomeSectionTitle(
                  title: _heroSectionTitle(state.selectedPeriod),
                  action: '查看全部',
                  onActionTap: () {
                    // Redirect to the complete list of attractions
                  },
                ),
              ),
              if (state.heroCard != null)
                SliverToBoxAdapter(
                  child: HeroRecommendCard(
                    card: state.heroCard!,
                    onViewDetail: () {
                      // Redirect to the attraction details page
                      // context.push('/attraction/${state.heroCard!.id}')
                    },
                  ),
                )
              else
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: HomeEmptyCard(message: '目前沒有適合的推薦景點'),
                  ),
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              // Now you can go
              const SliverToBoxAdapter(
                child: HomeSectionTitle(title: '現在可去', action: '排序'),
              ),
              SliverList.separated(
                itemCount: state.availableCards.length,
                separatorBuilder: (_, _) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.divider,
                ),
                itemBuilder: (context, index) => RecommendListTile(
                  card: state.availableCards[index],
                  onTap: () {
                    // Redirect to the corresponding details page
                  },
                ),
              ),
              if (state.availableCards.isEmpty)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: HomeEmptyCard(message: '目前沒有可前往景點'),
                  ),
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              // Activity Recommendation
              const SliverToBoxAdapter(
                child: HomeSectionTitle(title: '活動推薦', action: '全部'),
              ),
              SliverList.separated(
                itemCount: state.activityCards.length,
                separatorBuilder: (_, _) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: AppColors.divider,
                ),
                itemBuilder: (context, index) => RecommendListTile(
                  card: state.activityCards[index],
                  onTap: () {
                    // Redirect to the event details page
                  },
                ),
              ),
              if (state.activityCards.isEmpty)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: HomeEmptyCard(message: '目前沒有活動推薦'),
                  ),
                ),
              const SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ],
        ),
      ),
    );
  }

  static String _heroSectionTitle(HomePeriod period) {
    switch (period) {
      case HomePeriod.morning:
        return '早晨推薦';
      case HomePeriod.afternoon:
        return '午後推薦';
      case HomePeriod.evening:
        return '傍晚推薦';
      case HomePeriod.night:
        return '夜間推薦';
    }
  }
}
