// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Activity {

 int get id; String get title; String get description; String get begin; String get end; String get posted; String get modified; String get url; String get address; String get distric; String get nlat; String get elong; String get organizer; String get coRganizer; String get contact; String get tel; String get ticket; String get traffic; String get parking; List<ActivityLink> get links;
/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityCopyWith<Activity> get copyWith => _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.begin, begin) || other.begin == begin)&&(identical(other.end, end) || other.end == end)&&(identical(other.posted, posted) || other.posted == posted)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.coRganizer, coRganizer) || other.coRganizer == coRganizer)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.traffic, traffic) || other.traffic == traffic)&&(identical(other.parking, parking) || other.parking == parking)&&const DeepCollectionEquality().equals(other.links, links));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,begin,end,posted,modified,url,address,distric,nlat,elong,organizer,coRganizer,contact,tel,ticket,traffic,parking,const DeepCollectionEquality().hash(links)]);

@override
String toString() {
  return 'Activity(id: $id, title: $title, description: $description, begin: $begin, end: $end, posted: $posted, modified: $modified, url: $url, address: $address, distric: $distric, nlat: $nlat, elong: $elong, organizer: $organizer, coRganizer: $coRganizer, contact: $contact, tel: $tel, ticket: $ticket, traffic: $traffic, parking: $parking, links: $links)';
}


}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res>  {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) = _$ActivityCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String begin, String end, String posted, String modified, String url, String address, String distric, String nlat, String elong, String organizer, String coRganizer, String contact, String tel, String ticket, String traffic, String parking, List<ActivityLink> links
});




}
/// @nodoc
class _$ActivityCopyWithImpl<$Res>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? begin = null,Object? end = null,Object? posted = null,Object? modified = null,Object? url = null,Object? address = null,Object? distric = null,Object? nlat = null,Object? elong = null,Object? organizer = null,Object? coRganizer = null,Object? contact = null,Object? tel = null,Object? ticket = null,Object? traffic = null,Object? parking = null,Object? links = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,begin: null == begin ? _self.begin : begin // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,posted: null == posted ? _self.posted : posted // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,distric: null == distric ? _self.distric : distric // ignore: cast_nullable_to_non_nullable
as String,nlat: null == nlat ? _self.nlat : nlat // ignore: cast_nullable_to_non_nullable
as String,elong: null == elong ? _self.elong : elong // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,coRganizer: null == coRganizer ? _self.coRganizer : coRganizer // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,tel: null == tel ? _self.tel : tel // ignore: cast_nullable_to_non_nullable
as String,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,traffic: null == traffic ? _self.traffic : traffic // ignore: cast_nullable_to_non_nullable
as String,parking: null == parking ? _self.parking : parking // ignore: cast_nullable_to_non_nullable
as String,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as List<ActivityLink>,
  ));
}

}


/// Adds pattern-matching-related methods to [Activity].
extension ActivityPatterns on Activity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Activity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Activity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Activity value)  $default,){
final _that = this;
switch (_that) {
case _Activity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Activity value)?  $default,){
final _that = this;
switch (_that) {
case _Activity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String begin,  String end,  String posted,  String modified,  String url,  String address,  String distric,  String nlat,  String elong,  String organizer,  String coRganizer,  String contact,  String tel,  String ticket,  String traffic,  String parking,  List<ActivityLink> links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.begin,_that.end,_that.posted,_that.modified,_that.url,_that.address,_that.distric,_that.nlat,_that.elong,_that.organizer,_that.coRganizer,_that.contact,_that.tel,_that.ticket,_that.traffic,_that.parking,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String begin,  String end,  String posted,  String modified,  String url,  String address,  String distric,  String nlat,  String elong,  String organizer,  String coRganizer,  String contact,  String tel,  String ticket,  String traffic,  String parking,  List<ActivityLink> links)  $default,) {final _that = this;
switch (_that) {
case _Activity():
return $default(_that.id,_that.title,_that.description,_that.begin,_that.end,_that.posted,_that.modified,_that.url,_that.address,_that.distric,_that.nlat,_that.elong,_that.organizer,_that.coRganizer,_that.contact,_that.tel,_that.ticket,_that.traffic,_that.parking,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String begin,  String end,  String posted,  String modified,  String url,  String address,  String distric,  String nlat,  String elong,  String organizer,  String coRganizer,  String contact,  String tel,  String ticket,  String traffic,  String parking,  List<ActivityLink> links)?  $default,) {final _that = this;
switch (_that) {
case _Activity() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.begin,_that.end,_that.posted,_that.modified,_that.url,_that.address,_that.distric,_that.nlat,_that.elong,_that.organizer,_that.coRganizer,_that.contact,_that.tel,_that.ticket,_that.traffic,_that.parking,_that.links);case _:
  return null;

}
}

}

/// @nodoc


class _Activity implements Activity {
  const _Activity({required this.id, required this.title, required this.description, required this.begin, required this.end, required this.posted, required this.modified, required this.url, required this.address, required this.distric, required this.nlat, required this.elong, required this.organizer, required this.coRganizer, required this.contact, required this.tel, required this.ticket, required this.traffic, required this.parking, required final  List<ActivityLink> links}): _links = links;
  

@override final  int id;
@override final  String title;
@override final  String description;
@override final  String begin;
@override final  String end;
@override final  String posted;
@override final  String modified;
@override final  String url;
@override final  String address;
@override final  String distric;
@override final  String nlat;
@override final  String elong;
@override final  String organizer;
@override final  String coRganizer;
@override final  String contact;
@override final  String tel;
@override final  String ticket;
@override final  String traffic;
@override final  String parking;
 final  List<ActivityLink> _links;
@override List<ActivityLink> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}


/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityCopyWith<_Activity> get copyWith => __$ActivityCopyWithImpl<_Activity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Activity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.begin, begin) || other.begin == begin)&&(identical(other.end, end) || other.end == end)&&(identical(other.posted, posted) || other.posted == posted)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.coRganizer, coRganizer) || other.coRganizer == coRganizer)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.traffic, traffic) || other.traffic == traffic)&&(identical(other.parking, parking) || other.parking == parking)&&const DeepCollectionEquality().equals(other._links, _links));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,begin,end,posted,modified,url,address,distric,nlat,elong,organizer,coRganizer,contact,tel,ticket,traffic,parking,const DeepCollectionEquality().hash(_links)]);

@override
String toString() {
  return 'Activity(id: $id, title: $title, description: $description, begin: $begin, end: $end, posted: $posted, modified: $modified, url: $url, address: $address, distric: $distric, nlat: $nlat, elong: $elong, organizer: $organizer, coRganizer: $coRganizer, contact: $contact, tel: $tel, ticket: $ticket, traffic: $traffic, parking: $parking, links: $links)';
}


}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res> implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) = __$ActivityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String begin, String end, String posted, String modified, String url, String address, String distric, String nlat, String elong, String organizer, String coRganizer, String contact, String tel, String ticket, String traffic, String parking, List<ActivityLink> links
});




}
/// @nodoc
class __$ActivityCopyWithImpl<$Res>
    implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

/// Create a copy of Activity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? begin = null,Object? end = null,Object? posted = null,Object? modified = null,Object? url = null,Object? address = null,Object? distric = null,Object? nlat = null,Object? elong = null,Object? organizer = null,Object? coRganizer = null,Object? contact = null,Object? tel = null,Object? ticket = null,Object? traffic = null,Object? parking = null,Object? links = null,}) {
  return _then(_Activity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,begin: null == begin ? _self.begin : begin // ignore: cast_nullable_to_non_nullable
as String,end: null == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String,posted: null == posted ? _self.posted : posted // ignore: cast_nullable_to_non_nullable
as String,modified: null == modified ? _self.modified : modified // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,distric: null == distric ? _self.distric : distric // ignore: cast_nullable_to_non_nullable
as String,nlat: null == nlat ? _self.nlat : nlat // ignore: cast_nullable_to_non_nullable
as String,elong: null == elong ? _self.elong : elong // ignore: cast_nullable_to_non_nullable
as String,organizer: null == organizer ? _self.organizer : organizer // ignore: cast_nullable_to_non_nullable
as String,coRganizer: null == coRganizer ? _self.coRganizer : coRganizer // ignore: cast_nullable_to_non_nullable
as String,contact: null == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String,tel: null == tel ? _self.tel : tel // ignore: cast_nullable_to_non_nullable
as String,ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as String,traffic: null == traffic ? _self.traffic : traffic // ignore: cast_nullable_to_non_nullable
as String,parking: null == parking ? _self.parking : parking // ignore: cast_nullable_to_non_nullable
as String,links: null == links ? _self._links : links // ignore: cast_nullable_to_non_nullable
as List<ActivityLink>,
  ));
}


}

/// @nodoc
mixin _$ActivityLink {

 String get src; String get subject;
/// Create a copy of ActivityLink
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityLinkCopyWith<ActivityLink> get copyWith => _$ActivityLinkCopyWithImpl<ActivityLink>(this as ActivityLink, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityLink&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject));
}


@override
int get hashCode => Object.hash(runtimeType,src,subject);

@override
String toString() {
  return 'ActivityLink(src: $src, subject: $subject)';
}


}

/// @nodoc
abstract mixin class $ActivityLinkCopyWith<$Res>  {
  factory $ActivityLinkCopyWith(ActivityLink value, $Res Function(ActivityLink) _then) = _$ActivityLinkCopyWithImpl;
@useResult
$Res call({
 String src, String subject
});




}
/// @nodoc
class _$ActivityLinkCopyWithImpl<$Res>
    implements $ActivityLinkCopyWith<$Res> {
  _$ActivityLinkCopyWithImpl(this._self, this._then);

  final ActivityLink _self;
  final $Res Function(ActivityLink) _then;

/// Create a copy of ActivityLink
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? src = null,Object? subject = null,}) {
  return _then(_self.copyWith(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityLink].
extension ActivityLinkPatterns on ActivityLink {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityLink value)  $default,){
final _that = this;
switch (_that) {
case _ActivityLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityLink value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String src,  String subject)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityLink() when $default != null:
return $default(_that.src,_that.subject);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String src,  String subject)  $default,) {final _that = this;
switch (_that) {
case _ActivityLink():
return $default(_that.src,_that.subject);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String src,  String subject)?  $default,) {final _that = this;
switch (_that) {
case _ActivityLink() when $default != null:
return $default(_that.src,_that.subject);case _:
  return null;

}
}

}

/// @nodoc


class _ActivityLink implements ActivityLink {
  const _ActivityLink({required this.src, required this.subject});
  

@override final  String src;
@override final  String subject;

/// Create a copy of ActivityLink
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityLinkCopyWith<_ActivityLink> get copyWith => __$ActivityLinkCopyWithImpl<_ActivityLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityLink&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject));
}


@override
int get hashCode => Object.hash(runtimeType,src,subject);

@override
String toString() {
  return 'ActivityLink(src: $src, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$ActivityLinkCopyWith<$Res> implements $ActivityLinkCopyWith<$Res> {
  factory _$ActivityLinkCopyWith(_ActivityLink value, $Res Function(_ActivityLink) _then) = __$ActivityLinkCopyWithImpl;
@override @useResult
$Res call({
 String src, String subject
});




}
/// @nodoc
class __$ActivityLinkCopyWithImpl<$Res>
    implements _$ActivityLinkCopyWith<$Res> {
  __$ActivityLinkCopyWithImpl(this._self, this._then);

  final _ActivityLink _self;
  final $Res Function(_ActivityLink) _then;

/// Create a copy of ActivityLink
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? src = null,Object? subject = null,}) {
  return _then(_ActivityLink(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
