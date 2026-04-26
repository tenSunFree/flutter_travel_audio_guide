enum AttractionSortOrder {
  apiOrder,
  distanceAsc,
  nameAZ,
  modifiedNewest;

  String get label => switch (this) {
    AttractionSortOrder.apiOrder => '預設（API 順序）',
    AttractionSortOrder.distanceAsc => '距離近→遠（需開啟定位）',
    AttractionSortOrder.nameAZ => '名稱 A-Z',
    AttractionSortOrder.modifiedNewest => '最近更新',
  };
}

// Suitable groups (corresponding to the id of API target[])
// Actual API return: 66=Hikers, 61=Parent-child learning, 62=After-school education, 63=Cyclists, 65=Birdwatchers
enum AttractionTargetFilter {
  hiker(66, '健行族'),
  familyLearning(61, '親子共學'),
  fieldTrip(62, '校外教學'),
  cyclist(63, '單車族'),
  birdWatcher(65, '賞鳥族');

  const AttractionTargetFilter(this.apiId, this.label);

  final int apiId;
  final String label;
}

// Friendly Facilities (corresponding to the id of API friendly[])
// 387=English friendly, 390=Mobile device charging, 391=Pet friendly, 392=Accessibility friendly services,
// 393=Gender friendly, 394=Credit card/EasyCard/Third-party payment services, 395=Vegetarian friendly,
// 396=Friendly toilets, 398=WiFi friendly, 399=Bicycle friendly, 400=Breastfeeding friendly
enum AttractionFacilityFilter {
  accessible(392, '♿ 無障礙'),
  wifi(398, '📶 WiFi'),
  easyCard(394, '💳 悠遊卡'),
  pet(391, '🐾 寵物'),
  vegetarian(395, '🍽️ 素食'),
  toilet(396, '🚽 友善廁所'),
  nursing(400, '👶 哺乳室'),
  charging(390, '🔋 充電');

  const AttractionFacilityFilter(this.apiId, this.label);

  final int apiId;
  final String label;
}
