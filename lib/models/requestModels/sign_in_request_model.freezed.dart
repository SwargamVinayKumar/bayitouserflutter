// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignInRequestModel _$SignInRequestModelFromJson(Map<String, dynamic> json) {
  return _SignInRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SignInRequestModel {
  String? get key => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  dynamic get deviceDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInRequestModelCopyWith<SignInRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInRequestModelCopyWith<$Res> {
  factory $SignInRequestModelCopyWith(
          SignInRequestModel value, $Res Function(SignInRequestModel) then) =
      _$SignInRequestModelCopyWithImpl<$Res, SignInRequestModel>;
  @useResult
  $Res call(
      {String? key, String? password, String? version, dynamic deviceDetails});
}

/// @nodoc
class _$SignInRequestModelCopyWithImpl<$Res, $Val extends SignInRequestModel>
    implements $SignInRequestModelCopyWith<$Res> {
  _$SignInRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? password = freezed,
    Object? version = freezed,
    Object? deviceDetails = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceDetails: freezed == deviceDetails
          ? _value.deviceDetails
          : deviceDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInRequestModelImplCopyWith<$Res>
    implements $SignInRequestModelCopyWith<$Res> {
  factory _$$SignInRequestModelImplCopyWith(_$SignInRequestModelImpl value,
          $Res Function(_$SignInRequestModelImpl) then) =
      __$$SignInRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key, String? password, String? version, dynamic deviceDetails});
}

/// @nodoc
class __$$SignInRequestModelImplCopyWithImpl<$Res>
    extends _$SignInRequestModelCopyWithImpl<$Res, _$SignInRequestModelImpl>
    implements _$$SignInRequestModelImplCopyWith<$Res> {
  __$$SignInRequestModelImplCopyWithImpl(_$SignInRequestModelImpl _value,
      $Res Function(_$SignInRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? password = freezed,
    Object? version = freezed,
    Object? deviceDetails = freezed,
  }) {
    return _then(_$SignInRequestModelImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceDetails: freezed == deviceDetails
          ? _value.deviceDetails
          : deviceDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInRequestModelImpl implements _SignInRequestModel {
  const _$SignInRequestModelImpl(
      {this.key, this.password, this.version, this.deviceDetails});

  factory _$SignInRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInRequestModelImplFromJson(json);

  @override
  final String? key;
  @override
  final String? password;
  @override
  final String? version;
  @override
  final dynamic deviceDetails;

  @override
  String toString() {
    return 'SignInRequestModel(key: $key, password: $password, version: $version, deviceDetails: $deviceDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequestModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other.deviceDetails, deviceDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, password, version,
      const DeepCollectionEquality().hash(deviceDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestModelImplCopyWith<_$SignInRequestModelImpl> get copyWith =>
      __$$SignInRequestModelImplCopyWithImpl<_$SignInRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SignInRequestModel implements SignInRequestModel {
  const factory _SignInRequestModel(
      {final String? key,
      final String? password,
      final String? version,
      final dynamic deviceDetails}) = _$SignInRequestModelImpl;

  factory _SignInRequestModel.fromJson(Map<String, dynamic> json) =
      _$SignInRequestModelImpl.fromJson;

  @override
  String? get key;
  @override
  String? get password;
  @override
  String? get version;
  @override
  dynamic get deviceDetails;
  @override
  @JsonKey(ignore: true)
  _$$SignInRequestModelImplCopyWith<_$SignInRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
