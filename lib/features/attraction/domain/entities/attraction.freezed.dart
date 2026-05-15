// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attraction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Attraction {

 int get id; String get name; String get introduction; String get openTime; String get distric; String get address; String get tel; String get officialSite; String get facebook; String get ticket; String get remind; String get modified; String get url; List<AttractionCategory> get categories; List<AttractionTag> get targets; List<AttractionTag> get friendlies; List<AttractionImage> get images; double? get nlat; double? get elong;
/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionCopyWith<Attraction> get copyWith => _$AttractionCopyWithImpl<Attraction>(this as Attraction, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attraction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.introduction, introduction) || other.introduction == introduction)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.address, address) || other.address == address)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.remind, remind) || other.remind == remind)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.targets, targets)&&const DeepCollectionEquality().equals(other.friendlies, friendlies)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,name,introduction,openTime,distric,address,tel,officialSite,facebook,ticket,remind,modified,url,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(targets),const DeepCollectionEquality().hash(friendlies),const DeepCollectionEquality().hash(images),nlat,elong]);

@override
String toString() {
  return 'Attraction(id: $id, name: $name, introduction: $introduction, openTime: $openTime, distric: $distric, address: $address, tel: $tel, officialSite: $officialSite, facebook: $facebook, ticket: $ticket, remind: $remind, modified: $modified, url: $url, categories: $categories, targets: $targets, friendlies: $friendlies, images: $images, nlat: $nlat, elong: $elong)';
}


}

/// @nodoc
abstract mixin class $AttractionCopyWith<$Res>  {
  factory $AttractionCopyWith(Attraction value, $Res Function(Attraction) _then) = _$AttractionCopyWithImpl;
@useResult
$Res call({
 int id, String name, String introduction, String openTime, String distric, String address, String tel, String officialSite, String facebook, String ticket, String remind, String modified, String url, List<AttractionCategory> categories, List<AttractionTag> targets, List<AttractionTag> friendlies, List<AttractionImage> images, double? nlat, double? elong
});




}
/// @nodoc
class _$AttractionCopyWithImpl<$Res>
    implements $AttractionCopyWith<$Res> {
  _$AttractionCopyWithImpl(this._self, this._then);

  final Attraction _self;
  final $Res Function(Attraction) _then;

/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? introduction = null,Object? openTime = null,Object? distric = null,Object? address = null,Object? tel = null,Object? officialSite = null,Object? facebook = null,Object? ticket = null,Object? remind = null,Object? modified = null,Object? url = null,Object? categories = null,Object? targets = null,Object? friendlies = null,Object? images = null,Object? nlat = freezed,Object? elong = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,introduction: null == introduction ? _self.introduction : introduction // ignore: cast_nullable_to_non_nullable
as String,openTime: null == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String,distric: null == distric ? _self.distric : distric // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,tel: null == tel ? _self.tel : tel // ignore: cast_nullable_to_non_nullable
as String,officialSite: null == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String,facebook: null == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<AttractionCategory>,targets: null == targets ? _self.targets : targets // ignore: cast_nullable_to_non_nullable
as List<AttractionTag>,friendlies: null == friendlies ? _self.friendlies : friendlies // ignore: cast_nullable_to_non_nullable
as List<AttractionTag>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<AttractionImage>,nlat: freezed == nlat ? _self.nlat : nlat // ignore: cast_nullable_to_non_nullable
as double?,elong: freezed == elong ? _self.elong : elong // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Attraction].
extension AttractionPatterns on Attraction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attraction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attraction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attraction value)  $default,){
final _that = this;
switch (_that) {
case _Attraction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attraction value)?  $default,){
final _that = this;
switch (_that) {
case _Attraction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String introduction,  String openTime,  String distric,  String address,  String tel,  String officialSite,  String facebook,  String ticket,  String remind,  String modified,  String url,  List<AttractionCategory> categories,  List<AttractionTag> targets,  List<AttractionTag> friendlies,  List<AttractionImage> images,  double? nlat,  double? elong)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attraction() when $default != null:
return $default(_that.id,_that.name,_that.introduction,_that.openTime,_that.distric,_that.address,_that.tel,_that.officialSite,_that.facebook,_that.ticket,_that.remind,_that.modified,_that.url,_that.categories,_that.targets,_that.friendlies,_that.images,_that.nlat,_that.elong);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String introduction,  String openTime,  String distric,  String address,  String tel,  String officialSite,  String facebook,  String ticket,  String remind,  String modified,  String url,  List<AttractionCategory> categories,  List<AttractionTag> targets,  List<AttractionTag> friendlies,  List<AttractionImage> images,  double? nlat,  double? elong)  $default,) {final _that = this;
switch (_that) {
case _Attraction():
return $default(_that.id,_that.name,_that.introduction,_that.openTime,_that.distric,_that.address,_that.tel,_that.officialSite,_that.facebook,_that.ticket,_that.remind,_that.modified,_that.url,_that.categories,_that.targets,_that.friendlies,_that.images,_that.nlat,_that.elong);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String introduction,  String openTime,  String distric,  String address,  String tel,  String officialSite,  String facebook,  String ticket,  String remind,  String modified,  String url,  List<AttractionCategory> categories,  List<AttractionTag> targets,  List<AttractionTag> friendlies,  List<AttractionImage> images,  double? nlat,  double? elong)?  $default,) {final _that = this;
switch (_that) {
case _Attraction() when $default != null:
return $default(_that.id,_that.name,_that.introduction,_that.openTime,_that.distric,_that.address,_that.tel,_that.officialSite,_that.facebook,_that.ticket,_that.remind,_that.modified,_that.url,_that.categories,_that.targets,_that.friendlies,_that.images,_that.nlat,_that.elong);case _:
  return null;

}
}

}

/// @nodoc


class _Attraction extends Attraction {
  const _Attraction({required this.id, required this.name, required this.introduction, required this.openTime, required this.distric, required this.address, required this.tel, required this.officialSite, required this.facebook, required this.ticket, required this.remind, required this.modified, required this.url, required final  List<AttractionCategory> categories, required final  List<AttractionTag> targets, required final  List<AttractionTag> friendlies, required final  List<AttractionImage> images, this.nlat, this.elong}): _categories = categories,_targets = targets,_friendlies = friendlies,_images = images,super._();
  

@override final  int id;
@override final  String name;
@override final  String introduction;
@override final  String openTime;
@override final  String distric;
@override final  String address;
@override final  String tel;
@override final  String officialSite;
@override final  String facebook;
@override final  String ticket;
@override final  String remind;
@override final  String modified;
@override final  String url;
 final  List<AttractionCategory> _categories;
@override List<AttractionCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<AttractionTag> _targets;
@override List<AttractionTag> get targets {
  if (_targets is EqualUnmodifiableListView) return _targets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_targets);
}

 final  List<AttractionTag> _friendlies;
@override List<AttractionTag> get friendlies {
  if (_friendlies is EqualUnmodifiableListView) return _friendlies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_friendlies);
}

 final  List<AttractionImage> _images;
@override List<AttractionImage> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override final  double? nlat;
@override final  double? elong;

/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionCopyWith<_Attraction> get copyWith => __$AttractionCopyWithImpl<_Attraction>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attraction&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.introduction, introduction) || other.introduction == introduction)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.address, address) || other.address == address)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.remind, remind) || other.remind == remind)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._targets, _targets)&&const DeepCollectionEquality().equals(other._friendlies, _friendlies)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,name,introduction,openTime,distric,address,tel,officialSite,facebook,ticket,remind,modified,url,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_targets),const DeepCollectionEquality().hash(_friendlies),const DeepCollectionEquality().hash(_images),nlat,elong]);

@override
String toString() {
  return 'Attraction(id: $id, name: $name, introduction: $introduction, openTime: $openTime, distric: $distric, address: $address, tel: $tel, officialSite: $officialSite, facebook: $facebook, ticket: $ticket, remind: $remind, modified: $modified, url: $url, categories: $categories, targets: $targets, friendlies: $friendlies, images: $images, nlat: $nlat, elong: $elong)';
}


}

/// @nodoc
abstract mixin class _$AttractionCopyWith<$Res> implements $AttractionCopyWith<$Res> {
  factory _$AttractionCopyWith(_Attraction value, $Res Function(_Attraction) _then) = __$AttractionCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String introduction, String openTime, String distric, String address, String tel, String officialSite, String facebook, String ticket, String remind, String modified, String url, List<AttractionCategory> categories, List<AttractionTag> targets, List<AttractionTag> friendlies, List<AttractionImage> images, double? nlat, double? elong
});




}
/// @nodoc
class __$AttractionCopyWithImpl<$Res>
    implements _$AttractionCopyWith<$Res> {
  __$AttractionCopyWithImpl(this._self, this._then);

  final _Attraction _self;
  final $Res Function(_Attraction) _then;

/// Create a copy of Attraction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? introduction = null,Object? openTime = null,Object? distric = null,Object? address = null,Object? tel = null,Object? officialSite = null,Object? facebook = null,Object? ticket = null,Object? remind = null,Object? modified = null,Object? url = null,Object? categories = null,Object? targets = null,Object? friendlies = null,Object? images = null,Object? nlat = freezed,Object? elong = freezed,}) {
  return _then(_Attraction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,introduction: null == introduction ? _self.introduction : introduction // ignore: cast_nullable_to_non_nullable
as String,openTime: null == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String,distric: null == distric ? _self.distric : distric // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,tel: null == tel ? _self.tel : tel // ignore: cast_nullable_to_non_nullable
as String,officialSite: null == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String,facebook: null == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<AttractionCategory>,targets: null == targets ? _self._targets : targets // ignore: cast_nullable_to_non_nullable
as List<AttractionTag>,friendlies: null == friendlies ? _self._friendlies : friendlies // ignore: cast_nullable_to_non_nullable
as List<AttractionTag>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<AttractionImage>,nlat: freezed == nlat ? _self.nlat : nlat // ignore: cast_nullable_to_non_nullable
as double?,elong: freezed == elong ? _self.elong : elong // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
mixin _$AttractionTag {

 int get id; String get name;
/// Create a copy of AttractionTag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionTagCopyWith<AttractionTag> get copyWith => _$AttractionTagCopyWithImpl<AttractionTag>(this as AttractionTag, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionTag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionTag(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AttractionTagCopyWith<$Res>  {
  factory $AttractionTagCopyWith(AttractionTag value, $Res Function(AttractionTag) _then) = _$AttractionTagCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$AttractionTagCopyWithImpl<$Res>
    implements $AttractionTagCopyWith<$Res> {
  _$AttractionTagCopyWithImpl(this._self, this._then);

  final AttractionTag _self;
  final $Res Function(AttractionTag) _then;

/// Create a copy of AttractionTag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttractionTag].
extension AttractionTagPatterns on AttractionTag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionTag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionTag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionTag value)  $default,){
final _that = this;
switch (_that) {
case _AttractionTag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionTag value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionTag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttractionTag() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _AttractionTag():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _AttractionTag() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _AttractionTag implements AttractionTag {
  const _AttractionTag({required this.id, required this.name});
  

@override final  int id;
@override final  String name;

/// Create a copy of AttractionTag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionTagCopyWith<_AttractionTag> get copyWith => __$AttractionTagCopyWithImpl<_AttractionTag>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionTag&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionTag(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AttractionTagCopyWith<$Res> implements $AttractionTagCopyWith<$Res> {
  factory _$AttractionTagCopyWith(_AttractionTag value, $Res Function(_AttractionTag) _then) = __$AttractionTagCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$AttractionTagCopyWithImpl<$Res>
    implements _$AttractionTagCopyWith<$Res> {
  __$AttractionTagCopyWithImpl(this._self, this._then);

  final _AttractionTag _self;
  final $Res Function(_AttractionTag) _then;

/// Create a copy of AttractionTag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AttractionTag(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AttractionCategory {

 int get id; String get name;
/// Create a copy of AttractionCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionCategoryCopyWith<AttractionCategory> get copyWith => _$AttractionCategoryCopyWithImpl<AttractionCategory>(this as AttractionCategory, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionCategory(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AttractionCategoryCopyWith<$Res>  {
  factory $AttractionCategoryCopyWith(AttractionCategory value, $Res Function(AttractionCategory) _then) = _$AttractionCategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$AttractionCategoryCopyWithImpl<$Res>
    implements $AttractionCategoryCopyWith<$Res> {
  _$AttractionCategoryCopyWithImpl(this._self, this._then);

  final AttractionCategory _self;
  final $Res Function(AttractionCategory) _then;

/// Create a copy of AttractionCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttractionCategory].
extension AttractionCategoryPatterns on AttractionCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionCategory value)  $default,){
final _that = this;
switch (_that) {
case _AttractionCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionCategory value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttractionCategory() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _AttractionCategory():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _AttractionCategory() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _AttractionCategory implements AttractionCategory {
  const _AttractionCategory({required this.id, required this.name});
  

@override final  int id;
@override final  String name;

/// Create a copy of AttractionCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionCategoryCopyWith<_AttractionCategory> get copyWith => __$AttractionCategoryCopyWithImpl<_AttractionCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionCategory(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AttractionCategoryCopyWith<$Res> implements $AttractionCategoryCopyWith<$Res> {
  factory _$AttractionCategoryCopyWith(_AttractionCategory value, $Res Function(_AttractionCategory) _then) = __$AttractionCategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$AttractionCategoryCopyWithImpl<$Res>
    implements _$AttractionCategoryCopyWith<$Res> {
  __$AttractionCategoryCopyWithImpl(this._self, this._then);

  final _AttractionCategory _self;
  final $Res Function(_AttractionCategory) _then;

/// Create a copy of AttractionCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AttractionCategory(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AttractionImage {

 String get src; String get subject; String get ext;
/// Create a copy of AttractionImage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionImageCopyWith<AttractionImage> get copyWith => _$AttractionImageCopyWithImpl<AttractionImage>(this as AttractionImage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionImage&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.ext, ext) || other.ext == ext));
}


@override
int get hashCode => Object.hash(runtimeType,src,subject,ext);

@override
String toString() {
  return 'AttractionImage(src: $src, subject: $subject, ext: $ext)';
}


}

/// @nodoc
abstract mixin class $AttractionImageCopyWith<$Res>  {
  factory $AttractionImageCopyWith(AttractionImage value, $Res Function(AttractionImage) _then) = _$AttractionImageCopyWithImpl;
@useResult
$Res call({
 String src, String subject, String ext
});




}
/// @nodoc
class _$AttractionImageCopyWithImpl<$Res>
    implements $AttractionImageCopyWith<$Res> {
  _$AttractionImageCopyWithImpl(this._self, this._then);

  final AttractionImage _self;
  final $Res Function(AttractionImage) _then;

/// Create a copy of AttractionImage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? src = null,Object? subject = null,Object? ext = null,}) {
  return _then(_self.copyWith(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttractionImage].
extension AttractionImagePatterns on AttractionImage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionImage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionImage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionImage value)  $default,){
final _that = this;
switch (_that) {
case _AttractionImage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionImage value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionImage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String src,  String subject,  String ext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttractionImage() when $default != null:
return $default(_that.src,_that.subject,_that.ext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String src,  String subject,  String ext)  $default,) {final _that = this;
switch (_that) {
case _AttractionImage():
return $default(_that.src,_that.subject,_that.ext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String src,  String subject,  String ext)?  $default,) {final _that = this;
switch (_that) {
case _AttractionImage() when $default != null:
return $default(_that.src,_that.subject,_that.ext);case _:
  return null;

}
}

}

/// @nodoc


class _AttractionImage implements AttractionImage {
  const _AttractionImage({required this.src, required this.subject, required this.ext});
  

@override final  String src;
@override final  String subject;
@override final  String ext;

/// Create a copy of AttractionImage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionImageCopyWith<_AttractionImage> get copyWith => __$AttractionImageCopyWithImpl<_AttractionImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionImage&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.ext, ext) || other.ext == ext));
}


@override
int get hashCode => Object.hash(runtimeType,src,subject,ext);

@override
String toString() {
  return 'AttractionImage(src: $src, subject: $subject, ext: $ext)';
}


}

/// @nodoc
abstract mixin class _$AttractionImageCopyWith<$Res> implements $AttractionImageCopyWith<$Res> {
  factory _$AttractionImageCopyWith(_AttractionImage value, $Res Function(_AttractionImage) _then) = __$AttractionImageCopyWithImpl;
@override @useResult
$Res call({
 String src, String subject, String ext
});




}
/// @nodoc
class __$AttractionImageCopyWithImpl<$Res>
    implements _$AttractionImageCopyWith<$Res> {
  __$AttractionImageCopyWithImpl(this._self, this._then);

  final _AttractionImage _self;
  final $Res Function(_AttractionImage) _then;

/// Create a copy of AttractionImage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? src = null,Object? subject = null,Object? ext = null,}) {
  return _then(_AttractionImage(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
