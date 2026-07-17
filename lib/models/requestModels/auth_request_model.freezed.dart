// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidateVersionRequestModel {

 String? get version;
/// Create a copy of ValidateVersionRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidateVersionRequestModelCopyWith<ValidateVersionRequestModel> get copyWith => _$ValidateVersionRequestModelCopyWithImpl<ValidateVersionRequestModel>(this as ValidateVersionRequestModel, _$identity);

  /// Serializes this ValidateVersionRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidateVersionRequestModel&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'ValidateVersionRequestModel(version: $version)';
}


}

/// @nodoc
abstract mixin class $ValidateVersionRequestModelCopyWith<$Res>  {
  factory $ValidateVersionRequestModelCopyWith(ValidateVersionRequestModel value, $Res Function(ValidateVersionRequestModel) _then) = _$ValidateVersionRequestModelCopyWithImpl;
@useResult
$Res call({
 String? version
});




}
/// @nodoc
class _$ValidateVersionRequestModelCopyWithImpl<$Res>
    implements $ValidateVersionRequestModelCopyWith<$Res> {
  _$ValidateVersionRequestModelCopyWithImpl(this._self, this._then);

  final ValidateVersionRequestModel _self;
  final $Res Function(ValidateVersionRequestModel) _then;

/// Create a copy of ValidateVersionRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = freezed,}) {
  return _then(_self.copyWith(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ValidateVersionRequestModel].
extension ValidateVersionRequestModelPatterns on ValidateVersionRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValidateVersionRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValidateVersionRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValidateVersionRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ValidateVersionRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValidateVersionRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ValidateVersionRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValidateVersionRequestModel() when $default != null:
return $default(_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? version)  $default,) {final _that = this;
switch (_that) {
case _ValidateVersionRequestModel():
return $default(_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? version)?  $default,) {final _that = this;
switch (_that) {
case _ValidateVersionRequestModel() when $default != null:
return $default(_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValidateVersionRequestModel implements ValidateVersionRequestModel {
  const _ValidateVersionRequestModel({required this.version});
  factory _ValidateVersionRequestModel.fromJson(Map<String, dynamic> json) => _$ValidateVersionRequestModelFromJson(json);

@override final  String? version;

/// Create a copy of ValidateVersionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValidateVersionRequestModelCopyWith<_ValidateVersionRequestModel> get copyWith => __$ValidateVersionRequestModelCopyWithImpl<_ValidateVersionRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValidateVersionRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValidateVersionRequestModel&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version);

@override
String toString() {
  return 'ValidateVersionRequestModel(version: $version)';
}


}

/// @nodoc
abstract mixin class _$ValidateVersionRequestModelCopyWith<$Res> implements $ValidateVersionRequestModelCopyWith<$Res> {
  factory _$ValidateVersionRequestModelCopyWith(_ValidateVersionRequestModel value, $Res Function(_ValidateVersionRequestModel) _then) = __$ValidateVersionRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String? version
});




}
/// @nodoc
class __$ValidateVersionRequestModelCopyWithImpl<$Res>
    implements _$ValidateVersionRequestModelCopyWith<$Res> {
  __$ValidateVersionRequestModelCopyWithImpl(this._self, this._then);

  final _ValidateVersionRequestModel _self;
  final $Res Function(_ValidateVersionRequestModel) _then;

/// Create a copy of ValidateVersionRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = freezed,}) {
  return _then(_ValidateVersionRequestModel(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
