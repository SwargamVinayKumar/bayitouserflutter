// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) {
  return _SignUpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestModel {
  int? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get confirmPassword => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  List<String>? get designations => throw _privateConstructorUsedError;
  ChargesModel? get businessLicence => throw _privateConstructorUsedError;
  LocationRequestModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestModelCopyWith<SignUpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestModelCopyWith<$Res> {
  factory $SignUpRequestModelCopyWith(
          SignUpRequestModel value, $Res Function(SignUpRequestModel) then) =
      _$SignUpRequestModelCopyWithImpl<$Res, SignUpRequestModel>;
  @useResult
  $Res call(
      {int? mobile,
      String? name,
      String? email,
      String? password,
      String? confirmPassword,
      String? profilePic,
      int? otp,
      List<String>? designations,
      ChargesModel? businessLicence,
      LocationRequestModel? location});

  $ChargesModelCopyWith<$Res>? get businessLicence;
  $LocationRequestModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$SignUpRequestModelCopyWithImpl<$Res, $Val extends SignUpRequestModel>
    implements $SignUpRequestModelCopyWith<$Res> {
  _$SignUpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? profilePic = freezed,
    Object? otp = freezed,
    Object? designations = freezed,
    Object? businessLicence = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      designations: freezed == designations
          ? _value.designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      businessLicence: freezed == businessLicence
          ? _value.businessLicence
          : businessLicence // ignore: cast_nullable_to_non_nullable
              as ChargesModel?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationRequestModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChargesModelCopyWith<$Res>? get businessLicence {
    if (_value.businessLicence == null) {
      return null;
    }

    return $ChargesModelCopyWith<$Res>(_value.businessLicence!, (value) {
      return _then(_value.copyWith(businessLicence: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationRequestModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationRequestModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpRequestModelImplCopyWith<$Res>
    implements $SignUpRequestModelCopyWith<$Res> {
  factory _$$SignUpRequestModelImplCopyWith(_$SignUpRequestModelImpl value,
          $Res Function(_$SignUpRequestModelImpl) then) =
      __$$SignUpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? mobile,
      String? name,
      String? email,
      String? password,
      String? confirmPassword,
      String? profilePic,
      int? otp,
      List<String>? designations,
      ChargesModel? businessLicence,
      LocationRequestModel? location});

  @override
  $ChargesModelCopyWith<$Res>? get businessLicence;
  @override
  $LocationRequestModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$SignUpRequestModelImplCopyWithImpl<$Res>
    extends _$SignUpRequestModelCopyWithImpl<$Res, _$SignUpRequestModelImpl>
    implements _$$SignUpRequestModelImplCopyWith<$Res> {
  __$$SignUpRequestModelImplCopyWithImpl(_$SignUpRequestModelImpl _value,
      $Res Function(_$SignUpRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? profilePic = freezed,
    Object? otp = freezed,
    Object? designations = freezed,
    Object? businessLicence = freezed,
    Object? location = freezed,
  }) {
    return _then(_$SignUpRequestModelImpl(
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: freezed == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      designations: freezed == designations
          ? _value._designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      businessLicence: freezed == businessLicence
          ? _value.businessLicence
          : businessLicence // ignore: cast_nullable_to_non_nullable
              as ChargesModel?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationRequestModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestModelImpl implements _SignUpRequestModel {
  const _$SignUpRequestModelImpl(
      {this.mobile,
      this.name,
      this.email,
      this.password,
      this.confirmPassword,
      this.profilePic,
      this.otp,
      final List<String>? designations = const [],
      this.businessLicence,
      this.location})
      : _designations = designations;

  factory _$SignUpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestModelImplFromJson(json);

  @override
  final int? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? confirmPassword;
  @override
  final String? profilePic;
  @override
  final int? otp;
  final List<String>? _designations;
  @override
  @JsonKey()
  List<String>? get designations {
    final value = _designations;
    if (value == null) return null;
    if (_designations is EqualUnmodifiableListView) return _designations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ChargesModel? businessLicence;
  @override
  final LocationRequestModel? location;

  @override
  String toString() {
    return 'SignUpRequestModel(mobile: $mobile, name: $name, email: $email, password: $password, confirmPassword: $confirmPassword, profilePic: $profilePic, otp: $otp, designations: $designations, businessLicence: $businessLicence, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestModelImpl &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            const DeepCollectionEquality()
                .equals(other._designations, _designations) &&
            (identical(other.businessLicence, businessLicence) ||
                other.businessLicence == businessLicence) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mobile,
      name,
      email,
      password,
      confirmPassword,
      profilePic,
      otp,
      const DeepCollectionEquality().hash(_designations),
      businessLicence,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestModelImplCopyWith<_$SignUpRequestModelImpl> get copyWith =>
      __$$SignUpRequestModelImplCopyWithImpl<_$SignUpRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestModel implements SignUpRequestModel {
  const factory _SignUpRequestModel(
      {final int? mobile,
      final String? name,
      final String? email,
      final String? password,
      final String? confirmPassword,
      final String? profilePic,
      final int? otp,
      final List<String>? designations,
      final ChargesModel? businessLicence,
      final LocationRequestModel? location}) = _$SignUpRequestModelImpl;

  factory _SignUpRequestModel.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestModelImpl.fromJson;

  @override
  int? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get confirmPassword;
  @override
  String? get profilePic;
  @override
  int? get otp;
  @override
  List<String>? get designations;
  @override
  ChargesModel? get businessLicence;
  @override
  LocationRequestModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$SignUpRequestModelImplCopyWith<_$SignUpRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationRequestModel _$LocationRequestModelFromJson(Map<String, dynamic> json) {
  return _LocationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LocationRequestModel {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get landMark => throw _privateConstructorUsedError;
  String? get pinCode => throw _privateConstructorUsedError;
  String? get latitude => throw _privateConstructorUsedError;
  String? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationRequestModelCopyWith<LocationRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationRequestModelCopyWith<$Res> {
  factory $LocationRequestModelCopyWith(LocationRequestModel value,
          $Res Function(LocationRequestModel) then) =
      _$LocationRequestModelCopyWithImpl<$Res, LocationRequestModel>;
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? landMark,
      String? pinCode,
      String? latitude,
      String? longitude});
}

/// @nodoc
class _$LocationRequestModelCopyWithImpl<$Res,
        $Val extends LocationRequestModel>
    implements $LocationRequestModelCopyWith<$Res> {
  _$LocationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? landMark = freezed,
    Object? pinCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationRequestModelImplCopyWith<$Res>
    implements $LocationRequestModelCopyWith<$Res> {
  factory _$$LocationRequestModelImplCopyWith(_$LocationRequestModelImpl value,
          $Res Function(_$LocationRequestModelImpl) then) =
      __$$LocationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? landMark,
      String? pinCode,
      String? latitude,
      String? longitude});
}

/// @nodoc
class __$$LocationRequestModelImplCopyWithImpl<$Res>
    extends _$LocationRequestModelCopyWithImpl<$Res, _$LocationRequestModelImpl>
    implements _$$LocationRequestModelImplCopyWith<$Res> {
  __$$LocationRequestModelImplCopyWithImpl(_$LocationRequestModelImpl _value,
      $Res Function(_$LocationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? landMark = freezed,
    Object? pinCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationRequestModelImpl(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationRequestModelImpl implements _LocationRequestModel {
  const _$LocationRequestModelImpl(
      {this.address1,
      this.address2,
      this.city,
      this.state,
      this.landMark,
      this.pinCode,
      this.latitude,
      this.longitude});

  factory _$LocationRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationRequestModelImplFromJson(json);

  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? landMark;
  @override
  final String? pinCode;
  @override
  final String? latitude;
  @override
  final String? longitude;

  @override
  String toString() {
    return 'LocationRequestModel(address1: $address1, address2: $address2, city: $city, state: $state, landMark: $landMark, pinCode: $pinCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationRequestModelImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.landMark, landMark) ||
                other.landMark == landMark) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address1, address2, city, state,
      landMark, pinCode, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationRequestModelImplCopyWith<_$LocationRequestModelImpl>
      get copyWith =>
          __$$LocationRequestModelImplCopyWithImpl<_$LocationRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LocationRequestModel implements LocationRequestModel {
  const factory _LocationRequestModel(
      {final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? landMark,
      final String? pinCode,
      final String? latitude,
      final String? longitude}) = _$LocationRequestModelImpl;

  factory _LocationRequestModel.fromJson(Map<String, dynamic> json) =
      _$LocationRequestModelImpl.fromJson;

  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get landMark;
  @override
  String? get pinCode;
  @override
  String? get latitude;
  @override
  String? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationRequestModelImplCopyWith<_$LocationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
