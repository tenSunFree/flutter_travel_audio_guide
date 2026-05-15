// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_guide_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AudioGuidePage {

 int get total; int get page; List<AudioGuide> get items; bool get hasMore;
/// Create a copy of AudioGuidePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioGuidePageCopyWith<AudioGuidePage> get copyWith => _$AudioGuidePageCopyWithImpl<AudioGuidePage>(this as AudioGuidePage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioGuidePage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,total,page,const DeepCollectionEquality().hash(items),hasMore);

@override
String toString() {
  return 'AudioGuidePage(total: $total, page: $page, items: $items, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $AudioGuidePageCopyWith<$Res>  {
  factory $AudioGuidePageCopyWith(AudioGuidePage value, $Res Function(AudioGuidePage) _then) = _$AudioGuidePageCopyWithImpl;
@useResult
$Res call({
 int total, int page, List<AudioGuide> items, bool hasMore
});




}
/// @nodoc
class _$AudioGuidePageCopyWithImpl<$Res>
    implements $AudioGuidePageCopyWith<$Res> {
  _$AudioGuidePageCopyWithImpl(this._self, this._then);

  final AudioGuidePage _self;
  final $Res Function(AudioGuidePage) _then;

/// Create a copy of AudioGuidePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? items = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AudioGuide>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioGuidePage].
extension AudioGuidePagePatterns on AudioGuidePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioGuidePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioGuidePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioGuidePage value)  $default,){
final _that = this;
switch (_that) {
case _AudioGuidePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioGuidePage value)?  $default,){
final _that = this;
switch (_that) {
case _AudioGuidePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  List<AudioGuide> items,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioGuidePage() when $default != null:
return $default(_that.total,_that.page,_that.items,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  List<AudioGuide> items,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _AudioGuidePage():
return $default(_that.total,_that.page,_that.items,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  List<AudioGuide> items,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _AudioGuidePage() when $default != null:
return $default(_that.total,_that.page,_that.items,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _AudioGuidePage implements AudioGuidePage {
  const _AudioGuidePage({required this.total, required this.page, required final  List<AudioGuide> items, required this.hasMore}): _items = items;
  

@override final  int total;
@override final  int page;
 final  List<AudioGuide> _items;
@override List<AudioGuide> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  bool hasMore;

/// Create a copy of AudioGuidePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioGuidePageCopyWith<_AudioGuidePage> get copyWith => __$AudioGuidePageCopyWithImpl<_AudioGuidePage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioGuidePage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,total,page,const DeepCollectionEquality().hash(_items),hasMore);

@override
String toString() {
  return 'AudioGuidePage(total: $total, page: $page, items: $items, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$AudioGuidePageCopyWith<$Res> implements $AudioGuidePageCopyWith<$Res> {
  factory _$AudioGuidePageCopyWith(_AudioGuidePage value, $Res Function(_AudioGuidePage) _then) = __$AudioGuidePageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, List<AudioGuide> items, bool hasMore
});




}
/// @nodoc
class __$AudioGuidePageCopyWithImpl<$Res>
    implements _$AudioGuidePageCopyWith<$Res> {
  __$AudioGuidePageCopyWithImpl(this._self, this._then);

  final _AudioGuidePage _self;
  final $Res Function(_AudioGuidePage) _then;

/// Create a copy of AudioGuidePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? items = null,Object? hasMore = null,}) {
  return _then(_AudioGuidePage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AudioGuide>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
