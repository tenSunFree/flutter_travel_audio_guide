// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ActivityLinkModel {

 String get src; String get subject;
/// Create a copy of ActivityLinkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityLinkModelCopyWith<ActivityLinkModel> get copyWith => _$ActivityLinkModelCopyWithImpl<ActivityLinkModel>(this as ActivityLinkModel, _$identity);

  /// Serializes this ActivityLinkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityLinkModel&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,src,subject);

@override
String toString() {
  return 'ActivityLinkModel(src: $src, subject: $subject)';
}


}

/// @nodoc
abstract mixin class $ActivityLinkModelCopyWith<$Res>  {
  factory $ActivityLinkModelCopyWith(ActivityLinkModel value, $Res Function(ActivityLinkModel) _then) = _$ActivityLinkModelCopyWithImpl;
@useResult
$Res call({
 String src, String subject
});




}
/// @nodoc
class _$ActivityLinkModelCopyWithImpl<$Res>
    implements $ActivityLinkModelCopyWith<$Res> {
  _$ActivityLinkModelCopyWithImpl(this._self, this._then);

  final ActivityLinkModel _self;
  final $Res Function(ActivityLinkModel) _then;

/// Create a copy of ActivityLinkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? src = null,Object? subject = null,}) {
  return _then(_self.copyWith(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityLinkModel].
extension ActivityLinkModelPatterns on ActivityLinkModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityLinkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityLinkModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityLinkModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivityLinkModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityLinkModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityLinkModel() when $default != null:
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
case _ActivityLinkModel() when $default != null:
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
case _ActivityLinkModel():
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
case _ActivityLinkModel() when $default != null:
return $default(_that.src,_that.subject);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityLinkModel extends ActivityLinkModel {
  const _ActivityLinkModel({this.src = '', this.subject = ''}): super._();
  factory _ActivityLinkModel.fromJson(Map<String, dynamic> json) => _$ActivityLinkModelFromJson(json);

@override@JsonKey() final  String src;
@override@JsonKey() final  String subject;

/// Create a copy of ActivityLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityLinkModelCopyWith<_ActivityLinkModel> get copyWith => __$ActivityLinkModelCopyWithImpl<_ActivityLinkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityLinkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityLinkModel&&(identical(other.src, src) || other.src == src)&&(identical(other.subject, subject) || other.subject == subject));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,src,subject);

@override
String toString() {
  return 'ActivityLinkModel(src: $src, subject: $subject)';
}


}

/// @nodoc
abstract mixin class _$ActivityLinkModelCopyWith<$Res> implements $ActivityLinkModelCopyWith<$Res> {
  factory _$ActivityLinkModelCopyWith(_ActivityLinkModel value, $Res Function(_ActivityLinkModel) _then) = __$ActivityLinkModelCopyWithImpl;
@override @useResult
$Res call({
 String src, String subject
});




}
/// @nodoc
class __$ActivityLinkModelCopyWithImpl<$Res>
    implements _$ActivityLinkModelCopyWith<$Res> {
  __$ActivityLinkModelCopyWithImpl(this._self, this._then);

  final _ActivityLinkModel _self;
  final $Res Function(_ActivityLinkModel) _then;

/// Create a copy of ActivityLinkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? src = null,Object? subject = null,}) {
  return _then(_ActivityLinkModel(
src: null == src ? _self.src : src // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ActivityModel {

 int get id; String get title; String get description; String get begin; String get end; String get posted; String get modified; String get url; String get address; String get distric; String get nlat; String get elong; String get organizer;@JsonKey(name: 'co_rganizer') String get coRganizer; String get contact; String get tel; String get ticket; String get traffic; String get parking; List<ActivityLinkModel> get links;
/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivityModelCopyWith<ActivityModel> get copyWith => _$ActivityModelCopyWithImpl<ActivityModel>(this as ActivityModel, _$identity);

  /// Serializes this ActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.begin, begin) || other.begin == begin)&&(identical(other.end, end) || other.end == end)&&(identical(other.posted, posted) || other.posted == posted)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.coRganizer, coRganizer) || other.coRganizer == coRganizer)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.traffic, traffic) || other.traffic == traffic)&&(identical(other.parking, parking) || other.parking == parking)&&const DeepCollectionEquality().equals(other.links, links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,begin,end,posted,modified,url,address,distric,nlat,elong,organizer,coRganizer,contact,tel,ticket,traffic,parking,const DeepCollectionEquality().hash(links)]);

@override
String toString() {
  return 'ActivityModel(id: $id, title: $title, description: $description, begin: $begin, end: $end, posted: $posted, modified: $modified, url: $url, address: $address, distric: $distric, nlat: $nlat, elong: $elong, organizer: $organizer, coRganizer: $coRganizer, contact: $contact, tel: $tel, ticket: $ticket, traffic: $traffic, parking: $parking, links: $links)';
}


}

/// @nodoc
abstract mixin class $ActivityModelCopyWith<$Res>  {
  factory $ActivityModelCopyWith(ActivityModel value, $Res Function(ActivityModel) _then) = _$ActivityModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String description, String begin, String end, String posted, String modified, String url, String address, String distric, String nlat, String elong, String organizer,@JsonKey(name: 'co_rganizer') String coRganizer, String contact, String tel, String ticket, String traffic, String parking, List<ActivityLinkModel> links
});




}
/// @nodoc
class _$ActivityModelCopyWithImpl<$Res>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._self, this._then);

  final ActivityModel _self;
  final $Res Function(ActivityModel) _then;

/// Create a copy of ActivityModel
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
as List<ActivityLinkModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivityModel].
extension ActivityModelPatterns on ActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String begin,  String end,  String posted,  String modified,  String url,  String address,  String distric,  String nlat,  String elong,  String organizer, @JsonKey(name: 'co_rganizer')  String coRganizer,  String contact,  String tel,  String ticket,  String traffic,  String parking,  List<ActivityLinkModel> links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String description,  String begin,  String end,  String posted,  String modified,  String url,  String address,  String distric,  String nlat,  String elong,  String organizer, @JsonKey(name: 'co_rganizer')  String coRganizer,  String contact,  String tel,  String ticket,  String traffic,  String parking,  List<ActivityLinkModel> links)  $default,) {final _that = this;
switch (_that) {
case _ActivityModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String description,  String begin,  String end,  String posted,  String modified,  String url,  String address,  String distric,  String nlat,  String elong,  String organizer, @JsonKey(name: 'co_rganizer')  String coRganizer,  String contact,  String tel,  String ticket,  String traffic,  String parking,  List<ActivityLinkModel> links)?  $default,) {final _that = this;
switch (_that) {
case _ActivityModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.begin,_that.end,_that.posted,_that.modified,_that.url,_that.address,_that.distric,_that.nlat,_that.elong,_that.organizer,_that.coRganizer,_that.contact,_that.tel,_that.ticket,_that.traffic,_that.parking,_that.links);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ActivityModel extends ActivityModel {
  const _ActivityModel({this.id = 0, this.title = '', this.description = '', this.begin = '', this.end = '', this.posted = '', this.modified = '', this.url = '', this.address = '', this.distric = '', this.nlat = '', this.elong = '', this.organizer = '', @JsonKey(name: 'co_rganizer') this.coRganizer = '', this.contact = '', this.tel = '', this.ticket = '', this.traffic = '', this.parking = '', final  List<ActivityLinkModel> links = const []}): _links = links,super._();
  factory _ActivityModel.fromJson(Map<String, dynamic> json) => _$ActivityModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String begin;
@override@JsonKey() final  String end;
@override@JsonKey() final  String posted;
@override@JsonKey() final  String modified;
@override@JsonKey() final  String url;
@override@JsonKey() final  String address;
@override@JsonKey() final  String distric;
@override@JsonKey() final  String nlat;
@override@JsonKey() final  String elong;
@override@JsonKey() final  String organizer;
@override@JsonKey(name: 'co_rganizer') final  String coRganizer;
@override@JsonKey() final  String contact;
@override@JsonKey() final  String tel;
@override@JsonKey() final  String ticket;
@override@JsonKey() final  String traffic;
@override@JsonKey() final  String parking;
 final  List<ActivityLinkModel> _links;
@override@JsonKey() List<ActivityLinkModel> get links {
  if (_links is EqualUnmodifiableListView) return _links;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_links);
}


/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivityModelCopyWith<_ActivityModel> get copyWith => __$ActivityModelCopyWithImpl<_ActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.begin, begin) || other.begin == begin)&&(identical(other.end, end) || other.end == end)&&(identical(other.posted, posted) || other.posted == posted)&&(identical(other.modified, modified) || other.modified == modified)&&(identical(other.url, url) || other.url == url)&&(identical(other.address, address) || other.address == address)&&(identical(other.distric, distric) || other.distric == distric)&&(identical(other.nlat, nlat) || other.nlat == nlat)&&(identical(other.elong, elong) || other.elong == elong)&&(identical(other.organizer, organizer) || other.organizer == organizer)&&(identical(other.coRganizer, coRganizer) || other.coRganizer == coRganizer)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.tel, tel) || other.tel == tel)&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.traffic, traffic) || other.traffic == traffic)&&(identical(other.parking, parking) || other.parking == parking)&&const DeepCollectionEquality().equals(other._links, _links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,begin,end,posted,modified,url,address,distric,nlat,elong,organizer,coRganizer,contact,tel,ticket,traffic,parking,const DeepCollectionEquality().hash(_links)]);

@override
String toString() {
  return 'ActivityModel(id: $id, title: $title, description: $description, begin: $begin, end: $end, posted: $posted, modified: $modified, url: $url, address: $address, distric: $distric, nlat: $nlat, elong: $elong, organizer: $organizer, coRganizer: $coRganizer, contact: $contact, tel: $tel, ticket: $ticket, traffic: $traffic, parking: $parking, links: $links)';
}


}

/// @nodoc
abstract mixin class _$ActivityModelCopyWith<$Res> implements $ActivityModelCopyWith<$Res> {
  factory _$ActivityModelCopyWith(_ActivityModel value, $Res Function(_ActivityModel) _then) = __$ActivityModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String description, String begin, String end, String posted, String modified, String url, String address, String distric, String nlat, String elong, String organizer,@JsonKey(name: 'co_rganizer') String coRganizer, String contact, String tel, String ticket, String traffic, String parking, List<ActivityLinkModel> links
});




}
/// @nodoc
class __$ActivityModelCopyWithImpl<$Res>
    implements _$ActivityModelCopyWith<$Res> {
  __$ActivityModelCopyWithImpl(this._self, this._then);

  final _ActivityModel _self;
  final $Res Function(_ActivityModel) _then;

/// Create a copy of ActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? begin = null,Object? end = null,Object? posted = null,Object? modified = null,Object? url = null,Object? address = null,Object? distric = null,Object? nlat = null,Object? elong = null,Object? organizer = null,Object? coRganizer = null,Object? contact = null,Object? tel = null,Object? ticket = null,Object? traffic = null,Object? parking = null,Object? links = null,}) {
  return _then(_ActivityModel(
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
as List<ActivityLinkModel>,
  ));
}


}

// dart format on
