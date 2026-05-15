// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ActivityPage {

 int get total; int get page; List<Activity> get items; bool get hasMore;
/// Create a copy of ActivityPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityPageCopyWith<ActivityPage> get copyWith => _$ActivityPageCopyWithImpl<ActivityPage>(this as ActivityPage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,total,page,const DeepCollectionEquality().hash(items),hasMore);

@override
String toString() {
  return 'ActivityPage(total: $total, page: $page, items: $items, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $ActivityPageCopyWith<$Res>  {
  factory $ActivityPageCopyWith(ActivityPage value, $Res Function(ActivityPage) _then) = _$ActivityPageCopyWithImpl;
@useResult
$Res call({
 int total, int page, List<Activity> items, bool hasMore
});




}
/// @nodoc
class _$ActivityPageCopyWithImpl<$Res>
    implements $ActivityPageCopyWith<$Res> {
  _$ActivityPageCopyWithImpl(this._self, this._then);

  final ActivityPage _self;
  final $Res Function(ActivityPage) _then;

/// Create a copy of ActivityPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? items = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Activity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityPage].
extension ActivityPagePatterns on ActivityPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityPage value)  $default,){
final _that = this;
switch (_that) {
case _ActivityPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityPage value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  List<Activity> items,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityPage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  List<Activity> items,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _ActivityPage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  List<Activity> items,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _ActivityPage() when $default != null:
return $default(_that.total,_that.page,_that.items,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _ActivityPage implements ActivityPage {
  const _ActivityPage({required this.total, required this.page, required final  List<Activity> items, required this.hasMore}): _items = items;
  

@override final  int total;
@override final  int page;
 final  List<Activity> _items;
@override List<Activity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  bool hasMore;

/// Create a copy of ActivityPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityPageCopyWith<_ActivityPage> get copyWith => __$ActivityPageCopyWithImpl<_ActivityPage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityPage&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,total,page,const DeepCollectionEquality().hash(_items),hasMore);

@override
String toString() {
  return 'ActivityPage(total: $total, page: $page, items: $items, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$ActivityPageCopyWith<$Res> implements $ActivityPageCopyWith<$Res> {
  factory _$ActivityPageCopyWith(_ActivityPage value, $Res Function(_ActivityPage) _then) = __$ActivityPageCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, List<Activity> items, bool hasMore
});




}
/// @nodoc
class __$ActivityPageCopyWithImpl<$Res>
    implements _$ActivityPageCopyWith<$Res> {
  __$ActivityPageCopyWithImpl(this._self, this._then);

  final _ActivityPage _self;
  final $Res Function(_ActivityPage) _then;

/// Create a copy of ActivityPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? items = null,Object? hasMore = null,}) {
  return _then(_ActivityPage(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Activity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
