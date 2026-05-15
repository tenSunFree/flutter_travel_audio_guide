// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppException {

 String get message;
/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppExceptionCopyWith<AppException> get copyWith => _$AppExceptionCopyWithImpl<AppException>(this as AppException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppException(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppExceptionCopyWith<$Res>  {
  factory $AppExceptionCopyWith(AppException value, $Res Function(AppException) _then) = _$AppExceptionCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AppExceptionCopyWithImpl<$Res>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._self, this._then);

  final AppException _self;
  final $Res Function(AppException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppException].
extension AppExceptionPatterns on AppException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerException value)?  server,TResult Function( DownloadException value)?  download,TResult Function( LocalStorageException value)?  localStorage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerException() when server != null:
return server(_that);case DownloadException() when download != null:
return download(_that);case LocalStorageException() when localStorage != null:
return localStorage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerException value)  server,required TResult Function( DownloadException value)  download,required TResult Function( LocalStorageException value)  localStorage,}){
final _that = this;
switch (_that) {
case ServerException():
return server(_that);case DownloadException():
return download(_that);case LocalStorageException():
return localStorage(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerException value)?  server,TResult? Function( DownloadException value)?  download,TResult? Function( LocalStorageException value)?  localStorage,}){
final _that = this;
switch (_that) {
case ServerException() when server != null:
return server(_that);case DownloadException() when download != null:
return download(_that);case LocalStorageException() when localStorage != null:
return localStorage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  server,TResult Function( String message)?  download,TResult Function( String message)?  localStorage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerException() when server != null:
return server(_that.message);case DownloadException() when download != null:
return download(_that.message);case LocalStorageException() when localStorage != null:
return localStorage(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  server,required TResult Function( String message)  download,required TResult Function( String message)  localStorage,}) {final _that = this;
switch (_that) {
case ServerException():
return server(_that.message);case DownloadException():
return download(_that.message);case LocalStorageException():
return localStorage(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  server,TResult? Function( String message)?  download,TResult? Function( String message)?  localStorage,}) {final _that = this;
switch (_that) {
case ServerException() when server != null:
return server(_that.message);case DownloadException() when download != null:
return download(_that.message);case LocalStorageException() when localStorage != null:
return localStorage(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ServerException implements AppException {
  const ServerException(this.message);
  

@override final  String message;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerExceptionCopyWith<ServerException> get copyWith => _$ServerExceptionCopyWithImpl<ServerException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppException.server(message: $message)';
}


}

/// @nodoc
abstract mixin class $ServerExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(ServerException value, $Res Function(ServerException) _then) = _$ServerExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._self, this._then);

  final ServerException _self;
  final $Res Function(ServerException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ServerException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DownloadException implements AppException {
  const DownloadException(this.message);
  

@override final  String message;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadExceptionCopyWith<DownloadException> get copyWith => _$DownloadExceptionCopyWithImpl<DownloadException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppException.download(message: $message)';
}


}

/// @nodoc
abstract mixin class $DownloadExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $DownloadExceptionCopyWith(DownloadException value, $Res Function(DownloadException) _then) = _$DownloadExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DownloadExceptionCopyWithImpl<$Res>
    implements $DownloadExceptionCopyWith<$Res> {
  _$DownloadExceptionCopyWithImpl(this._self, this._then);

  final DownloadException _self;
  final $Res Function(DownloadException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DownloadException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LocalStorageException implements AppException {
  const LocalStorageException(this.message);
  

@override final  String message;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalStorageExceptionCopyWith<LocalStorageException> get copyWith => _$LocalStorageExceptionCopyWithImpl<LocalStorageException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalStorageException&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppException.localStorage(message: $message)';
}


}

/// @nodoc
abstract mixin class $LocalStorageExceptionCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $LocalStorageExceptionCopyWith(LocalStorageException value, $Res Function(LocalStorageException) _then) = _$LocalStorageExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LocalStorageExceptionCopyWithImpl<$Res>
    implements $LocalStorageExceptionCopyWith<$Res> {
  _$LocalStorageExceptionCopyWithImpl(this._self, this._then);

  final LocalStorageException _self;
  final $Res Function(LocalStorageException) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(LocalStorageException(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
