import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/home_state.dart';
import '../controllers/home_controller.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const _bg = Color(0xFFFFFFFF);
  static const _surface = Color(0xFFFFFFFF);
  static const _surfaceSoft = Color(0xFFF7F8F8);
  static const _divider = Color(0xFFE0E0E0);
  static const _textPrimary = Color(0xFF2F3333);
  static const _textSecondary = Color(0xFF8E8E8E);
  static const _selectedBg = Color(0xFFD8F3F7);
  static const _accent = Color(0xFF6BAEC3);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeControllerProvider);
    final controller = ref.read(homeControllerProvider.notifier);
    return Scaffold(
      backgroundColor: _bg,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            controller.changePeriod(state.selectedPeriod);
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _HomeHeader(
                  title: '首頁',
                  subtitle: '${state.title}・${state.subtitle}',
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
                  child: _RainyModeCard(
                    value: state.isRainyMode,
                    onChanged: controller.toggleRainyMode,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
                  child: _PeriodChips(
                    selected: state.selectedPeriod,
                    onSelected: controller.changePeriod,
                  ),
                ),
              ),
              if (state.isLoading && state.heroCard == null)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: _EmptyCard(message: '正在整理今日推薦...'),
                  ),
                )
              else if (state.errorMessage != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: _EmptyCard(message: '首頁資料讀取失敗'),
                  ),
                )
              else ...[
                SliverToBoxAdapter(
                  child: _SectionTitle(
                    title: _heroSectionTitle(state.selectedPeriod),
                    action: '查看全部',
                  ),
                ),
                if (state.heroCard != null)
                  SliverToBoxAdapter(
                    child: _HeroRecommendCard(card: state.heroCard!),
                  )
                else
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: _EmptyCard(message: '目前沒有適合的推薦景點'),
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                const SliverToBoxAdapter(
                  child: _SectionTitle(title: '現在可去', action: '排序'),
                ),
                SliverList.separated(
                  itemCount: state.availableCards.length,
                  separatorBuilder: (_, __) =>
                      const Divider(height: 1, thickness: 1, color: _divider),
                  itemBuilder: (context, index) {
                    return _RecommendListTile(
                      card: state.availableCards[index],
                    );
                  },
                ),
                if (state.availableCards.isEmpty)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: _EmptyCard(message: '目前沒有可前往景點'),
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                const SliverToBoxAdapter(
                  child: _SectionTitle(title: '活動推薦', action: '全部'),
                ),
                SliverList.separated(
                  itemCount: state.activityCards.length,
                  separatorBuilder: (_, __) =>
                      const Divider(height: 1, thickness: 1, color: _divider),
                  itemBuilder: (context, index) {
                    return _RecommendListTile(card: state.activityCards[index]);
                  },
                ),
                if (state.activityCards.isEmpty)
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: _EmptyCard(message: '目前沒有活動推薦'),
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 120)),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _heroSectionTitle(HomePeriod period) {
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

class _HomeHeader extends StatelessWidget {
  const _HomeHeader({required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePage._surface,
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  '首頁',
                  style: TextStyle(
                    color: HomePage._textPrimary,
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // set homepage filters/recommendation criteria.
                },
                icon: const Icon(
                  Icons.tune,
                  color: HomePage._textPrimary,
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Text(
            subtitle,
            style: const TextStyle(
              color: HomePage._textSecondary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}

class _RainyModeCard extends StatelessWidget {
  const _RainyModeCard({required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: HomePage._surfaceSoft,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: HomePage._divider),
      ),
      child: Row(
        children: [
          const Icon(Icons.umbrella_outlined, color: HomePage._textSecondary),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              '雨天備案（只看室內景點）',
              style: TextStyle(
                color: HomePage._textPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Switch(value: value, onChanged: onChanged),
        ],
      ),
    );
  }
}

class _PeriodChips extends StatelessWidget {
  const _PeriodChips({required this.selected, required this.onSelected});

  final HomePeriod selected;
  final ValueChanged<HomePeriod> onSelected;

  @override
  Widget build(BuildContext context) {
    final items = [
      HomePeriod.morning,
      HomePeriod.afternoon,
      HomePeriod.evening,
      HomePeriod.night,
    ];

    return Row(
      children: items.map((period) {
        final isSelected = selected == period;
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              borderRadius: BorderRadius.circular(14),
              onTap: () => onSelected(period),
              child: Container(
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? HomePage._selectedBg : Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: isSelected
                        ? HomePage._selectedBg
                        : HomePage._divider,
                  ),
                ),
                child: Text(
                  HomePeriodHelper.label(period),
                  style: TextStyle(
                    color: isSelected
                        ? HomePage._textPrimary
                        : HomePage._textSecondary,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, required this.action});

  final String title;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 12),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: HomePage._textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Text(
            action,
            style: const TextStyle(
              color: HomePage._accent,
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

class _HeroRecommendCard extends StatelessWidget {
  const _HeroRecommendCard({required this.card});

  final HomeRecommendCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(24, 0, 24, 8),
      decoration: BoxDecoration(
        color: HomePage._surface,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: HomePage._divider),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170,
            width: double.infinity,
            child: card.imageUrl != null
                ? Image.network(
                    card.imageUrl!,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => _FallbackImage(card.emoji),
                  )
                : _FallbackImage(card.emoji),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 16, 18, 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _Badge(
                      text: _typeLabel(card.type),
                      backgroundColor: const Color(0xFFE4F1FF),
                      textColor: const Color(0xFF2F6FA3),
                    ),
                    _Badge(
                      text: card.badgeText,
                      backgroundColor: const Color(0xFFFFF3D8),
                      textColor: const Color(0xFF9B651B),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Text(
                  card.title,
                  style: const TextStyle(
                    color: HomePage._textPrimary,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  card.subtitle,
                  style: const TextStyle(
                    color: HomePage._textSecondary,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (card.reasonText != null) ...[
                  const SizedBox(height: 6),
                  Text(
                    card.reasonText!,
                    style: const TextStyle(
                      color: HomePage._textSecondary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                const SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: HomePage._textPrimary,
                          foregroundColor: Colors.white,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          // Then redirect to the details page
                        },
                        child: const Text(
                          '查看詳情',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: HomePage._textPrimary,
                        side: const BorderSide(color: HomePage._divider),
                        minimumSize: const Size(86, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // Followed by Google Maps navigation
                      },
                      child: const Text(
                        '導航',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static String _typeLabel(HomeRecommendType type) {
    switch (type) {
      case HomeRecommendType.attraction:
        return '景點推薦';
      case HomeRecommendType.activity:
        return '活動展演';
      case HomeRecommendType.audioGuide:
        return '語音導覽';
    }
  }
}

class _RecommendListTile extends StatelessWidget {
  const _RecommendListTile({required this.card});

  final HomeRecommendCard card;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePage._surface,
      padding: const EdgeInsets.fromLTRB(24, 18, 24, 18),
      child: Row(
        children: [
          _Thumb(card: card),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  card.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: HomePage._textPrimary,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  card.subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: HomePage._textSecondary,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.schedule,
                      size: 18,
                      color: HomePage._textSecondary,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        card.badgeText,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: HomePage._textSecondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.chevron_right,
            color: HomePage._textSecondary,
            size: 30,
          ),
        ],
      ),
    );
  }
}

class _Thumb extends StatelessWidget {
  const _Thumb({required this.card});

  final HomeRecommendCard card;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 96,
        height: 96,
        child: card.imageUrl != null
            ? Image.network(
                card.imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _FallbackImage(card.emoji),
              )
            : _FallbackImage(card.emoji),
      ),
    );
  }
}

class _FallbackImage extends StatelessWidget {
  const _FallbackImage(this.emoji);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePage._surfaceSoft,
      alignment: Alignment.center,
      child: Text(emoji, style: const TextStyle(fontSize: 34)),
    );
  }
}

class _EmptyCard extends StatelessWidget {
  const _EmptyCard({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: HomePage._surfaceSoft,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: HomePage._divider),
      ),
      child: Text(
        message,
        style: const TextStyle(
          color: HomePage._textSecondary,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: textColor,
          fontSize: 14,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
