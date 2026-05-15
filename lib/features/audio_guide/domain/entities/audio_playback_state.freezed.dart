// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_playback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AudioPlaybackState {

 AudioPlaybackStatus get status; Duration get position; Duration get duration; String? get errorMessage;
/// Create a copy of AudioPlaybackState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AudioPlaybackStateCopyWith<AudioPlaybackState> get copyWith => _$AudioPlaybackStateCopyWithImpl<AudioPlaybackState>(this as AudioPlaybackState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AudioPlaybackState&&(identical(other.status, status) || other.status == status)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,position,duration,errorMessage);

@override
String toString() {
  return 'AudioPlaybackState(status: $status, position: $position, duration: $duration, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AudioPlaybackStateCopyWith<$Res>  {
  factory $AudioPlaybackStateCopyWith(AudioPlaybackState value, $Res Function(AudioPlaybackState) _then) = _$AudioPlaybackStateCopyWithImpl;
@useResult
$Res call({
 AudioPlaybackStatus status, Duration position, Duration duration, String? errorMessage
});




}
/// @nodoc
class _$AudioPlaybackStateCopyWithImpl<$Res>
    implements $AudioPlaybackStateCopyWith<$Res> {
  _$AudioPlaybackStateCopyWithImpl(this._self, this._then);

  final AudioPlaybackState _self;
  final $Res Function(AudioPlaybackState) _then;

/// Create a copy of AudioPlaybackState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? position = null,Object? duration = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AudioPlaybackStatus,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Duration,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AudioPlaybackState].
extension AudioPlaybackStatePatterns on AudioPlaybackState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AudioPlaybackState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AudioPlaybackState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AudioPlaybackState value)  $default,){
final _that = this;
switch (_that) {
case _AudioPlaybackState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AudioPlaybackState value)?  $default,){
final _that = this;
switch (_that) {
case _AudioPlaybackState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AudioPlaybackStatus status,  Duration position,  Duration duration,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AudioPlaybackState() when $default != null:
return $default(_that.status,_that.position,_that.duration,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AudioPlaybackStatus status,  Duration position,  Duration duration,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AudioPlaybackState():
return $default(_that.status,_that.position,_that.duration,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AudioPlaybackStatus status,  Duration position,  Duration duration,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AudioPlaybackState() when $default != null:
return $default(_that.status,_that.position,_that.duration,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AudioPlaybackState extends AudioPlaybackState {
  const _AudioPlaybackState({this.status = AudioPlaybackStatus.initial, this.position = Duration.zero, this.duration = Duration.zero, this.errorMessage}): super._();
  

@override@JsonKey() final  AudioPlaybackStatus status;
@override@JsonKey() final  Duration position;
@override@JsonKey() final  Duration duration;
@override final  String? errorMessage;

/// Create a copy of AudioPlaybackState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioPlaybackStateCopyWith<_AudioPlaybackState> get copyWith => __$AudioPlaybackStateCopyWithImpl<_AudioPlaybackState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioPlaybackState&&(identical(other.status, status) || other.status == status)&&(identical(other.position, position) || other.position == position)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,position,duration,errorMessage);

@override
String toString() {
  return 'AudioPlaybackState(status: $status, position: $position, duration: $duration, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AudioPlaybackStateCopyWith<$Res> implements $AudioPlaybackStateCopyWith<$Res> {
  factory _$AudioPlaybackStateCopyWith(_AudioPlaybackState value, $Res Function(_AudioPlaybackState) _then) = __$AudioPlaybackStateCopyWithImpl;
@override @useResult
$Res call({
 AudioPlaybackStatus status, Duration position, Duration duration, String? errorMessage
});




}
/// @nodoc
class __$AudioPlaybackStateCopyWithImpl<$Res>
    implements _$AudioPlaybackStateCopyWith<$Res> {
  __$AudioPlaybackStateCopyWithImpl(this._self, this._then);

  final _AudioPlaybackState _self;
  final $Res Function(_AudioPlaybackState) _then;

/// Create a copy of AudioPlaybackState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? position = null,Object? duration = null,Object? errorMessage = freezed,}) {
  return _then(_AudioPlaybackState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AudioPlaybackStatus,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Duration,duration: null == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as Duration,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
