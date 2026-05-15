// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeRecommendCard {

 String get id; String get title; String get subtitle; String? get imageUrl; String get badgeText; String? get distanceText; String? get reasonText; RecommendStatus get status; double? get lat; double? get lng; HomeRecommendType get type; String get emoji; Attraction? get attraction; Activity? get activity;
/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeRecommendCardCopyWith<HomeRecommendCard> get copyWith => _$HomeRecommendCardCopyWithImpl<HomeRecommendCard>(this as HomeRecommendCard, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRecommendCard&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.badgeText, badgeText) || other.badgeText == badgeText)&&(identical(other.distanceText, distanceText) || other.distanceText == distanceText)&&(identical(other.reasonText, reasonText) || other.reasonText == reasonText)&&(identical(other.status, status) || other.status == status)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.type, type) || other.type == type)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.attraction, attraction) || other.attraction == attraction)&&(identical(other.activity, activity) || other.activity == activity));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,imageUrl,badgeText,distanceText,reasonText,status,lat,lng,type,emoji,attraction,activity);

@override
String toString() {
  return 'HomeRecommendCard(id: $id, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, badgeText: $badgeText, distanceText: $distanceText, reasonText: $reasonText, status: $status, lat: $lat, lng: $lng, type: $type, emoji: $emoji, attraction: $attraction, activity: $activity)';
}


}

/// @nodoc
abstract mixin class $HomeRecommendCardCopyWith<$Res>  {
  factory $HomeRecommendCardCopyWith(HomeRecommendCard value, $Res Function(HomeRecommendCard) _then) = _$HomeRecommendCardCopyWithImpl;
@useResult
$Res call({
 String id, String title, String subtitle, String? imageUrl, String badgeText, String? distanceText, String? reasonText, RecommendStatus status, double? lat, double? lng, HomeRecommendType type, String emoji, Attraction? attraction, Activity? activity
});


$AttractionCopyWith<$Res>? get attraction;$ActivityCopyWith<$Res>? get activity;

}
/// @nodoc
class _$HomeRecommendCardCopyWithImpl<$Res>
    implements $HomeRecommendCardCopyWith<$Res> {
  _$HomeRecommendCardCopyWithImpl(this._self, this._then);

  final HomeRecommendCard _self;
  final $Res Function(HomeRecommendCard) _then;

/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? imageUrl = freezed,Object? badgeText = null,Object? distanceText = freezed,Object? reasonText = freezed,Object? status = null,Object? lat = freezed,Object? lng = freezed,Object? type = null,Object? emoji = null,Object? attraction = freezed,Object? activity = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,badgeText: null == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String,distanceText: freezed == distanceText ? _self.distanceText : distanceText // ignore: cast_nullable_to_non_nullable
as String?,reasonText: freezed == reasonText ? _self.reasonText : reasonText // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecommendStatus,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HomeRecommendType,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,attraction: freezed == attraction ? _self.attraction : attraction // ignore: cast_nullable_to_non_nullable
as Attraction?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity?,
  ));
}
/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttractionCopyWith<$Res>? get attraction {
    if (_self.attraction == null) {
    return null;
  }

  return $AttractionCopyWith<$Res>(_self.attraction!, (value) {
    return _then(_self.copyWith(attraction: value));
  });
}/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $ActivityCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeRecommendCard].
extension HomeRecommendCardPatterns on HomeRecommendCard {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeRecommendCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeRecommendCard() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeRecommendCard value)  $default,){
final _that = this;
switch (_that) {
case _HomeRecommendCard():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeRecommendCard value)?  $default,){
final _that = this;
switch (_that) {
case _HomeRecommendCard() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  String? imageUrl,  String badgeText,  String? distanceText,  String? reasonText,  RecommendStatus status,  double? lat,  double? lng,  HomeRecommendType type,  String emoji,  Attraction? attraction,  Activity? activity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeRecommendCard() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.imageUrl,_that.badgeText,_that.distanceText,_that.reasonText,_that.status,_that.lat,_that.lng,_that.type,_that.emoji,_that.attraction,_that.activity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String subtitle,  String? imageUrl,  String badgeText,  String? distanceText,  String? reasonText,  RecommendStatus status,  double? lat,  double? lng,  HomeRecommendType type,  String emoji,  Attraction? attraction,  Activity? activity)  $default,) {final _that = this;
switch (_that) {
case _HomeRecommendCard():
return $default(_that.id,_that.title,_that.subtitle,_that.imageUrl,_that.badgeText,_that.distanceText,_that.reasonText,_that.status,_that.lat,_that.lng,_that.type,_that.emoji,_that.attraction,_that.activity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String subtitle,  String? imageUrl,  String badgeText,  String? distanceText,  String? reasonText,  RecommendStatus status,  double? lat,  double? lng,  HomeRecommendType type,  String emoji,  Attraction? attraction,  Activity? activity)?  $default,) {final _that = this;
switch (_that) {
case _HomeRecommendCard() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.imageUrl,_that.badgeText,_that.distanceText,_that.reasonText,_that.status,_that.lat,_that.lng,_that.type,_that.emoji,_that.attraction,_that.activity);case _:
  return null;

}
}

}

/// @nodoc


class _HomeRecommendCard implements HomeRecommendCard {
  const _HomeRecommendCard({required this.id, required this.title, required this.subtitle, required this.imageUrl, required this.badgeText, required this.distanceText, required this.reasonText, required this.status, required this.lat, required this.lng, required this.type, required this.emoji, this.attraction, this.activity});
  

@override final  String id;
@override final  String title;
@override final  String subtitle;
@override final  String? imageUrl;
@override final  String badgeText;
@override final  String? distanceText;
@override final  String? reasonText;
@override final  RecommendStatus status;
@override final  double? lat;
@override final  double? lng;
@override final  HomeRecommendType type;
@override final  String emoji;
@override final  Attraction? attraction;
@override final  Activity? activity;

/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeRecommendCardCopyWith<_HomeRecommendCard> get copyWith => __$HomeRecommendCardCopyWithImpl<_HomeRecommendCard>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeRecommendCard&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.badgeText, badgeText) || other.badgeText == badgeText)&&(identical(other.distanceText, distanceText) || other.distanceText == distanceText)&&(identical(other.reasonText, reasonText) || other.reasonText == reasonText)&&(identical(other.status, status) || other.status == status)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.type, type) || other.type == type)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.attraction, attraction) || other.attraction == attraction)&&(identical(other.activity, activity) || other.activity == activity));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,imageUrl,badgeText,distanceText,reasonText,status,lat,lng,type,emoji,attraction,activity);

@override
String toString() {
  return 'HomeRecommendCard(id: $id, title: $title, subtitle: $subtitle, imageUrl: $imageUrl, badgeText: $badgeText, distanceText: $distanceText, reasonText: $reasonText, status: $status, lat: $lat, lng: $lng, type: $type, emoji: $emoji, attraction: $attraction, activity: $activity)';
}


}

/// @nodoc
abstract mixin class _$HomeRecommendCardCopyWith<$Res> implements $HomeRecommendCardCopyWith<$Res> {
  factory _$HomeRecommendCardCopyWith(_HomeRecommendCard value, $Res Function(_HomeRecommendCard) _then) = __$HomeRecommendCardCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String subtitle, String? imageUrl, String badgeText, String? distanceText, String? reasonText, RecommendStatus status, double? lat, double? lng, HomeRecommendType type, String emoji, Attraction? attraction, Activity? activity
});


@override $AttractionCopyWith<$Res>? get attraction;@override $ActivityCopyWith<$Res>? get activity;

}
/// @nodoc
class __$HomeRecommendCardCopyWithImpl<$Res>
    implements _$HomeRecommendCardCopyWith<$Res> {
  __$HomeRecommendCardCopyWithImpl(this._self, this._then);

  final _HomeRecommendCard _self;
  final $Res Function(_HomeRecommendCard) _then;

/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = null,Object? imageUrl = freezed,Object? badgeText = null,Object? distanceText = freezed,Object? reasonText = freezed,Object? status = null,Object? lat = freezed,Object? lng = freezed,Object? type = null,Object? emoji = null,Object? attraction = freezed,Object? activity = freezed,}) {
  return _then(_HomeRecommendCard(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,badgeText: null == badgeText ? _self.badgeText : badgeText // ignore: cast_nullable_to_non_nullable
as String,distanceText: freezed == distanceText ? _self.distanceText : distanceText // ignore: cast_nullable_to_non_nullable
as String?,reasonText: freezed == reasonText ? _self.reasonText : reasonText // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RecommendStatus,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as HomeRecommendType,emoji: null == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String,attraction: freezed == attraction ? _self.attraction : attraction // ignore: cast_nullable_to_non_nullable
as Attraction?,activity: freezed == activity ? _self.activity : activity // ignore: cast_nullable_to_non_nullable
as Activity?,
  ));
}

/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttractionCopyWith<$Res>? get attraction {
    if (_self.attraction == null) {
    return null;
  }

  return $AttractionCopyWith<$Res>(_self.attraction!, (value) {
    return _then(_self.copyWith(attraction: value));
  });
}/// Create a copy of HomeRecommendCard
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ActivityCopyWith<$Res>? get activity {
    if (_self.activity == null) {
    return null;
  }

  return $ActivityCopyWith<$Res>(_self.activity!, (value) {
    return _then(_self.copyWith(activity: value));
  });
}
}

/// @nodoc
mixin _$HomeUiState {

 HomePeriod get selectedPeriod; bool get isRainyMode; String get title; String get subtitle; HomeRecommendCard? get heroCard; List<HomeRecommendCard> get nearbyCards; List<HomeRecommendCard> get activityCards; List<HomeRecommendCard> get availableCards; bool get isLoading; String? get errorMessage;
/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeUiStateCopyWith<HomeUiState> get copyWith => _$HomeUiStateCopyWithImpl<HomeUiState>(this as HomeUiState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeUiState&&(identical(other.selectedPeriod, selectedPeriod) || other.selectedPeriod == selectedPeriod)&&(identical(other.isRainyMode, isRainyMode) || other.isRainyMode == isRainyMode)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.heroCard, heroCard) || other.heroCard == heroCard)&&const DeepCollectionEquality().equals(other.nearbyCards, nearbyCards)&&const DeepCollectionEquality().equals(other.activityCards, activityCards)&&const DeepCollectionEquality().equals(other.availableCards, availableCards)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPeriod,isRainyMode,title,subtitle,heroCard,const DeepCollectionEquality().hash(nearbyCards),const DeepCollectionEquality().hash(activityCards),const DeepCollectionEquality().hash(availableCards),isLoading,errorMessage);

@override
String toString() {
  return 'HomeUiState(selectedPeriod: $selectedPeriod, isRainyMode: $isRainyMode, title: $title, subtitle: $subtitle, heroCard: $heroCard, nearbyCards: $nearbyCards, activityCards: $activityCards, availableCards: $availableCards, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeUiStateCopyWith<$Res>  {
  factory $HomeUiStateCopyWith(HomeUiState value, $Res Function(HomeUiState) _then) = _$HomeUiStateCopyWithImpl;
@useResult
$Res call({
 HomePeriod selectedPeriod, bool isRainyMode, String title, String subtitle, HomeRecommendCard? heroCard, List<HomeRecommendCard> nearbyCards, List<HomeRecommendCard> activityCards, List<HomeRecommendCard> availableCards, bool isLoading, String? errorMessage
});


$HomeRecommendCardCopyWith<$Res>? get heroCard;

}
/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._self, this._then);

  final HomeUiState _self;
  final $Res Function(HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedPeriod = null,Object? isRainyMode = null,Object? title = null,Object? subtitle = null,Object? heroCard = freezed,Object? nearbyCards = null,Object? activityCards = null,Object? availableCards = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
selectedPeriod: null == selectedPeriod ? _self.selectedPeriod : selectedPeriod // ignore: cast_nullable_to_non_nullable
as HomePeriod,isRainyMode: null == isRainyMode ? _self.isRainyMode : isRainyMode // ignore: cast_nullable_to_non_nullable
as bool,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,heroCard: freezed == heroCard ? _self.heroCard : heroCard // ignore: cast_nullable_to_non_nullable
as HomeRecommendCard?,nearbyCards: null == nearbyCards ? _self.nearbyCards : nearbyCards // ignore: cast_nullable_to_non_nullable
as List<HomeRecommendCard>,activityCards: null == activityCards ? _self.activityCards : activityCards // ignore: cast_nullable_to_non_nullable
as List<HomeRecommendCard>,availableCards: null == availableCards ? _self.availableCards : availableCards // ignore: cast_nullable_to_non_nullable
as List<HomeRecommendCard>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeRecommendCardCopyWith<$Res>? get heroCard {
    if (_self.heroCard == null) {
    return null;
  }

  return $HomeRecommendCardCopyWith<$Res>(_self.heroCard!, (value) {
    return _then(_self.copyWith(heroCard: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeUiState].
extension HomeUiStatePatterns on HomeUiState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeUiState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeUiState value)  $default,){
final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeUiState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HomePeriod selectedPeriod,  bool isRainyMode,  String title,  String subtitle,  HomeRecommendCard? heroCard,  List<HomeRecommendCard> nearbyCards,  List<HomeRecommendCard> activityCards,  List<HomeRecommendCard> availableCards,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.selectedPeriod,_that.isRainyMode,_that.title,_that.subtitle,_that.heroCard,_that.nearbyCards,_that.activityCards,_that.availableCards,_that.isLoading,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HomePeriod selectedPeriod,  bool isRainyMode,  String title,  String subtitle,  HomeRecommendCard? heroCard,  List<HomeRecommendCard> nearbyCards,  List<HomeRecommendCard> activityCards,  List<HomeRecommendCard> availableCards,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeUiState():
return $default(_that.selectedPeriod,_that.isRainyMode,_that.title,_that.subtitle,_that.heroCard,_that.nearbyCards,_that.activityCards,_that.availableCards,_that.isLoading,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HomePeriod selectedPeriod,  bool isRainyMode,  String title,  String subtitle,  HomeRecommendCard? heroCard,  List<HomeRecommendCard> nearbyCards,  List<HomeRecommendCard> activityCards,  List<HomeRecommendCard> availableCards,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeUiState() when $default != null:
return $default(_that.selectedPeriod,_that.isRainyMode,_that.title,_that.subtitle,_that.heroCard,_that.nearbyCards,_that.activityCards,_that.availableCards,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HomeUiState extends HomeUiState {
  const _HomeUiState({required this.selectedPeriod, required this.isRainyMode, required this.title, required this.subtitle, required this.heroCard, required final  List<HomeRecommendCard> nearbyCards, required final  List<HomeRecommendCard> activityCards, required final  List<HomeRecommendCard> availableCards, required this.isLoading, required this.errorMessage}): _nearbyCards = nearbyCards,_activityCards = activityCards,_availableCards = availableCards,super._();
  

@override final  HomePeriod selectedPeriod;
@override final  bool isRainyMode;
@override final  String title;
@override final  String subtitle;
@override final  HomeRecommendCard? heroCard;
 final  List<HomeRecommendCard> _nearbyCards;
@override List<HomeRecommendCard> get nearbyCards {
  if (_nearbyCards is EqualUnmodifiableListView) return _nearbyCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearbyCards);
}

 final  List<HomeRecommendCard> _activityCards;
@override List<HomeRecommendCard> get activityCards {
  if (_activityCards is EqualUnmodifiableListView) return _activityCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activityCards);
}

 final  List<HomeRecommendCard> _availableCards;
@override List<HomeRecommendCard> get availableCards {
  if (_availableCards is EqualUnmodifiableListView) return _availableCards;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableCards);
}

@override final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeUiStateCopyWith<_HomeUiState> get copyWith => __$HomeUiStateCopyWithImpl<_HomeUiState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeUiState&&(identical(other.selectedPeriod, selectedPeriod) || other.selectedPeriod == selectedPeriod)&&(identical(other.isRainyMode, isRainyMode) || other.isRainyMode == isRainyMode)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.heroCard, heroCard) || other.heroCard == heroCard)&&const DeepCollectionEquality().equals(other._nearbyCards, _nearbyCards)&&const DeepCollectionEquality().equals(other._activityCards, _activityCards)&&const DeepCollectionEquality().equals(other._availableCards, _availableCards)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,selectedPeriod,isRainyMode,title,subtitle,heroCard,const DeepCollectionEquality().hash(_nearbyCards),const DeepCollectionEquality().hash(_activityCards),const DeepCollectionEquality().hash(_availableCards),isLoading,errorMessage);

@override
String toString() {
  return 'HomeUiState(selectedPeriod: $selectedPeriod, isRainyMode: $isRainyMode, title: $title, subtitle: $subtitle, heroCard: $heroCard, nearbyCards: $nearbyCards, activityCards: $activityCards, availableCards: $availableCards, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeUiStateCopyWith<$Res> implements $HomeUiStateCopyWith<$Res> {
  factory _$HomeUiStateCopyWith(_HomeUiState value, $Res Function(_HomeUiState) _then) = __$HomeUiStateCopyWithImpl;
@override @useResult
$Res call({
 HomePeriod selectedPeriod, bool isRainyMode, String title, String subtitle, HomeRecommendCard? heroCard, List<HomeRecommendCard> nearbyCards, List<HomeRecommendCard> activityCards, List<HomeRecommendCard> availableCards, bool isLoading, String? errorMessage
});


@override $HomeRecommendCardCopyWith<$Res>? get heroCard;

}
/// @nodoc
class __$HomeUiStateCopyWithImpl<$Res>
    implements _$HomeUiStateCopyWith<$Res> {
  __$HomeUiStateCopyWithImpl(this._self, this._then);

  final _HomeUiState _self;
  final $Res Function(_HomeUiState) _then;

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedPeriod = null,Object? isRainyMode = null,Object? title = null,Object? subtitle = null,Object? heroCard = freezed,Object? nearbyCards = null,Object? activityCards = null,Object? availableCards = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_HomeUiState(
selectedPeriod: null == selectedPeriod ? _self.selectedPeriod : selectedPeriod // ignore: cast_nullable_to_non_nullable
as HomePeriod,isRainyMode: null == isRainyMode ? _self.isRainyMode : isRainyMode // ignore: cast_nullable_to_non_nullable
as bool,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,heroCard: freezed == heroCard ? _self.heroCard : heroCard // ignore: cast_nullable_to_non_nullable
as HomeRecommendCard?,nearbyCards: null == nearbyCards ? _self._nearbyCards : nearbyCards // ignore: cast_nullable_to_non_nullable
as List<HomeRecommendCard>,activityCards: null == activityCards ? _self._activityCards : activityCards // ignore: cast_nullable_to_non_nullable
as List<HomeRecommendCard>,availableCards: null == availableCards ? _self._availableCards : availableCards // ignore: cast_nullable_to_non_nullable
as List<HomeRecommendCard>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeUiState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeRecommendCardCopyWith<$Res>? get heroCard {
    if (_self.heroCard == null) {
    return null;
  }

  return $HomeRecommendCardCopyWith<$Res>(_self.heroCard!, (value) {
    return _then(_self.copyWith(heroCard: value));
  });
}
}

// dart format on
