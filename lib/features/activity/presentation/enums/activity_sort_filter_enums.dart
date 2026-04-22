enum ActivitySortOrder {
  // Start Date: Nearest → Oldest (Default)
  beginAsc,
  // Start Date: Farthest → Nearest
  beginDesc,
  // Name A-Z
  nameAZ;

  String get label => switch (this) {
    ActivitySortOrder.beginAsc => '開始日期（近→遠）',
    ActivitySortOrder.beginDesc => '開始日期（遠→近）',
    ActivitySortOrder.nameAZ => '名稱 A-Z',
  };
}

enum ActivityStatusFilter {
  // All (Preset)
  all,
  // in progress
  ongoing,
  // Coming Soon
  upcoming,
  // Coming soon (within 7 days)
  endingSoon;

  String get label => switch (this) {
    ActivityStatusFilter.all => '全部',
    ActivityStatusFilter.ongoing => '進行中',
    ActivityStatusFilter.upcoming => '即將開始',
    ActivityStatusFilter.endingSoon => '即將結束',
  };
}

enum ActivityFeeFilter {
  // All (Preset)
  all,
  // free
  free,
  // Paid
  paid;

  String get label => switch (this) {
    ActivityFeeFilter.all => '全部',
    ActivityFeeFilter.free => '免費',
    ActivityFeeFilter.paid => '付費',
  };
}
