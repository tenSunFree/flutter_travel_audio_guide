// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_guide_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AudioGuideModel {

 int get id; String get title; String? get summary; String get url;@JsonKey(name: 'file_ext') String? get fileExt; String get modified;
/// Create a copy of AudioGuideModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioGuideModelCopyWith<AudioGuideModel> get copyWith => _$AudioGuideModelCopyWithImpl<AudioGuideModel>(this as AudioGuideModel, _$identity);

  /// Serializes this AudioGuideModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioGuideModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.url, url) || other.url == url)&&(identical(other.fileExt, fileExt) || other.fileExt == fileExt)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,summary,url,fileExt,modified);

@override
String toString() {
  return 'AudioGuideModel(id: $id, title: $title, summary: $summary, url: $url, fileExt: $fileExt, modified: $modified)';
}


}

/// @nodoc
abstract mixin class $AudioGuideModelCopyWith<$Res>  {
  factory $AudioGuideModelCopyWith(AudioGuideModel value, $Res Function(AudioGuideModel) _then) = _$AudioGuideModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? summary, String url,@JsonKey(name: 'file_ext') String? fileExt, String modified
});




}
/// @nodoc
class _$AudioGuideModelCopyWithImpl<$Res>
    implements $AudioGuideModelCopyWith<$Res> {
  _$AudioGuideModelCopyWithImpl(this._self, this._then);

  final AudioGuideModel _self;
  final $Res Function(AudioGuideModel) _then;

/// Create a copy of AudioGuideModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? summary = freezed,Object? url = null,Object? fileExt = freezed,Object? modified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,fileExt: freezed == fileExt ? _self.fileExt : fileExt // ignore: cast_nullable_to_non_nullable
as String?,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioGuideModel].
extension AudioGuideModelPatterns on AudioGuideModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioGuideModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioGuideModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioGuideModel value)  $default,){
final _that = this;
switch (_that) {
case _AudioGuideModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioGuideModel value)?  $default,){
final _that = this;
switch (_that) {
case _AudioGuideModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? summary,  String url, @JsonKey(name: 'file_ext')  String? fileExt,  String modified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioGuideModel() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.url,_that.fileExt,_that.modified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? summary,  String url, @JsonKey(name: 'file_ext')  String? fileExt,  String modified)  $default,) {final _that = this;
switch (_that) {
case _AudioGuideModel():
return $default(_that.id,_that.title,_that.summary,_that.url,_that.fileExt,_that.modified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? summary,  String url, @JsonKey(name: 'file_ext')  String? fileExt,  String modified)?  $default,) {final _that = this;
switch (_that) {
case _AudioGuideModel() when $default != null:
return $default(_that.id,_that.title,_that.summary,_that.url,_that.fileExt,_that.modified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AudioGuideModel extends AudioGuideModel {
  const _AudioGuideModel({required this.id, this.title = '', this.summary, this.url = '', @JsonKey(name: 'file_ext') this.fileExt, this.modified = ''}): super._();
  factory _AudioGuideModel.fromJson(Map<String, dynamic> json) => _$AudioGuideModelFromJson(json);

@override final  int id;
@override@JsonKey() final  String title;
@override final  String? summary;
@override@JsonKey() final  String url;
@override@JsonKey(name: 'file_ext') final  String? fileExt;
@override@JsonKey() final  String modified;

/// Create a copy of AudioGuideModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioGuideModelCopyWith<_AudioGuideModel> get copyWith => __$AudioGuideModelCopyWithImpl<_AudioGuideModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioGuideModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioGuideModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.url, url) || other.url == url)&&(identical(other.fileExt, fileExt) || other.fileExt == fileExt)&&(identical(other.modified, modified) || other.modified == modified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,summary,url,fileExt,modified);

@override
String toString() {
  return 'AudioGuideModel(id: $id, title: $title, summary: $summary, url: $url, fileExt: $fileExt, modified: $modified)';
}


}

/// @nodoc
abstract mixin class _$AudioGuideModelCopyWith<$Res> implements $AudioGuideModelCopyWith<$Res> {
  factory _$AudioGuideModelCopyWith(_AudioGuideModel value, $Res Function(_AudioGuideModel) _then) = __$AudioGuideModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? summary, String url,@JsonKey(name: 'file_ext') String? fileExt, String modified
});




}
/// @nodoc
class __$AudioGuideModelCopyWithImpl<$Res>
    implements _$AudioGuideModelCopyWith<$Res> {
  __$AudioGuideModelCopyWithImpl(this._self, this._then);

  final _AudioGuideModel _self;
  final $Res Function(_AudioGuideModel) _then;

/// Create a copy of AudioGuideModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? summary = freezed,Object? url = null,Object? fileExt = freezed,Object? modified = null,}) {
  return _then(_AudioGuideModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String?,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,fileExt: freezed == fileExt ? _self.fileExt : fileExt // ignore: cast_nullable_to_non_nullable
as String?,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
