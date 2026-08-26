// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidateVersionRequestModel _$ValidateVersionRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateVersionRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateVersionRequestModel {
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateVersionRequestModelCopyWith<ValidateVersionRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateVersionRequestModelCopyWith<$Res> {
  factory $ValidateVersionRequestModelCopyWith(
          ValidateVersionRequestModel value,
          $Res Function(ValidateVersionRequestModel) then) =
      _$ValidateVersionRequestModelCopyWithImpl<$Res,
          ValidateVersionRequestModel>;
  @useResult
  $Res call({String? version});
}

/// @nodoc
class _$ValidateVersionRequestModelCopyWithImpl<$Res,
        $Val extends ValidateVersionRequestModel>
    implements $ValidateVersionRequestModelCopyWith<$Res> {
  _$ValidateVersionRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidateVersionRequestModelImplCopyWith<$Res>
    implements $ValidateVersionRequestModelCopyWith<$Res> {
  factory _$$ValidateVersionRequestModelImplCopyWith(
          _$ValidateVersionRequestModelImpl value,
          $Res Function(_$ValidateVersionRequestModelImpl) then) =
      __$$ValidateVersionRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? version});
}

/// @nodoc
class __$$ValidateVersionRequestModelImplCopyWithImpl<$Res>
    extends _$ValidateVersionRequestModelCopyWithImpl<$Res,
        _$ValidateVersionRequestModelImpl>
    implements _$$ValidateVersionRequestModelImplCopyWith<$Res> {
  __$$ValidateVersionRequestModelImplCopyWithImpl(
      _$ValidateVersionRequestModelImpl _value,
      $Res Function(_$ValidateVersionRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
  }) {
    return _then(_$ValidateVersionRequestModelImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateVersionRequestModelImpl
    implements _ValidateVersionRequestModel {
  const _$ValidateVersionRequestModelImpl({required this.version});

  factory _$ValidateVersionRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidateVersionRequestModelImplFromJson(json);

  @override
  final String? version;

  @override
  String toString() {
    return 'ValidateVersionRequestModel(version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateVersionRequestModelImpl &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateVersionRequestModelImplCopyWith<_$ValidateVersionRequestModelImpl>
      get copyWith => __$$ValidateVersionRequestModelImplCopyWithImpl<
          _$ValidateVersionRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateVersionRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateVersionRequestModel
    implements ValidateVersionRequestModel {
  const factory _ValidateVersionRequestModel({required final String? version}) =
      _$ValidateVersionRequestModelImpl;

  factory _ValidateVersionRequestModel.fromJson(Map<String, dynamic> json) =
      _$ValidateVersionRequestModelImpl.fromJson;

  @override
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$ValidateVersionRequestModelImplCopyWith<_$ValidateVersionRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterUserRequestModel _$RegisterUserRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterUserRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterUserRequestModel {
  List<String>? get designations => throw _privateConstructorUsedError;
  RegisterChargesRequestModel? get charges =>
      throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  RegisterLocationRequestModel? get location =>
      throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUserRequestModelCopyWith<RegisterUserRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserRequestModelCopyWith<$Res> {
  factory $RegisterUserRequestModelCopyWith(RegisterUserRequestModel value,
          $Res Function(RegisterUserRequestModel) then) =
      _$RegisterUserRequestModelCopyWithImpl<$Res, RegisterUserRequestModel>;
  @useResult
  $Res call(
      {List<String>? designations,
      RegisterChargesRequestModel? charges,
      String? name,
      String? dob,
      String? gender,
      RegisterLocationRequestModel? location,
      String? referralCode});

  $RegisterChargesRequestModelCopyWith<$Res>? get charges;
  $RegisterLocationRequestModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$RegisterUserRequestModelCopyWithImpl<$Res,
        $Val extends RegisterUserRequestModel>
    implements $RegisterUserRequestModelCopyWith<$Res> {
  _$RegisterUserRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designations = freezed,
    Object? charges = freezed,
    Object? name = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_value.copyWith(
      designations: freezed == designations
          ? _value.designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as RegisterChargesRequestModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RegisterLocationRequestModel?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterChargesRequestModelCopyWith<$Res>? get charges {
    if (_value.charges == null) {
      return null;
    }

    return $RegisterChargesRequestModelCopyWith<$Res>(_value.charges!, (value) {
      return _then(_value.copyWith(charges: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterLocationRequestModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $RegisterLocationRequestModelCopyWith<$Res>(_value.location!,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterUserRequestModelImplCopyWith<$Res>
    implements $RegisterUserRequestModelCopyWith<$Res> {
  factory _$$RegisterUserRequestModelImplCopyWith(
          _$RegisterUserRequestModelImpl value,
          $Res Function(_$RegisterUserRequestModelImpl) then) =
      __$$RegisterUserRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? designations,
      RegisterChargesRequestModel? charges,
      String? name,
      String? dob,
      String? gender,
      RegisterLocationRequestModel? location,
      String? referralCode});

  @override
  $RegisterChargesRequestModelCopyWith<$Res>? get charges;
  @override
  $RegisterLocationRequestModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$RegisterUserRequestModelImplCopyWithImpl<$Res>
    extends _$RegisterUserRequestModelCopyWithImpl<$Res,
        _$RegisterUserRequestModelImpl>
    implements _$$RegisterUserRequestModelImplCopyWith<$Res> {
  __$$RegisterUserRequestModelImplCopyWithImpl(
      _$RegisterUserRequestModelImpl _value,
      $Res Function(_$RegisterUserRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? designations = freezed,
    Object? charges = freezed,
    Object? name = freezed,
    Object? dob = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_$RegisterUserRequestModelImpl(
      designations: freezed == designations
          ? _value._designations
          : designations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as RegisterChargesRequestModel?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as RegisterLocationRequestModel?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUserRequestModelImpl implements _RegisterUserRequestModel {
  const _$RegisterUserRequestModelImpl(
      {final List<String>? designations,
      this.charges,
      this.name,
      this.dob,
      this.gender,
      this.location,
      this.referralCode})
      : _designations = designations;

  factory _$RegisterUserRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUserRequestModelImplFromJson(json);

  final List<String>? _designations;
  @override
  List<String>? get designations {
    final value = _designations;
    if (value == null) return null;
    if (_designations is EqualUnmodifiableListView) return _designations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RegisterChargesRequestModel? charges;
  @override
  final String? name;
  @override
  final String? dob;
  @override
  final String? gender;
  @override
  final RegisterLocationRequestModel? location;
  @override
  final String? referralCode;

  @override
  String toString() {
    return 'RegisterUserRequestModel(designations: $designations, charges: $charges, name: $name, dob: $dob, gender: $gender, location: $location, referralCode: $referralCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserRequestModelImpl &&
            const DeepCollectionEquality()
                .equals(other._designations, _designations) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_designations),
      charges,
      name,
      dob,
      gender,
      location,
      referralCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserRequestModelImplCopyWith<_$RegisterUserRequestModelImpl>
      get copyWith => __$$RegisterUserRequestModelImplCopyWithImpl<
          _$RegisterUserRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUserRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterUserRequestModel implements RegisterUserRequestModel {
  const factory _RegisterUserRequestModel(
      {final List<String>? designations,
      final RegisterChargesRequestModel? charges,
      final String? name,
      final String? dob,
      final String? gender,
      final RegisterLocationRequestModel? location,
      final String? referralCode}) = _$RegisterUserRequestModelImpl;

  factory _RegisterUserRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegisterUserRequestModelImpl.fromJson;

  @override
  List<String>? get designations;
  @override
  RegisterChargesRequestModel? get charges;
  @override
  String? get name;
  @override
  String? get dob;
  @override
  String? get gender;
  @override
  RegisterLocationRequestModel? get location;
  @override
  String? get referralCode;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUserRequestModelImplCopyWith<_$RegisterUserRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterChargesRequestModel _$RegisterChargesRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterChargesRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterChargesRequestModel {
  int? get perHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterChargesRequestModelCopyWith<RegisterChargesRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterChargesRequestModelCopyWith<$Res> {
  factory $RegisterChargesRequestModelCopyWith(
          RegisterChargesRequestModel value,
          $Res Function(RegisterChargesRequestModel) then) =
      _$RegisterChargesRequestModelCopyWithImpl<$Res,
          RegisterChargesRequestModel>;
  @useResult
  $Res call({int? perHour});
}

/// @nodoc
class _$RegisterChargesRequestModelCopyWithImpl<$Res,
        $Val extends RegisterChargesRequestModel>
    implements $RegisterChargesRequestModelCopyWith<$Res> {
  _$RegisterChargesRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perHour = freezed,
  }) {
    return _then(_value.copyWith(
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterChargesRequestModelImplCopyWith<$Res>
    implements $RegisterChargesRequestModelCopyWith<$Res> {
  factory _$$RegisterChargesRequestModelImplCopyWith(
          _$RegisterChargesRequestModelImpl value,
          $Res Function(_$RegisterChargesRequestModelImpl) then) =
      __$$RegisterChargesRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? perHour});
}

/// @nodoc
class __$$RegisterChargesRequestModelImplCopyWithImpl<$Res>
    extends _$RegisterChargesRequestModelCopyWithImpl<$Res,
        _$RegisterChargesRequestModelImpl>
    implements _$$RegisterChargesRequestModelImplCopyWith<$Res> {
  __$$RegisterChargesRequestModelImplCopyWithImpl(
      _$RegisterChargesRequestModelImpl _value,
      $Res Function(_$RegisterChargesRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perHour = freezed,
  }) {
    return _then(_$RegisterChargesRequestModelImpl(
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterChargesRequestModelImpl
    implements _RegisterChargesRequestModel {
  const _$RegisterChargesRequestModelImpl({this.perHour});

  factory _$RegisterChargesRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegisterChargesRequestModelImplFromJson(json);

  @override
  final int? perHour;

  @override
  String toString() {
    return 'RegisterChargesRequestModel(perHour: $perHour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterChargesRequestModelImpl &&
            (identical(other.perHour, perHour) || other.perHour == perHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, perHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterChargesRequestModelImplCopyWith<_$RegisterChargesRequestModelImpl>
      get copyWith => __$$RegisterChargesRequestModelImplCopyWithImpl<
          _$RegisterChargesRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterChargesRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterChargesRequestModel
    implements RegisterChargesRequestModel {
  const factory _RegisterChargesRequestModel({final int? perHour}) =
      _$RegisterChargesRequestModelImpl;

  factory _RegisterChargesRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegisterChargesRequestModelImpl.fromJson;

  @override
  int? get perHour;
  @override
  @JsonKey(ignore: true)
  _$$RegisterChargesRequestModelImplCopyWith<_$RegisterChargesRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterLocationRequestModel _$RegisterLocationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterLocationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterLocationRequestModel {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get landMark => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  int? get pinCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterLocationRequestModelCopyWith<RegisterLocationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterLocationRequestModelCopyWith<$Res> {
  factory $RegisterLocationRequestModelCopyWith(
          RegisterLocationRequestModel value,
          $Res Function(RegisterLocationRequestModel) then) =
      _$RegisterLocationRequestModelCopyWithImpl<$Res,
          RegisterLocationRequestModel>;
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? landMark,
      String? city,
      String? state,
      int? pinCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$RegisterLocationRequestModelCopyWithImpl<$Res,
        $Val extends RegisterLocationRequestModel>
    implements $RegisterLocationRequestModelCopyWith<$Res> {
  _$RegisterLocationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? landMark = freezed,
    Object? city = freezed,
    Object? state = freezed,
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
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterLocationRequestModelImplCopyWith<$Res>
    implements $RegisterLocationRequestModelCopyWith<$Res> {
  factory _$$RegisterLocationRequestModelImplCopyWith(
          _$RegisterLocationRequestModelImpl value,
          $Res Function(_$RegisterLocationRequestModelImpl) then) =
      __$$RegisterLocationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? landMark,
      String? city,
      String? state,
      int? pinCode,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$RegisterLocationRequestModelImplCopyWithImpl<$Res>
    extends _$RegisterLocationRequestModelCopyWithImpl<$Res,
        _$RegisterLocationRequestModelImpl>
    implements _$$RegisterLocationRequestModelImplCopyWith<$Res> {
  __$$RegisterLocationRequestModelImplCopyWithImpl(
      _$RegisterLocationRequestModelImpl _value,
      $Res Function(_$RegisterLocationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? landMark = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$RegisterLocationRequestModelImpl(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      landMark: freezed == landMark
          ? _value.landMark
          : landMark // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterLocationRequestModelImpl
    implements _RegisterLocationRequestModel {
  const _$RegisterLocationRequestModelImpl(
      {this.address1,
      this.address2,
      this.landMark,
      this.city,
      this.state,
      this.pinCode,
      this.latitude,
      this.longitude});

  factory _$RegisterLocationRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegisterLocationRequestModelImplFromJson(json);

  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? landMark;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final int? pinCode;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'RegisterLocationRequestModel(address1: $address1, address2: $address2, landMark: $landMark, city: $city, state: $state, pinCode: $pinCode, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterLocationRequestModelImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.landMark, landMark) ||
                other.landMark == landMark) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address1, address2, landMark,
      city, state, pinCode, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterLocationRequestModelImplCopyWith<
          _$RegisterLocationRequestModelImpl>
      get copyWith => __$$RegisterLocationRequestModelImplCopyWithImpl<
          _$RegisterLocationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterLocationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterLocationRequestModel
    implements RegisterLocationRequestModel {
  const factory _RegisterLocationRequestModel(
      {final String? address1,
      final String? address2,
      final String? landMark,
      final String? city,
      final String? state,
      final int? pinCode,
      final double? latitude,
      final double? longitude}) = _$RegisterLocationRequestModelImpl;

  factory _RegisterLocationRequestModel.fromJson(Map<String, dynamic> json) =
      _$RegisterLocationRequestModelImpl.fromJson;

  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get landMark;
  @override
  String? get city;
  @override
  String? get state;
  @override
  int? get pinCode;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$RegisterLocationRequestModelImplCopyWith<
          _$RegisterLocationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
