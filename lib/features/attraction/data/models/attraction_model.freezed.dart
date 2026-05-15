// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attraction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttractionTagModel {

 int get id; String get name;
/// Create a copy of AttractionTagModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionTagModelCopyWith<AttractionTagModel> get copyWith => _$AttractionTagModelCopyWithImpl<AttractionTagModel>(this as AttractionTagModel, _$identity);

  /// Serializes this AttractionTagModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionTagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionTagModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AttractionTagModelCopyWith<$Res>  {
  factory $AttractionTagModelCopyWith(AttractionTagModel value, $Res Function(AttractionTagModel) _then) = _$AttractionTagModelCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$AttractionTagModelCopyWithImpl<$Res>
    implements $AttractionTagModelCopyWith<$Res> {
  _$AttractionTagModelCopyWithImpl(this._self, this._then);

  final AttractionTagModel _self;
  final $Res Function(AttractionTagModel) _then;

/// Create a copy of AttractionTagModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttractionTagModel].
extension AttractionTagModelPatterns on AttractionTagModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionTagModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionTagModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionTagModel value)  $default,){
final _that = this;
switch (_that) {
case _AttractionTagModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionTagModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionTagModel() when $default != null:
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
case _AttractionTagModel() when $default != null:
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
case _AttractionTagModel():
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
case _AttractionTagModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttractionTagModel extends AttractionTagModel {
  const _AttractionTagModel({this.id = 0, this.name = ''}): super._();
  factory _AttractionTagModel.fromJson(Map<String, dynamic> json) => _$AttractionTagModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;

/// Create a copy of AttractionTagModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionTagModelCopyWith<_AttractionTagModel> get copyWith => __$AttractionTagModelCopyWithImpl<_AttractionTagModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttractionTagModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionTagModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionTagModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AttractionTagModelCopyWith<$Res> implements $AttractionTagModelCopyWith<$Res> {
  factory _$AttractionTagModelCopyWith(_AttractionTagModel value, $Res Function(_AttractionTagModel) _then) = __$AttractionTagModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$AttractionTagModelCopyWithImpl<$Res>
    implements _$AttractionTagModelCopyWith<$Res> {
  __$AttractionTagModelCopyWithImpl(this._self, this._then);

  final _AttractionTagModel _self;
  final $Res Function(_AttractionTagModel) _then;

/// Create a copy of AttractionTagModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AttractionTagModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttractionCategoryModel {

 int get id; String get name;
/// Create a copy of AttractionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionCategoryModelCopyWith<AttractionCategoryModel> get copyWith => _$AttractionCategoryModelCopyWithImpl<AttractionCategoryModel>(this as AttractionCategoryModel, _$identity);

  /// Serializes this AttractionCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionCategoryModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $AttractionCategoryModelCopyWith<$Res>  {
  factory $AttractionCategoryModelCopyWith(AttractionCategoryModel value, $Res Function(AttractionCategoryModel) _then) = _$AttractionCategoryModelCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$AttractionCategoryModelCopyWithImpl<$Res>
    implements $AttractionCategoryModelCopyWith<$Res> {
  _$AttractionCategoryModelCopyWithImpl(this._self, this._then);

  final AttractionCategoryModel _self;
  final $Res Function(AttractionCategoryModel) _then;

/// Create a copy of AttractionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AttractionCategoryModel].
extension AttractionCategoryModelPatterns on AttractionCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _AttractionCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionCategoryModel() when $default != null:
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
case _AttractionCategoryModel() when $default != null:
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
case _AttractionCategoryModel():
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
case _AttractionCategoryModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttractionCategoryModel extends AttractionCategoryModel {
  const _AttractionCategoryModel({this.id = 0, this.name = ''}): super._();
  factory _AttractionCategoryModel.fromJson(Map<String, dynamic> json) => _$AttractionCategoryModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;

/// Create a copy of AttractionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionCategoryModelCopyWith<_AttractionCategoryModel> get copyWith => __$AttractionCategoryModelCopyWithImpl<_AttractionCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttractionCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionCategoryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'AttractionCategoryModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AttractionCategoryModelCopyWith<$Res> implements $AttractionCategoryModelCopyWith<$Res> {
  factory _$AttractionCategoryModelCopyWith(_AttractionCategoryModel value, $Res Function(_AttractionCategoryModel) _then) = __$AttractionCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$AttractionCategoryModelCopyWithImpl<$Res>
    implements _$AttractionCategoryModelCopyWith<$Res> {
  __$AttractionCategoryModelCopyWithImpl(this._self, this._then);

  final _AttractionCategoryModel _self;
  final $Res Function(_AttractionCategoryModel) _then;

/// Create a copy of AttractionCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_AttractionCategoryModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttractionImageModel {

 String get src; String get subject; String get ext;
/// Create a copy of AttractionImageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionImageModelCopyWith<AttractionImageModel> get copyWith => _$AttractionImageModelCopyWithImpl<AttractionImageModel>(this as AttractionImageModel, _$identity);

  /// Serializes this AttractionImageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionImageModel&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.ext, ext) || other.ext == ext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,src,subject,ext);

@override
String toString() {
  return 'AttractionImageModel(src: $src, subject: $subject, ext: $ext)';
}


}

/// @nodoc
abstract mixin class $AttractionImageModelCopyWith<$Res>  {
  factory $AttractionImageModelCopyWith(AttractionImageModel value, $Res Function(AttractionImageModel) _then) = _$AttractionImageModelCopyWithImpl;
@useResult
$Res call({
 String src, String subject, String ext
});




}
/// @nodoc
class _$AttractionImageModelCopyWithImpl<$Res>
    implements $AttractionImageModelCopyWith<$Res> {
  _$AttractionImageModelCopyWithImpl(this._self, this._then);

  final AttractionImageModel _self;
  final $Res Function(AttractionImageModel) _then;

/// Create a copy of AttractionImageModel
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


/// Adds pattern-matching-related methods to [AttractionImageModel].
extension AttractionImageModelPatterns on AttractionImageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionImageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionImageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionImageModel value)  $default,){
final _that = this;
switch (_that) {
case _AttractionImageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionImageModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionImageModel() when $default != null:
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
case _AttractionImageModel() when $default != null:
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
case _AttractionImageModel():
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
case _AttractionImageModel() when $default != null:
return $default(_that.src,_that.subject,_that.ext);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttractionImageModel extends AttractionImageModel {
  const _AttractionImageModel({this.src = '', this.subject = '', this.ext = ''}): super._();
  factory _AttractionImageModel.fromJson(Map<String, dynamic> json) => _$AttractionImageModelFromJson(json);

@override@JsonKey() final  String src;
@override@JsonKey() final  String subject;
@override@JsonKey() final  String ext;

/// Create a copy of AttractionImageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionImageModelCopyWith<_AttractionImageModel> get copyWith => __$AttractionImageModelCopyWithImpl<_AttractionImageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttractionImageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionImageModel&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.ext, ext) || other.ext == ext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,src,subject,ext);

@override
String toString() {
  return 'AttractionImageModel(src: $src, subject: $subject, ext: $ext)';
}


}

/// @nodoc
abstract mixin class _$AttractionImageModelCopyWith<$Res> implements $AttractionImageModelCopyWith<$Res> {
  factory _$AttractionImageModelCopyWith(_AttractionImageModel value, $Res Function(_AttractionImageModel) _then) = __$AttractionImageModelCopyWithImpl;
@override @useResult
$Res call({
 String src, String subject, String ext
});




}
/// @nodoc
class __$AttractionImageModelCopyWithImpl<$Res>
    implements _$AttractionImageModelCopyWith<$Res> {
  __$AttractionImageModelCopyWithImpl(this._self, this._then);

  final _AttractionImageModel _self;
  final $Res Function(_AttractionImageModel) _then;

/// Create a copy of AttractionImageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? src = null,Object? subject = null,Object? ext = null,}) {
  return _then(_AttractionImageModel(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,ext: null == ext ? _self.ext : ext // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AttractionModel {

 int get id; String get name; String get introduction;@JsonKey(name: 'open_time') String get openTime; String get distric; String get address; String get tel; double? get nlat; double? get elong;@JsonKey(name: 'official_site') String get officialSite; String get facebook; String get ticket; String get remind; String get modified; String get url;@JsonKey(name: 'category') List<AttractionCategoryModel> get categories;@JsonKey(name: 'target') List<AttractionTagModel> get targets;@JsonKey(name: 'friendly') List<AttractionTagModel> get friendlies; List<AttractionImageModel> get images;
/// Create a copy of AttractionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttractionModelCopyWith<AttractionModel> get copyWith => _$AttractionModelCopyWithImpl<AttractionModel>(this as AttractionModel, _$identity);

  /// Serializes this AttractionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttractionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.introduction, introduction) || other.introduction == introduction)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.address, address) || other.address == address)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.remind, remind) || other.remind == remind)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.targets, targets)&&const DeepCollectionEquality().equals(other.friendlies, friendlies)&&const DeepCollectionEquality().equals(other.images, images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,introduction,openTime,distric,address,tel,nlat,elong,officialSite,facebook,ticket,remind,modified,url,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(targets),const DeepCollectionEquality().hash(friendlies),const DeepCollectionEquality().hash(images)]);

@override
String toString() {
  return 'AttractionModel(id: $id, name: $name, introduction: $introduction, openTime: $openTime, distric: $distric, address: $address, tel: $tel, nlat: $nlat, elong: $elong, officialSite: $officialSite, facebook: $facebook, ticket: $ticket, remind: $remind, modified: $modified, url: $url, categories: $categories, targets: $targets, friendlies: $friendlies, images: $images)';
}


}

/// @nodoc
abstract mixin class $AttractionModelCopyWith<$Res>  {
  factory $AttractionModelCopyWith(AttractionModel value, $Res Function(AttractionModel) _then) = _$AttractionModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String introduction,@JsonKey(name: 'open_time') String openTime, String distric, String address, String tel, double? nlat, double? elong,@JsonKey(name: 'official_site') String officialSite, String facebook, String ticket, String remind, String modified, String url,@JsonKey(name: 'category') List<AttractionCategoryModel> categories,@JsonKey(name: 'target') List<AttractionTagModel> targets,@JsonKey(name: 'friendly') List<AttractionTagModel> friendlies, List<AttractionImageModel> images
});




}
/// @nodoc
class _$AttractionModelCopyWithImpl<$Res>
    implements $AttractionModelCopyWith<$Res> {
  _$AttractionModelCopyWithImpl(this._self, this._then);

  final AttractionModel _self;
  final $Res Function(AttractionModel) _then;

/// Create a copy of AttractionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? introduction = null,Object? openTime = null,Object? distric = null,Object? address = null,Object? tel = null,Object? nlat = freezed,Object? elong = freezed,Object? officialSite = null,Object? facebook = null,Object? ticket = null,Object? remind = null,Object? modified = null,Object? url = null,Object? categories = null,Object? targets = null,Object? friendlies = null,Object? images = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,introduction: null == introduction ? _self.introduction : introduction // ignore: cast_nullable_to_non_nullable
as String,openTime: null == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String,distric: null == distric ? _self.distric : distric // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,tel: null == tel ? _self.tel : tel // ignore: cast_nullable_to_non_nullable
as String,nlat: freezed == nlat ? _self.nlat : nlat // ignore: cast_nullable_to_non_nullable
as double?,elong: freezed == elong ? _self.elong : elong // ignore: cast_nullable_to_non_nullable
as double?,officialSite: null == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String,facebook: null == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<AttractionCategoryModel>,targets: null == targets ? _self.targets : targets // ignore: cast_nullable_to_non_nullable
as List<AttractionTagModel>,friendlies: null == friendlies ? _self.friendlies : friendlies // ignore: cast_nullable_to_non_nullable
as List<AttractionTagModel>,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<AttractionImageModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AttractionModel].
extension AttractionModelPatterns on AttractionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttractionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttractionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttractionModel value)  $default,){
final _that = this;
switch (_that) {
case _AttractionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttractionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttractionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String introduction, @JsonKey(name: 'open_time')  String openTime,  String distric,  String address,  String tel,  double? nlat,  double? elong, @JsonKey(name: 'official_site')  String officialSite,  String facebook,  String ticket,  String remind,  String modified,  String url, @JsonKey(name: 'category')  List<AttractionCategoryModel> categories, @JsonKey(name: 'target')  List<AttractionTagModel> targets, @JsonKey(name: 'friendly')  List<AttractionTagModel> friendlies,  List<AttractionImageModel> images)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttractionModel() when $default != null:
return $default(_that.id,_that.name,_that.introduction,_that.openTime,_that.distric,_that.address,_that.tel,_that.nlat,_that.elong,_that.officialSite,_that.facebook,_that.ticket,_that.remind,_that.modified,_that.url,_that.categories,_that.targets,_that.friendlies,_that.images);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String introduction, @JsonKey(name: 'open_time')  String openTime,  String distric,  String address,  String tel,  double? nlat,  double? elong, @JsonKey(name: 'official_site')  String officialSite,  String facebook,  String ticket,  String remind,  String modified,  String url, @JsonKey(name: 'category')  List<AttractionCategoryModel> categories, @JsonKey(name: 'target')  List<AttractionTagModel> targets, @JsonKey(name: 'friendly')  List<AttractionTagModel> friendlies,  List<AttractionImageModel> images)  $default,) {final _that = this;
switch (_that) {
case _AttractionModel():
return $default(_that.id,_that.name,_that.introduction,_that.openTime,_that.distric,_that.address,_that.tel,_that.nlat,_that.elong,_that.officialSite,_that.facebook,_that.ticket,_that.remind,_that.modified,_that.url,_that.categories,_that.targets,_that.friendlies,_that.images);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String introduction, @JsonKey(name: 'open_time')  String openTime,  String distric,  String address,  String tel,  double? nlat,  double? elong, @JsonKey(name: 'official_site')  String officialSite,  String facebook,  String ticket,  String remind,  String modified,  String url, @JsonKey(name: 'category')  List<AttractionCategoryModel> categories, @JsonKey(name: 'target')  List<AttractionTagModel> targets, @JsonKey(name: 'friendly')  List<AttractionTagModel> friendlies,  List<AttractionImageModel> images)?  $default,) {final _that = this;
switch (_that) {
case _AttractionModel() when $default != null:
return $default(_that.id,_that.name,_that.introduction,_that.openTime,_that.distric,_that.address,_that.tel,_that.nlat,_that.elong,_that.officialSite,_that.facebook,_that.ticket,_that.remind,_that.modified,_that.url,_that.categories,_that.targets,_that.friendlies,_that.images);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttractionModel extends AttractionModel {
  const _AttractionModel({this.id = 0, this.name = '', this.introduction = '', @JsonKey(name: 'open_time') this.openTime = '', this.distric = '', this.address = '', this.tel = '', this.nlat, this.elong, @JsonKey(name: 'official_site') this.officialSite = '', this.facebook = '', this.ticket = '', this.remind = '', this.modified = '', this.url = '', @JsonKey(name: 'category') final  List<AttractionCategoryModel> categories = const [], @JsonKey(name: 'target') final  List<AttractionTagModel> targets = const [], @JsonKey(name: 'friendly') final  List<AttractionTagModel> friendlies = const [], final  List<AttractionImageModel> images = const []}): _categories = categories,_targets = targets,_friendlies = friendlies,_images = images,super._();
  factory _AttractionModel.fromJson(Map<String, dynamic> json) => _$AttractionModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String introduction;
@override@JsonKey(name: 'open_time') final  String openTime;
@override@JsonKey() final  String distric;
@override@JsonKey() final  String address;
@override@JsonKey() final  String tel;
@override final  double? nlat;
@override final  double? elong;
@override@JsonKey(name: 'official_site') final  String officialSite;
@override@JsonKey() final  String facebook;
@override@JsonKey() final  String ticket;
@override@JsonKey() final  String remind;
@override@JsonKey() final  String modified;
@override@JsonKey() final  String url;
 final  List<AttractionCategoryModel> _categories;
@override@JsonKey(name: 'category') List<AttractionCategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<AttractionTagModel> _targets;
@override@JsonKey(name: 'target') List<AttractionTagModel> get targets {
  if (_targets is EqualUnmodifiableListView) return _targets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_targets);
}

 final  List<AttractionTagModel> _friendlies;
@override@JsonKey(name: 'friendly') List<AttractionTagModel> get friendlies {
  if (_friendlies is EqualUnmodifiableListView) return _friendlies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_friendlies);
}

 final  List<AttractionImageModel> _images;
@override@JsonKey() List<AttractionImageModel> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}


/// Create a copy of AttractionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttractionModelCopyWith<_AttractionModel> get copyWith => __$AttractionModelCopyWithImpl<_AttractionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttractionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttractionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.introduction, introduction) || other.introduction == introduction)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.address, address) || other.address == address)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong)&&(identical(other.officialSite, officialSite) || other.officialSite == officialSite)&&(identical(other.facebook, facebook) || other.facebook == facebook)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.remind, remind) || other.remind == remind)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._targets, _targets)&&const DeepCollectionEquality().equals(other._friendlies, _friendlies)&&const DeepCollectionEquality().equals(other._images, _images));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,introduction,openTime,distric,address,tel,nlat,elong,officialSite,facebook,ticket,remind,modified,url,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_targets),const DeepCollectionEquality().hash(_friendlies),const DeepCollectionEquality().hash(_images)]);

@override
String toString() {
  return 'AttractionModel(id: $id, name: $name, introduction: $introduction, openTime: $openTime, distric: $distric, address: $address, tel: $tel, nlat: $nlat, elong: $elong, officialSite: $officialSite, facebook: $facebook, ticket: $ticket, remind: $remind, modified: $modified, url: $url, categories: $categories, targets: $targets, friendlies: $friendlies, images: $images)';
}


}

/// @nodoc
abstract mixin class _$AttractionModelCopyWith<$Res> implements $AttractionModelCopyWith<$Res> {
  factory _$AttractionModelCopyWith(_AttractionModel value, $Res Function(_AttractionModel) _then) = __$AttractionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String introduction,@JsonKey(name: 'open_time') String openTime, String distric, String address, String tel, double? nlat, double? elong,@JsonKey(name: 'official_site') String officialSite, String facebook, String ticket, String remind, String modified, String url,@JsonKey(name: 'category') List<AttractionCategoryModel> categories,@JsonKey(name: 'target') List<AttractionTagModel> targets,@JsonKey(name: 'friendly') List<AttractionTagModel> friendlies, List<AttractionImageModel> images
});




}
/// @nodoc
class __$AttractionModelCopyWithImpl<$Res>
    implements _$AttractionModelCopyWith<$Res> {
  __$AttractionModelCopyWithImpl(this._self, this._then);

  final _AttractionModel _self;
  final $Res Function(_AttractionModel) _then;

/// Create a copy of AttractionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? introduction = null,Object? openTime = null,Object? distric = null,Object? address = null,Object? tel = null,Object? nlat = freezed,Object? elong = freezed,Object? officialSite = null,Object? facebook = null,Object? ticket = null,Object? remind = null,Object? modified = null,Object? url = null,Object? categories = null,Object? targets = null,Object? friendlies = null,Object? images = null,}) {
  return _then(_AttractionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,introduction: null == introduction ? _self.introduction : introduction // ignore: cast_nullable_to_non_nullable
as String,openTime: null == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String,distric: null == distric ? _self.distric : distric // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,tel: null == tel ? _self.tel : tel // ignore: cast_nullable_to_non_nullable
as String,nlat: freezed == nlat ? _self.nlat : nlat // ignore: cast_nullable_to_non_nullable
as double?,elong: freezed == elong ? _self.elong : elong // ignore: cast_nullable_to_non_nullable
as double?,officialSite: null == officialSite ? _self.officialSite : officialSite // ignore: cast_nullable_to_non_nullable
as String,facebook: null == facebook ? _self.facebook : facebook // ignore: cast_nullable_to_non_nullable
as String,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,remind: null == remind ? _self.remind : remind // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<AttractionCategoryModel>,targets: null == targets ? _self._targets : targets // ignore: cast_nullable_to_non_nullable
as List<AttractionTagModel>,friendlies: null == friendlies ? _self._friendlies : friendlies // ignore: cast_nullable_to_non_nullable
as List<AttractionTagModel>,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<AttractionImageModel>,
  ));
}


}

// dart format on
