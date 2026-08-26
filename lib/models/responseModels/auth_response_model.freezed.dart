// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponseModel _$ProfileResponseModelFromJson(Map<String, dynamic> json) {
  return _ProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  ProfileData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseModelCopyWith<ProfileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseModelCopyWith<$Res> {
  factory $ProfileResponseModelCopyWith(ProfileResponseModel value,
          $Res Function(ProfileResponseModel) then) =
      _$ProfileResponseModelCopyWithImpl<$Res, ProfileResponseModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? approvalStatus,
      ProfileData? data});

  $ProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileResponseModelCopyWithImpl<$Res,
        $Val extends ProfileResponseModel>
    implements $ProfileResponseModelCopyWith<$Res> {
  _$ProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? approvalStatus = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseModelImplCopyWith<$Res>
    implements $ProfileResponseModelCopyWith<$Res> {
  factory _$$ProfileResponseModelImplCopyWith(_$ProfileResponseModelImpl value,
          $Res Function(_$ProfileResponseModelImpl) then) =
      __$$ProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? approvalStatus,
      ProfileData? data});

  @override
  $ProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileResponseModelImplCopyWithImpl<$Res>
    extends _$ProfileResponseModelCopyWithImpl<$Res, _$ProfileResponseModelImpl>
    implements _$$ProfileResponseModelImplCopyWith<$Res> {
  __$$ProfileResponseModelImplCopyWithImpl(_$ProfileResponseModelImpl _value,
      $Res Function(_$ProfileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? approvalStatus = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProfileResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseModelImpl implements _ProfileResponseModel {
  const _$ProfileResponseModelImpl(
      {this.status, this.message, this.approvalStatus, this.data});

  factory _$ProfileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? approvalStatus;
  @override
  final ProfileData? data;

  @override
  String toString() {
    return 'ProfileResponseModel(status: $status, message: $message, approvalStatus: $approvalStatus, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, message, approvalStatus, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseModelImplCopyWith<_$ProfileResponseModelImpl>
      get copyWith =>
          __$$ProfileResponseModelImplCopyWithImpl<_$ProfileResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponseModel implements ProfileResponseModel {
  const factory _ProfileResponseModel(
      {final int? status,
      final String? message,
      final String? approvalStatus,
      final ProfileData? data}) = _$ProfileResponseModelImpl;

  factory _ProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get approvalStatus;
  @override
  ProfileData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseModelImplCopyWith<_$ProfileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) {
  return _SignInResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SignInResponseDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseModelCopyWith<SignInResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseModelCopyWith<$Res> {
  factory $SignInResponseModelCopyWith(
          SignInResponseModel value, $Res Function(SignInResponseModel) then) =
      _$SignInResponseModelCopyWithImpl<$Res, SignInResponseModel>;
  @useResult
  $Res call({int? status, String? message, SignInResponseDataModel? data});

  $SignInResponseDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SignInResponseModelCopyWithImpl<$Res, $Val extends SignInResponseModel>
    implements $SignInResponseModelCopyWith<$Res> {
  _$SignInResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInResponseDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInResponseDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SignInResponseDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInResponseModelImplCopyWith<$Res>
    implements $SignInResponseModelCopyWith<$Res> {
  factory _$$SignInResponseModelImplCopyWith(_$SignInResponseModelImpl value,
          $Res Function(_$SignInResponseModelImpl) then) =
      __$$SignInResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SignInResponseDataModel? data});

  @override
  $SignInResponseDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SignInResponseModelImplCopyWithImpl<$Res>
    extends _$SignInResponseModelCopyWithImpl<$Res, _$SignInResponseModelImpl>
    implements _$$SignInResponseModelImplCopyWith<$Res> {
  __$$SignInResponseModelImplCopyWithImpl(_$SignInResponseModelImpl _value,
      $Res Function(_$SignInResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SignInResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInResponseDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseModelImpl implements _SignInResponseModel {
  const _$SignInResponseModelImpl({this.status, this.message, this.data});

  factory _$SignInResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SignInResponseDataModel? data;

  @override
  String toString() {
    return 'SignInResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseModelImplCopyWith<_$SignInResponseModelImpl> get copyWith =>
      __$$SignInResponseModelImplCopyWithImpl<_$SignInResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SignInResponseModel implements SignInResponseModel {
  const factory _SignInResponseModel(
      {final int? status,
      final String? message,
      final SignInResponseDataModel? data}) = _$SignInResponseModelImpl;

  factory _SignInResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignInResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SignInResponseDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$SignInResponseModelImplCopyWith<_$SignInResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInResponseDataModel _$SignInResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _SignInResponseDataModel.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseDataModel {
  String? get token => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  ProfileData? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResponseDataModelCopyWith<SignInResponseDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseDataModelCopyWith<$Res> {
  factory $SignInResponseDataModelCopyWith(SignInResponseDataModel value,
          $Res Function(SignInResponseDataModel) then) =
      _$SignInResponseDataModelCopyWithImpl<$Res, SignInResponseDataModel>;
  @useResult
  $Res call(
      {String? token,
      String? page,
      String? approvalStatus,
      ProfileData? details});

  $ProfileDataCopyWith<$Res>? get details;
}

/// @nodoc
class _$SignInResponseDataModelCopyWithImpl<$Res,
        $Val extends SignInResponseDataModel>
    implements $SignInResponseDataModelCopyWith<$Res> {
  _$SignInResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? page = freezed,
    Object? approvalStatus = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInResponseDataModelImplCopyWith<$Res>
    implements $SignInResponseDataModelCopyWith<$Res> {
  factory _$$SignInResponseDataModelImplCopyWith(
          _$SignInResponseDataModelImpl value,
          $Res Function(_$SignInResponseDataModelImpl) then) =
      __$$SignInResponseDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      String? page,
      String? approvalStatus,
      ProfileData? details});

  @override
  $ProfileDataCopyWith<$Res>? get details;
}

/// @nodoc
class __$$SignInResponseDataModelImplCopyWithImpl<$Res>
    extends _$SignInResponseDataModelCopyWithImpl<$Res,
        _$SignInResponseDataModelImpl>
    implements _$$SignInResponseDataModelImplCopyWith<$Res> {
  __$$SignInResponseDataModelImplCopyWithImpl(
      _$SignInResponseDataModelImpl _value,
      $Res Function(_$SignInResponseDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? page = freezed,
    Object? approvalStatus = freezed,
    Object? details = freezed,
  }) {
    return _then(_$SignInResponseDataModelImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseDataModelImpl implements _SignInResponseDataModel {
  const _$SignInResponseDataModelImpl(
      {this.token, this.page, this.approvalStatus, this.details});

  factory _$SignInResponseDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseDataModelImplFromJson(json);

  @override
  final String? token;
  @override
  final String? page;
  @override
  final String? approvalStatus;
  @override
  final ProfileData? details;

  @override
  String toString() {
    return 'SignInResponseDataModel(token: $token, page: $page, approvalStatus: $approvalStatus, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseDataModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, page, approvalStatus, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseDataModelImplCopyWith<_$SignInResponseDataModelImpl>
      get copyWith => __$$SignInResponseDataModelImplCopyWithImpl<
          _$SignInResponseDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseDataModelImplToJson(
      this,
    );
  }
}

abstract class _SignInResponseDataModel implements SignInResponseDataModel {
  const factory _SignInResponseDataModel(
      {final String? token,
      final String? page,
      final String? approvalStatus,
      final ProfileData? details}) = _$SignInResponseDataModelImpl;

  factory _SignInResponseDataModel.fromJson(Map<String, dynamic> json) =
      _$SignInResponseDataModelImpl.fromJson;

  @override
  String? get token;
  @override
  String? get page;
  @override
  String? get approvalStatus;
  @override
  ProfileData? get details;
  @override
  @JsonKey(ignore: true)
  _$$SignInResponseDataModelImplCopyWith<_$SignInResponseDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
mixin _$ProfileData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get outletType => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  ChargesModel? get charges => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  List<DesignationModel>? get tables => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res, ProfileData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? outletType,
      String? approvalStatus,
      String? reason,
      int? mobile,
      String? name,
      String? email,
      String? password,
      ChargesModel? charges,
      LocationModel? location,
      List<DesignationModel>? tables,
      String? createdAt,
      String? updatedAt});

  $ChargesModelCopyWith<$Res>? get charges;
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res, $Val extends ProfileData>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletType = freezed,
    Object? approvalStatus = freezed,
    Object? reason = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? charges = freezed,
    Object? location = freezed,
    Object? tables = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      outletType: freezed == outletType
          ? _value.outletType
          : outletType // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
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
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as ChargesModel?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      tables: freezed == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<DesignationModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChargesModelCopyWith<$Res>? get charges {
    if (_value.charges == null) {
      return null;
    }

    return $ChargesModelCopyWith<$Res>(_value.charges!, (value) {
      return _then(_value.copyWith(charges: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileDataImplCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$$ProfileDataImplCopyWith(
          _$ProfileDataImpl value, $Res Function(_$ProfileDataImpl) then) =
      __$$ProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? outletType,
      String? approvalStatus,
      String? reason,
      int? mobile,
      String? name,
      String? email,
      String? password,
      ChargesModel? charges,
      LocationModel? location,
      List<DesignationModel>? tables,
      String? createdAt,
      String? updatedAt});

  @override
  $ChargesModelCopyWith<$Res>? get charges;
  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ProfileDataImplCopyWithImpl<$Res>
    extends _$ProfileDataCopyWithImpl<$Res, _$ProfileDataImpl>
    implements _$$ProfileDataImplCopyWith<$Res> {
  __$$ProfileDataImplCopyWithImpl(
      _$ProfileDataImpl _value, $Res Function(_$ProfileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletType = freezed,
    Object? approvalStatus = freezed,
    Object? reason = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? charges = freezed,
    Object? location = freezed,
    Object? tables = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProfileDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      outletType: freezed == outletType
          ? _value.outletType
          : outletType // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
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
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as ChargesModel?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      tables: freezed == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<DesignationModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataImpl implements _ProfileData {
  const _$ProfileDataImpl(
      {@JsonKey(name: '_id') this.id,
      this.outletType,
      this.approvalStatus,
      this.reason,
      this.mobile,
      this.name,
      this.email,
      this.password,
      this.charges,
      this.location,
      final List<DesignationModel>? tables,
      this.createdAt,
      this.updatedAt})
      : _tables = tables;

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? outletType;
  @override
  final String? approvalStatus;
  @override
  final String? reason;
  @override
  final int? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final ChargesModel? charges;
  @override
  final LocationModel? location;
  final List<DesignationModel>? _tables;
  @override
  List<DesignationModel>? get tables {
    final value = _tables;
    if (value == null) return null;
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'ProfileData(id: $id, outletType: $outletType, approvalStatus: $approvalStatus, reason: $reason, mobile: $mobile, name: $name, email: $email, password: $password, charges: $charges, location: $location, tables: $tables, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outletType, outletType) ||
                other.outletType == outletType) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      outletType,
      approvalStatus,
      reason,
      mobile,
      name,
      email,
      password,
      charges,
      location,
      const DeepCollectionEquality().hash(_tables),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      __$$ProfileDataImplCopyWithImpl<_$ProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileData implements ProfileData {
  const factory _ProfileData(
      {@JsonKey(name: '_id') final String? id,
      final String? outletType,
      final String? approvalStatus,
      final String? reason,
      final int? mobile,
      final String? name,
      final String? email,
      final String? password,
      final ChargesModel? charges,
      final LocationModel? location,
      final List<DesignationModel>? tables,
      final String? createdAt,
      final String? updatedAt}) = _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get outletType;
  @override
  String? get approvalStatus;
  @override
  String? get reason;
  @override
  int? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get password;
  @override
  ChargesModel? get charges;
  @override
  LocationModel? get location;
  @override
  List<DesignationModel>? get tables;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get landMark => throw _privateConstructorUsedError;
  int? get pinCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  List<dynamic>? get coordinates => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? landMark,
      int? pinCode,
      double? latitude,
      double? longitude,
      List<dynamic>? coordinates,
      @JsonKey(name: '_id') String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

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
    Object? coordinates = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? city,
      String? state,
      String? landMark,
      int? pinCode,
      double? latitude,
      double? longitude,
      List<dynamic>? coordinates,
      @JsonKey(name: '_id') String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
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
    Object? coordinates = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LocationModelImpl(
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
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl implements _LocationModel {
  const _$LocationModelImpl(
      {this.address1,
      this.address2,
      this.city,
      this.state,
      this.landMark,
      this.pinCode,
      this.latitude,
      this.longitude,
      final List<dynamic>? coordinates,
      @JsonKey(name: '_id') this.id,
      this.createdAt,
      this.updatedAt})
      : _coordinates = coordinates;

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

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
  final int? pinCode;
  @override
  final double? latitude;
  @override
  final double? longitude;
  final List<dynamic>? _coordinates;
  @override
  List<dynamic>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LocationModel(address1: $address1, address2: $address2, city: $city, state: $state, landMark: $landMark, pinCode: $pinCode, latitude: $latitude, longitude: $longitude, coordinates: $coordinates, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
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
                other.longitude == longitude) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address1,
      address2,
      city,
      state,
      landMark,
      pinCode,
      latitude,
      longitude,
      const DeepCollectionEquality().hash(_coordinates),
      id,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel implements LocationModel {
  const factory _LocationModel(
      {final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? landMark,
      final int? pinCode,
      final double? latitude,
      final double? longitude,
      final List<dynamic>? coordinates,
      @JsonKey(name: '_id') final String? id,
      final String? createdAt,
      final String? updatedAt}) = _$LocationModelImpl;

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

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
  int? get pinCode;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  List<dynamic>? get coordinates;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidateVersionResponseModel _$ValidateVersionResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateVersionResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateVersionResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ValidateDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateVersionResponseModelCopyWith<ValidateVersionResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateVersionResponseModelCopyWith<$Res> {
  factory $ValidateVersionResponseModelCopyWith(
          ValidateVersionResponseModel value,
          $Res Function(ValidateVersionResponseModel) then) =
      _$ValidateVersionResponseModelCopyWithImpl<$Res,
          ValidateVersionResponseModel>;
  @useResult
  $Res call({int? status, String? message, ValidateDataModel? data});

  $ValidateDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ValidateVersionResponseModelCopyWithImpl<$Res,
        $Val extends ValidateVersionResponseModel>
    implements $ValidateVersionResponseModelCopyWith<$Res> {
  _$ValidateVersionResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ValidateDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidateDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ValidateDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateVersionResponseModelImplCopyWith<$Res>
    implements $ValidateVersionResponseModelCopyWith<$Res> {
  factory _$$ValidateVersionResponseModelImplCopyWith(
          _$ValidateVersionResponseModelImpl value,
          $Res Function(_$ValidateVersionResponseModelImpl) then) =
      __$$ValidateVersionResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, ValidateDataModel? data});

  @override
  $ValidateDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ValidateVersionResponseModelImplCopyWithImpl<$Res>
    extends _$ValidateVersionResponseModelCopyWithImpl<$Res,
        _$ValidateVersionResponseModelImpl>
    implements _$$ValidateVersionResponseModelImplCopyWith<$Res> {
  __$$ValidateVersionResponseModelImplCopyWithImpl(
      _$ValidateVersionResponseModelImpl _value,
      $Res Function(_$ValidateVersionResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ValidateVersionResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ValidateDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateVersionResponseModelImpl
    implements _ValidateVersionResponseModel {
  const _$ValidateVersionResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$ValidateVersionResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ValidateVersionResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final ValidateDataModel? data;

  @override
  String toString() {
    return 'ValidateVersionResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateVersionResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateVersionResponseModelImplCopyWith<
          _$ValidateVersionResponseModelImpl>
      get copyWith => __$$ValidateVersionResponseModelImplCopyWithImpl<
          _$ValidateVersionResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateVersionResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateVersionResponseModel
    implements ValidateVersionResponseModel {
  const factory _ValidateVersionResponseModel(
      {final int? status,
      final String? message,
      final ValidateDataModel? data}) = _$ValidateVersionResponseModelImpl;

  factory _ValidateVersionResponseModel.fromJson(Map<String, dynamic> json) =
      _$ValidateVersionResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  ValidateDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ValidateVersionResponseModelImplCopyWith<
          _$ValidateVersionResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ValidateDataModel _$ValidateDataModelFromJson(Map<String, dynamic> json) {
  return _ValidateDataModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateDataModel {
  bool? get validVersion => throw _privateConstructorUsedError;
  bool? get userBlocked => throw _privateConstructorUsedError;
  String? get page => throw _privateConstructorUsedError;
  ProfileData? get userData => throw _privateConstructorUsedError;
  List<String>? get banners => throw _privateConstructorUsedError;
  List<String>? get outletTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateDataModelCopyWith<ValidateDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateDataModelCopyWith<$Res> {
  factory $ValidateDataModelCopyWith(
          ValidateDataModel value, $Res Function(ValidateDataModel) then) =
      _$ValidateDataModelCopyWithImpl<$Res, ValidateDataModel>;
  @useResult
  $Res call(
      {bool? validVersion,
      bool? userBlocked,
      String? page,
      ProfileData? userData,
      List<String>? banners,
      List<String>? outletTypes});

  $ProfileDataCopyWith<$Res>? get userData;
}

/// @nodoc
class _$ValidateDataModelCopyWithImpl<$Res, $Val extends ValidateDataModel>
    implements $ValidateDataModelCopyWith<$Res> {
  _$ValidateDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validVersion = freezed,
    Object? userBlocked = freezed,
    Object? page = freezed,
    Object? userData = freezed,
    Object? banners = freezed,
    Object? outletTypes = freezed,
  }) {
    return _then(_value.copyWith(
      validVersion: freezed == validVersion
          ? _value.validVersion
          : validVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      userBlocked: freezed == userBlocked
          ? _value.userBlocked
          : userBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      outletTypes: freezed == outletTypes
          ? _value.outletTypes
          : outletTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateDataModelImplCopyWith<$Res>
    implements $ValidateDataModelCopyWith<$Res> {
  factory _$$ValidateDataModelImplCopyWith(_$ValidateDataModelImpl value,
          $Res Function(_$ValidateDataModelImpl) then) =
      __$$ValidateDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? validVersion,
      bool? userBlocked,
      String? page,
      ProfileData? userData,
      List<String>? banners,
      List<String>? outletTypes});

  @override
  $ProfileDataCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$ValidateDataModelImplCopyWithImpl<$Res>
    extends _$ValidateDataModelCopyWithImpl<$Res, _$ValidateDataModelImpl>
    implements _$$ValidateDataModelImplCopyWith<$Res> {
  __$$ValidateDataModelImplCopyWithImpl(_$ValidateDataModelImpl _value,
      $Res Function(_$ValidateDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validVersion = freezed,
    Object? userBlocked = freezed,
    Object? page = freezed,
    Object? userData = freezed,
    Object? banners = freezed,
    Object? outletTypes = freezed,
  }) {
    return _then(_$ValidateDataModelImpl(
      validVersion: freezed == validVersion
          ? _value.validVersion
          : validVersion // ignore: cast_nullable_to_non_nullable
              as bool?,
      userBlocked: freezed == userBlocked
          ? _value.userBlocked
          : userBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      userData: freezed == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as ProfileData?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      outletTypes: freezed == outletTypes
          ? _value._outletTypes
          : outletTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateDataModelImpl implements _ValidateDataModel {
  const _$ValidateDataModelImpl(
      {this.validVersion,
      this.userBlocked,
      this.page,
      this.userData,
      final List<String>? banners,
      final List<String>? outletTypes})
      : _banners = banners,
        _outletTypes = outletTypes;

  factory _$ValidateDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateDataModelImplFromJson(json);

  @override
  final bool? validVersion;
  @override
  final bool? userBlocked;
  @override
  final String? page;
  @override
  final ProfileData? userData;
  final List<String>? _banners;
  @override
  List<String>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _outletTypes;
  @override
  List<String>? get outletTypes {
    final value = _outletTypes;
    if (value == null) return null;
    if (_outletTypes is EqualUnmodifiableListView) return _outletTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ValidateDataModel(validVersion: $validVersion, userBlocked: $userBlocked, page: $page, userData: $userData, banners: $banners, outletTypes: $outletTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateDataModelImpl &&
            (identical(other.validVersion, validVersion) ||
                other.validVersion == validVersion) &&
            (identical(other.userBlocked, userBlocked) ||
                other.userBlocked == userBlocked) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            const DeepCollectionEquality()
                .equals(other._outletTypes, _outletTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      validVersion,
      userBlocked,
      page,
      userData,
      const DeepCollectionEquality().hash(_banners),
      const DeepCollectionEquality().hash(_outletTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateDataModelImplCopyWith<_$ValidateDataModelImpl> get copyWith =>
      __$$ValidateDataModelImplCopyWithImpl<_$ValidateDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateDataModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateDataModel implements ValidateDataModel {
  const factory _ValidateDataModel(
      {final bool? validVersion,
      final bool? userBlocked,
      final String? page,
      final ProfileData? userData,
      final List<String>? banners,
      final List<String>? outletTypes}) = _$ValidateDataModelImpl;

  factory _ValidateDataModel.fromJson(Map<String, dynamic> json) =
      _$ValidateDataModelImpl.fromJson;

  @override
  bool? get validVersion;
  @override
  bool? get userBlocked;
  @override
  String? get page;
  @override
  ProfileData? get userData;
  @override
  List<String>? get banners;
  @override
  List<String>? get outletTypes;
  @override
  @JsonKey(ignore: true)
  _$$ValidateDataModelImplCopyWith<_$ValidateDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DesignationModel _$DesignationModelFromJson(Map<String, dynamic> json) {
  return _DesignationModel.fromJson(json);
}

/// @nodoc
mixin _$DesignationModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationModelCopyWith<DesignationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationModelCopyWith<$Res> {
  factory $DesignationModelCopyWith(
          DesignationModel value, $Res Function(DesignationModel) then) =
      _$DesignationModelCopyWithImpl<$Res, DesignationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? imageUrl,
      String? name,
      String? description});
}

/// @nodoc
class _$DesignationModelCopyWithImpl<$Res, $Val extends DesignationModel>
    implements $DesignationModelCopyWith<$Res> {
  _$DesignationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignationModelImplCopyWith<$Res>
    implements $DesignationModelCopyWith<$Res> {
  factory _$$DesignationModelImplCopyWith(_$DesignationModelImpl value,
          $Res Function(_$DesignationModelImpl) then) =
      __$$DesignationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? imageUrl,
      String? name,
      String? description});
}

/// @nodoc
class __$$DesignationModelImplCopyWithImpl<$Res>
    extends _$DesignationModelCopyWithImpl<$Res, _$DesignationModelImpl>
    implements _$$DesignationModelImplCopyWith<$Res> {
  __$$DesignationModelImplCopyWithImpl(_$DesignationModelImpl _value,
      $Res Function(_$DesignationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$DesignationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignationModelImpl implements _DesignationModel {
  const _$DesignationModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.imageUrl,
      this.name,
      this.description});

  factory _$DesignationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignationModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? imageUrl;
  @override
  final String? name;
  @override
  final String? description;

  @override
  String toString() {
    return 'DesignationModel(id: $id, imageUrl: $imageUrl, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignationModelImplCopyWith<_$DesignationModelImpl> get copyWith =>
      __$$DesignationModelImplCopyWithImpl<_$DesignationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignationModelImplToJson(
      this,
    );
  }
}

abstract class _DesignationModel implements DesignationModel {
  const factory _DesignationModel(
      {@JsonKey(name: '_id') final String? id,
      final String? imageUrl,
      final String? name,
      final String? description}) = _$DesignationModelImpl;

  factory _DesignationModel.fromJson(Map<String, dynamic> json) =
      _$DesignationModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get imageUrl;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$DesignationModelImplCopyWith<_$DesignationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DesignationResponseModel _$DesignationResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DesignationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DesignationResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<DesignationModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationResponseModelCopyWith<DesignationResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationResponseModelCopyWith<$Res> {
  factory $DesignationResponseModelCopyWith(DesignationResponseModel value,
          $Res Function(DesignationResponseModel) then) =
      _$DesignationResponseModelCopyWithImpl<$Res, DesignationResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<DesignationModel>? data});
}

/// @nodoc
class _$DesignationResponseModelCopyWithImpl<$Res,
        $Val extends DesignationResponseModel>
    implements $DesignationResponseModelCopyWith<$Res> {
  _$DesignationResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DesignationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DesignationResponseModelImplCopyWith<$Res>
    implements $DesignationResponseModelCopyWith<$Res> {
  factory _$$DesignationResponseModelImplCopyWith(
          _$DesignationResponseModelImpl value,
          $Res Function(_$DesignationResponseModelImpl) then) =
      __$$DesignationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<DesignationModel>? data});
}

/// @nodoc
class __$$DesignationResponseModelImplCopyWithImpl<$Res>
    extends _$DesignationResponseModelCopyWithImpl<$Res,
        _$DesignationResponseModelImpl>
    implements _$$DesignationResponseModelImplCopyWith<$Res> {
  __$$DesignationResponseModelImplCopyWithImpl(
      _$DesignationResponseModelImpl _value,
      $Res Function(_$DesignationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DesignationResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DesignationModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignationResponseModelImpl implements _DesignationResponseModel {
  const _$DesignationResponseModelImpl(
      {this.status, this.message, final List<DesignationModel>? data})
      : _data = data;

  factory _$DesignationResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignationResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<DesignationModel>? _data;
  @override
  List<DesignationModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DesignationResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignationResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignationResponseModelImplCopyWith<_$DesignationResponseModelImpl>
      get copyWith => __$$DesignationResponseModelImplCopyWithImpl<
          _$DesignationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DesignationResponseModel implements DesignationResponseModel {
  const factory _DesignationResponseModel(
      {final int? status,
      final String? message,
      final List<DesignationModel>? data}) = _$DesignationResponseModelImpl;

  factory _DesignationResponseModel.fromJson(Map<String, dynamic> json) =
      _$DesignationResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<DesignationModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$DesignationResponseModelImplCopyWith<_$DesignationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChargesModel _$ChargesModelFromJson(Map<String, dynamic> json) {
  return _ChargesModel.fromJson(json);
}

/// @nodoc
mixin _$ChargesModel {
  int? get perHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargesModelCopyWith<ChargesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargesModelCopyWith<$Res> {
  factory $ChargesModelCopyWith(
          ChargesModel value, $Res Function(ChargesModel) then) =
      _$ChargesModelCopyWithImpl<$Res, ChargesModel>;
  @useResult
  $Res call({int? perHour});
}

/// @nodoc
class _$ChargesModelCopyWithImpl<$Res, $Val extends ChargesModel>
    implements $ChargesModelCopyWith<$Res> {
  _$ChargesModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ChargesModelImplCopyWith<$Res>
    implements $ChargesModelCopyWith<$Res> {
  factory _$$ChargesModelImplCopyWith(
          _$ChargesModelImpl value, $Res Function(_$ChargesModelImpl) then) =
      __$$ChargesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? perHour});
}

/// @nodoc
class __$$ChargesModelImplCopyWithImpl<$Res>
    extends _$ChargesModelCopyWithImpl<$Res, _$ChargesModelImpl>
    implements _$$ChargesModelImplCopyWith<$Res> {
  __$$ChargesModelImplCopyWithImpl(
      _$ChargesModelImpl _value, $Res Function(_$ChargesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perHour = freezed,
  }) {
    return _then(_$ChargesModelImpl(
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChargesModelImpl implements _ChargesModel {
  const _$ChargesModelImpl({this.perHour});

  factory _$ChargesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargesModelImplFromJson(json);

  @override
  final int? perHour;

  @override
  String toString() {
    return 'ChargesModel(perHour: $perHour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargesModelImpl &&
            (identical(other.perHour, perHour) || other.perHour == perHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, perHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargesModelImplCopyWith<_$ChargesModelImpl> get copyWith =>
      __$$ChargesModelImplCopyWithImpl<_$ChargesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargesModelImplToJson(
      this,
    );
  }
}

abstract class _ChargesModel implements ChargesModel {
  const factory _ChargesModel({final int? perHour}) = _$ChargesModelImpl;

  factory _ChargesModel.fromJson(Map<String, dynamic> json) =
      _$ChargesModelImpl.fromJson;

  @override
  int? get perHour;
  @override
  @JsonKey(ignore: true)
  _$$ChargesModelImplCopyWith<_$ChargesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
