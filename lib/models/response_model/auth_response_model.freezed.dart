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
  UserModel? get userData => throw _privateConstructorUsedError;
  List<String>? get banners => throw _privateConstructorUsedError;
  List<String>? get filterLocations => throw _privateConstructorUsedError;
  List<String>? get unitType => throw _privateConstructorUsedError;

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
      UserModel? userData,
      List<String>? banners,
      List<String>? filterLocations,
      List<String>? unitType});

  $UserModelCopyWith<$Res>? get userData;
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
    Object? filterLocations = freezed,
    Object? unitType = freezed,
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
              as UserModel?,
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filterLocations: freezed == filterLocations
          ? _value.filterLocations
          : filterLocations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userData!, (value) {
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
      UserModel? userData,
      List<String>? banners,
      List<String>? filterLocations,
      List<String>? unitType});

  @override
  $UserModelCopyWith<$Res>? get userData;
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
    Object? filterLocations = freezed,
    Object? unitType = freezed,
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
              as UserModel?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      filterLocations: freezed == filterLocations
          ? _value._filterLocations
          : filterLocations // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      unitType: freezed == unitType
          ? _value._unitType
          : unitType // ignore: cast_nullable_to_non_nullable
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
      final List<String>? filterLocations,
      final List<String>? unitType})
      : _banners = banners,
        _filterLocations = filterLocations,
        _unitType = unitType;

  factory _$ValidateDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateDataModelImplFromJson(json);

  @override
  final bool? validVersion;
  @override
  final bool? userBlocked;
  @override
  final String? page;
  @override
  final UserModel? userData;
  final List<String>? _banners;
  @override
  List<String>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _filterLocations;
  @override
  List<String>? get filterLocations {
    final value = _filterLocations;
    if (value == null) return null;
    if (_filterLocations is EqualUnmodifiableListView) return _filterLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _unitType;
  @override
  List<String>? get unitType {
    final value = _unitType;
    if (value == null) return null;
    if (_unitType is EqualUnmodifiableListView) return _unitType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ValidateDataModel(validVersion: $validVersion, userBlocked: $userBlocked, page: $page, userData: $userData, banners: $banners, filterLocations: $filterLocations, unitType: $unitType)';
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
                .equals(other._filterLocations, _filterLocations) &&
            const DeepCollectionEquality().equals(other._unitType, _unitType));
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
      const DeepCollectionEquality().hash(_filterLocations),
      const DeepCollectionEquality().hash(_unitType));

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
      final UserModel? userData,
      final List<String>? banners,
      final List<String>? filterLocations,
      final List<String>? unitType}) = _$ValidateDataModelImpl;

  factory _ValidateDataModel.fromJson(Map<String, dynamic> json) =
      _$ValidateDataModelImpl.fromJson;

  @override
  bool? get validVersion;
  @override
  bool? get userBlocked;
  @override
  String? get page;
  @override
  UserModel? get userData;
  @override
  List<String>? get banners;
  @override
  List<String>? get filterLocations;
  @override
  List<String>? get unitType;
  @override
  @JsonKey(ignore: true)
  _$$ValidateDataModelImplCopyWith<_$ValidateDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PrimaryResponseModel _$PrimaryResponseModelFromJson(Map<String, dynamic> json) {
  return _PrimaryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PrimaryResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrimaryResponseModelCopyWith<PrimaryResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrimaryResponseModelCopyWith<$Res> {
  factory $PrimaryResponseModelCopyWith(PrimaryResponseModel value,
          $Res Function(PrimaryResponseModel) then) =
      _$PrimaryResponseModelCopyWithImpl<$Res, PrimaryResponseModel>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$PrimaryResponseModelCopyWithImpl<$Res,
        $Val extends PrimaryResponseModel>
    implements $PrimaryResponseModelCopyWith<$Res> {
  _$PrimaryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrimaryResponseModelImplCopyWith<$Res>
    implements $PrimaryResponseModelCopyWith<$Res> {
  factory _$$PrimaryResponseModelImplCopyWith(_$PrimaryResponseModelImpl value,
          $Res Function(_$PrimaryResponseModelImpl) then) =
      __$$PrimaryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$PrimaryResponseModelImplCopyWithImpl<$Res>
    extends _$PrimaryResponseModelCopyWithImpl<$Res, _$PrimaryResponseModelImpl>
    implements _$$PrimaryResponseModelImplCopyWith<$Res> {
  __$$PrimaryResponseModelImplCopyWithImpl(_$PrimaryResponseModelImpl _value,
      $Res Function(_$PrimaryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$PrimaryResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrimaryResponseModelImpl implements _PrimaryResponseModel {
  const _$PrimaryResponseModelImpl({this.status, this.message});

  factory _$PrimaryResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrimaryResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'PrimaryResponseModel(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrimaryResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrimaryResponseModelImplCopyWith<_$PrimaryResponseModelImpl>
      get copyWith =>
          __$$PrimaryResponseModelImplCopyWithImpl<_$PrimaryResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrimaryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PrimaryResponseModel implements PrimaryResponseModel {
  const factory _PrimaryResponseModel(
      {final int? status, final String? message}) = _$PrimaryResponseModelImpl;

  factory _PrimaryResponseModel.fromJson(Map<String, dynamic> json) =
      _$PrimaryResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PrimaryResponseModelImplCopyWith<_$PrimaryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyOtpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  VerifyOtpDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseModelCopyWith<VerifyOtpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseModelCopyWith<$Res> {
  factory $VerifyOtpResponseModelCopyWith(VerifyOtpResponseModel value,
          $Res Function(VerifyOtpResponseModel) then) =
      _$VerifyOtpResponseModelCopyWithImpl<$Res, VerifyOtpResponseModel>;
  @useResult
  $Res call({int? status, String? message, VerifyOtpDataModel? data});

  $VerifyOtpDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerifyOtpResponseModelCopyWithImpl<$Res,
        $Val extends VerifyOtpResponseModel>
    implements $VerifyOtpResponseModelCopyWith<$Res> {
  _$VerifyOtpResponseModelCopyWithImpl(this._value, this._then);

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
              as VerifyOtpDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyOtpDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VerifyOtpDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyOtpResponseModelImplCopyWith<$Res>
    implements $VerifyOtpResponseModelCopyWith<$Res> {
  factory _$$VerifyOtpResponseModelImplCopyWith(
          _$VerifyOtpResponseModelImpl value,
          $Res Function(_$VerifyOtpResponseModelImpl) then) =
      __$$VerifyOtpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, VerifyOtpDataModel? data});

  @override
  $VerifyOtpDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VerifyOtpResponseModelImplCopyWithImpl<$Res>
    extends _$VerifyOtpResponseModelCopyWithImpl<$Res,
        _$VerifyOtpResponseModelImpl>
    implements _$$VerifyOtpResponseModelImplCopyWith<$Res> {
  __$$VerifyOtpResponseModelImplCopyWithImpl(
      _$VerifyOtpResponseModelImpl _value,
      $Res Function(_$VerifyOtpResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VerifyOtpResponseModelImpl(
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
              as VerifyOtpDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpResponseModelImpl implements _VerifyOtpResponseModel {
  const _$VerifyOtpResponseModelImpl({this.status, this.message, this.data});

  factory _$VerifyOtpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final VerifyOtpDataModel? data;

  @override
  String toString() {
    return 'VerifyOtpResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpResponseModelImpl &&
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
  _$$VerifyOtpResponseModelImplCopyWith<_$VerifyOtpResponseModelImpl>
      get copyWith => __$$VerifyOtpResponseModelImplCopyWithImpl<
          _$VerifyOtpResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponseModel implements VerifyOtpResponseModel {
  const factory _VerifyOtpResponseModel(
      {final int? status,
      final String? message,
      final VerifyOtpDataModel? data}) = _$VerifyOtpResponseModelImpl;

  factory _VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  VerifyOtpDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpResponseModelImplCopyWith<_$VerifyOtpResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContactDetailsResponseModel _$ContactDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ContactDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ContactDetailsDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDetailsResponseModelCopyWith<ContactDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsResponseModelCopyWith<$Res> {
  factory $ContactDetailsResponseModelCopyWith(
          ContactDetailsResponseModel value,
          $Res Function(ContactDetailsResponseModel) then) =
      _$ContactDetailsResponseModelCopyWithImpl<$Res,
          ContactDetailsResponseModel>;
  @useResult
  $Res call(
      {int? status, String? message, List<ContactDetailsDataModel>? data});
}

/// @nodoc
class _$ContactDetailsResponseModelCopyWithImpl<$Res,
        $Val extends ContactDetailsResponseModel>
    implements $ContactDetailsResponseModelCopyWith<$Res> {
  _$ContactDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<ContactDetailsDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDetailsResponseModelImplCopyWith<$Res>
    implements $ContactDetailsResponseModelCopyWith<$Res> {
  factory _$$ContactDetailsResponseModelImplCopyWith(
          _$ContactDetailsResponseModelImpl value,
          $Res Function(_$ContactDetailsResponseModelImpl) then) =
      __$$ContactDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status, String? message, List<ContactDetailsDataModel>? data});
}

/// @nodoc
class __$$ContactDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsResponseModelCopyWithImpl<$Res,
        _$ContactDetailsResponseModelImpl>
    implements _$$ContactDetailsResponseModelImplCopyWith<$Res> {
  __$$ContactDetailsResponseModelImplCopyWithImpl(
      _$ContactDetailsResponseModelImpl _value,
      $Res Function(_$ContactDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ContactDetailsResponseModelImpl(
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
              as List<ContactDetailsDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsResponseModelImpl
    implements _ContactDetailsResponseModel {
  const _$ContactDetailsResponseModelImpl(
      {this.status, this.message, final List<ContactDetailsDataModel>? data})
      : _data = data;

  factory _$ContactDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ContactDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<ContactDetailsDataModel>? _data;
  @override
  List<ContactDetailsDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContactDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsResponseModelImpl &&
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
  _$$ContactDetailsResponseModelImplCopyWith<_$ContactDetailsResponseModelImpl>
      get copyWith => __$$ContactDetailsResponseModelImplCopyWithImpl<
          _$ContactDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsResponseModel
    implements ContactDetailsResponseModel {
  const factory _ContactDetailsResponseModel(
          {final int? status,
          final String? message,
          final List<ContactDetailsDataModel>? data}) =
      _$ContactDetailsResponseModelImpl;

  factory _ContactDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<ContactDetailsDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ContactDetailsResponseModelImplCopyWith<_$ContactDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ContactDetailsDataModel _$ContactDetailsDataModelFromJson(
    Map<String, dynamic> json) {
  return _ContactDetailsDataModel.fromJson(json);
}

/// @nodoc
mixin _$ContactDetailsDataModel {
  String? get type => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactDetailsDataModelCopyWith<ContactDetailsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactDetailsDataModelCopyWith<$Res> {
  factory $ContactDetailsDataModelCopyWith(ContactDetailsDataModel value,
          $Res Function(ContactDetailsDataModel) then) =
      _$ContactDetailsDataModelCopyWithImpl<$Res, ContactDetailsDataModel>;
  @useResult
  $Res call({String? type, String? number});
}

/// @nodoc
class _$ContactDetailsDataModelCopyWithImpl<$Res,
        $Val extends ContactDetailsDataModel>
    implements $ContactDetailsDataModelCopyWith<$Res> {
  _$ContactDetailsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactDetailsDataModelImplCopyWith<$Res>
    implements $ContactDetailsDataModelCopyWith<$Res> {
  factory _$$ContactDetailsDataModelImplCopyWith(
          _$ContactDetailsDataModelImpl value,
          $Res Function(_$ContactDetailsDataModelImpl) then) =
      __$$ContactDetailsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? number});
}

/// @nodoc
class __$$ContactDetailsDataModelImplCopyWithImpl<$Res>
    extends _$ContactDetailsDataModelCopyWithImpl<$Res,
        _$ContactDetailsDataModelImpl>
    implements _$$ContactDetailsDataModelImplCopyWith<$Res> {
  __$$ContactDetailsDataModelImplCopyWithImpl(
      _$ContactDetailsDataModelImpl _value,
      $Res Function(_$ContactDetailsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? number = freezed,
  }) {
    return _then(_$ContactDetailsDataModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactDetailsDataModelImpl implements _ContactDetailsDataModel {
  const _$ContactDetailsDataModelImpl({this.type, this.number});

  factory _$ContactDetailsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactDetailsDataModelImplFromJson(json);

  @override
  final String? type;
  @override
  final String? number;

  @override
  String toString() {
    return 'ContactDetailsDataModel(type: $type, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactDetailsDataModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactDetailsDataModelImplCopyWith<_$ContactDetailsDataModelImpl>
      get copyWith => __$$ContactDetailsDataModelImplCopyWithImpl<
          _$ContactDetailsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactDetailsDataModelImplToJson(
      this,
    );
  }
}

abstract class _ContactDetailsDataModel implements ContactDetailsDataModel {
  const factory _ContactDetailsDataModel(
      {final String? type,
      final String? number}) = _$ContactDetailsDataModelImpl;

  factory _ContactDetailsDataModel.fromJson(Map<String, dynamic> json) =
      _$ContactDetailsDataModelImpl.fromJson;

  @override
  String? get type;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$ContactDetailsDataModelImplCopyWith<_$ContactDetailsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyOtpDataModel _$VerifyOtpDataModelFromJson(Map<String, dynamic> json) {
  return _VerifyOtpDataModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpDataModel {
  String? get page => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpDataModelCopyWith<VerifyOtpDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpDataModelCopyWith<$Res> {
  factory $VerifyOtpDataModelCopyWith(
          VerifyOtpDataModel value, $Res Function(VerifyOtpDataModel) then) =
      _$VerifyOtpDataModelCopyWithImpl<$Res, VerifyOtpDataModel>;
  @useResult
  $Res call({String? page, String? token});
}

/// @nodoc
class _$VerifyOtpDataModelCopyWithImpl<$Res, $Val extends VerifyOtpDataModel>
    implements $VerifyOtpDataModelCopyWith<$Res> {
  _$VerifyOtpDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyOtpDataModelImplCopyWith<$Res>
    implements $VerifyOtpDataModelCopyWith<$Res> {
  factory _$$VerifyOtpDataModelImplCopyWith(_$VerifyOtpDataModelImpl value,
          $Res Function(_$VerifyOtpDataModelImpl) then) =
      __$$VerifyOtpDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? page, String? token});
}

/// @nodoc
class __$$VerifyOtpDataModelImplCopyWithImpl<$Res>
    extends _$VerifyOtpDataModelCopyWithImpl<$Res, _$VerifyOtpDataModelImpl>
    implements _$$VerifyOtpDataModelImplCopyWith<$Res> {
  __$$VerifyOtpDataModelImplCopyWithImpl(_$VerifyOtpDataModelImpl _value,
      $Res Function(_$VerifyOtpDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? token = freezed,
  }) {
    return _then(_$VerifyOtpDataModelImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyOtpDataModelImpl implements _VerifyOtpDataModel {
  const _$VerifyOtpDataModelImpl({this.page, this.token});

  factory _$VerifyOtpDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpDataModelImplFromJson(json);

  @override
  final String? page;
  @override
  final String? token;

  @override
  String toString() {
    return 'VerifyOtpDataModel(page: $page, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpDataModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpDataModelImplCopyWith<_$VerifyOtpDataModelImpl> get copyWith =>
      __$$VerifyOtpDataModelImplCopyWithImpl<_$VerifyOtpDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpDataModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpDataModel implements VerifyOtpDataModel {
  const factory _VerifyOtpDataModel({final String? page, final String? token}) =
      _$VerifyOtpDataModelImpl;

  factory _VerifyOtpDataModel.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpDataModelImpl.fromJson;

  @override
  String? get page;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpDataModelImplCopyWith<_$VerifyOtpDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadFileResponseModel _$UploadFileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _UploadFileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UploadFileResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFileResponseModelCopyWith<UploadFileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileResponseModelCopyWith<$Res> {
  factory $UploadFileResponseModelCopyWith(UploadFileResponseModel value,
          $Res Function(UploadFileResponseModel) then) =
      _$UploadFileResponseModelCopyWithImpl<$Res, UploadFileResponseModel>;
  @useResult
  $Res call({int? status, String? message, String? data});
}

/// @nodoc
class _$UploadFileResponseModelCopyWithImpl<$Res,
        $Val extends UploadFileResponseModel>
    implements $UploadFileResponseModelCopyWith<$Res> {
  _$UploadFileResponseModelCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFileResponseModelImplCopyWith<$Res>
    implements $UploadFileResponseModelCopyWith<$Res> {
  factory _$$UploadFileResponseModelImplCopyWith(
          _$UploadFileResponseModelImpl value,
          $Res Function(_$UploadFileResponseModelImpl) then) =
      __$$UploadFileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, String? data});
}

/// @nodoc
class __$$UploadFileResponseModelImplCopyWithImpl<$Res>
    extends _$UploadFileResponseModelCopyWithImpl<$Res,
        _$UploadFileResponseModelImpl>
    implements _$$UploadFileResponseModelImplCopyWith<$Res> {
  __$$UploadFileResponseModelImplCopyWithImpl(
      _$UploadFileResponseModelImpl _value,
      $Res Function(_$UploadFileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UploadFileResponseModelImpl(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFileResponseModelImpl implements _UploadFileResponseModel {
  const _$UploadFileResponseModelImpl({this.status, this.message, this.data});

  factory _$UploadFileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFileResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? data;

  @override
  String toString() {
    return 'UploadFileResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFileResponseModelImpl &&
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
  _$$UploadFileResponseModelImplCopyWith<_$UploadFileResponseModelImpl>
      get copyWith => __$$UploadFileResponseModelImplCopyWithImpl<
          _$UploadFileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UploadFileResponseModel implements UploadFileResponseModel {
  const factory _UploadFileResponseModel(
      {final int? status,
      final String? message,
      final String? data}) = _$UploadFileResponseModelImpl;

  factory _UploadFileResponseModel.fromJson(Map<String, dynamic> json) =
      _$UploadFileResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$UploadFileResponseModelImplCopyWith<_$UploadFileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchUserDetailsResponseModel _$FetchUserDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchUserDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchUserDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FetchUserDetailsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchUserDetailsResponseModelCopyWith<FetchUserDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUserDetailsResponseModelCopyWith<$Res> {
  factory $FetchUserDetailsResponseModelCopyWith(
          FetchUserDetailsResponseModel value,
          $Res Function(FetchUserDetailsResponseModel) then) =
      _$FetchUserDetailsResponseModelCopyWithImpl<$Res,
          FetchUserDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, FetchUserDetailsDataModel? data});

  $FetchUserDetailsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchUserDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchUserDetailsResponseModel>
    implements $FetchUserDetailsResponseModelCopyWith<$Res> {
  _$FetchUserDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as FetchUserDetailsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchUserDetailsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FetchUserDetailsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchUserDetailsResponseModelImplCopyWith<$Res>
    implements $FetchUserDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchUserDetailsResponseModelImplCopyWith(
          _$FetchUserDetailsResponseModelImpl value,
          $Res Function(_$FetchUserDetailsResponseModelImpl) then) =
      __$$FetchUserDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, FetchUserDetailsDataModel? data});

  @override
  $FetchUserDetailsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchUserDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchUserDetailsResponseModelCopyWithImpl<$Res,
        _$FetchUserDetailsResponseModelImpl>
    implements _$$FetchUserDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchUserDetailsResponseModelImplCopyWithImpl(
      _$FetchUserDetailsResponseModelImpl _value,
      $Res Function(_$FetchUserDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchUserDetailsResponseModelImpl(
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
              as FetchUserDetailsDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchUserDetailsResponseModelImpl
    implements _FetchUserDetailsResponseModel {
  const _$FetchUserDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchUserDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchUserDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final FetchUserDetailsDataModel? data;

  @override
  String toString() {
    return 'FetchUserDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserDetailsResponseModelImpl &&
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
  _$$FetchUserDetailsResponseModelImplCopyWith<
          _$FetchUserDetailsResponseModelImpl>
      get copyWith => __$$FetchUserDetailsResponseModelImplCopyWithImpl<
          _$FetchUserDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchUserDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchUserDetailsResponseModel
    implements FetchUserDetailsResponseModel {
  const factory _FetchUserDetailsResponseModel(
          {final int? status,
          final String? message,
          final FetchUserDetailsDataModel? data}) =
      _$FetchUserDetailsResponseModelImpl;

  factory _FetchUserDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchUserDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  FetchUserDetailsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserDetailsResponseModelImplCopyWith<
          _$FetchUserDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchUserDetailsDataModel _$FetchUserDetailsDataModelFromJson(
    Map<String, dynamic> json) {
  return _FetchUserDetailsDataModel.fromJson(json);
}

/// @nodoc
mixin _$FetchUserDetailsDataModel {
  String? get token => throw _privateConstructorUsedError;
  UserModel? get userDetails => throw _privateConstructorUsedError;
  HomeModel? get primaryHome => throw _privateConstructorUsedError;
  SupportModel? get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchUserDetailsDataModelCopyWith<FetchUserDetailsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchUserDetailsDataModelCopyWith<$Res> {
  factory $FetchUserDetailsDataModelCopyWith(FetchUserDetailsDataModel value,
          $Res Function(FetchUserDetailsDataModel) then) =
      _$FetchUserDetailsDataModelCopyWithImpl<$Res, FetchUserDetailsDataModel>;
  @useResult
  $Res call(
      {String? token,
      UserModel? userDetails,
      HomeModel? primaryHome,
      SupportModel? support});

  $UserModelCopyWith<$Res>? get userDetails;
  $HomeModelCopyWith<$Res>? get primaryHome;
  $SupportModelCopyWith<$Res>? get support;
}

/// @nodoc
class _$FetchUserDetailsDataModelCopyWithImpl<$Res,
        $Val extends FetchUserDetailsDataModel>
    implements $FetchUserDetailsDataModelCopyWith<$Res> {
  _$FetchUserDetailsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userDetails = freezed,
    Object? primaryHome = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      primaryHome: freezed == primaryHome
          ? _value.primaryHome
          : primaryHome // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userDetails {
    if (_value.userDetails == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userDetails!, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelCopyWith<$Res>? get primaryHome {
    if (_value.primaryHome == null) {
      return null;
    }

    return $HomeModelCopyWith<$Res>(_value.primaryHome!, (value) {
      return _then(_value.copyWith(primaryHome: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SupportModelCopyWith<$Res>? get support {
    if (_value.support == null) {
      return null;
    }

    return $SupportModelCopyWith<$Res>(_value.support!, (value) {
      return _then(_value.copyWith(support: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchUserDetailsDataModelImplCopyWith<$Res>
    implements $FetchUserDetailsDataModelCopyWith<$Res> {
  factory _$$FetchUserDetailsDataModelImplCopyWith(
          _$FetchUserDetailsDataModelImpl value,
          $Res Function(_$FetchUserDetailsDataModelImpl) then) =
      __$$FetchUserDetailsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      UserModel? userDetails,
      HomeModel? primaryHome,
      SupportModel? support});

  @override
  $UserModelCopyWith<$Res>? get userDetails;
  @override
  $HomeModelCopyWith<$Res>? get primaryHome;
  @override
  $SupportModelCopyWith<$Res>? get support;
}

/// @nodoc
class __$$FetchUserDetailsDataModelImplCopyWithImpl<$Res>
    extends _$FetchUserDetailsDataModelCopyWithImpl<$Res,
        _$FetchUserDetailsDataModelImpl>
    implements _$$FetchUserDetailsDataModelImplCopyWith<$Res> {
  __$$FetchUserDetailsDataModelImplCopyWithImpl(
      _$FetchUserDetailsDataModelImpl _value,
      $Res Function(_$FetchUserDetailsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? userDetails = freezed,
    Object? primaryHome = freezed,
    Object? support = freezed,
  }) {
    return _then(_$FetchUserDetailsDataModelImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      userDetails: freezed == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      primaryHome: freezed == primaryHome
          ? _value.primaryHome
          : primaryHome // ignore: cast_nullable_to_non_nullable
              as HomeModel?,
      support: freezed == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchUserDetailsDataModelImpl implements _FetchUserDetailsDataModel {
  const _$FetchUserDetailsDataModelImpl(
      {this.token, this.userDetails, this.primaryHome, this.support});

  factory _$FetchUserDetailsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchUserDetailsDataModelImplFromJson(json);

  @override
  final String? token;
  @override
  final UserModel? userDetails;
  @override
  final HomeModel? primaryHome;
  @override
  final SupportModel? support;

  @override
  String toString() {
    return 'FetchUserDetailsDataModel(token: $token, userDetails: $userDetails, primaryHome: $primaryHome, support: $support)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserDetailsDataModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails) &&
            (identical(other.primaryHome, primaryHome) ||
                other.primaryHome == primaryHome) &&
            (identical(other.support, support) || other.support == support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, token, userDetails, primaryHome, support);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserDetailsDataModelImplCopyWith<_$FetchUserDetailsDataModelImpl>
      get copyWith => __$$FetchUserDetailsDataModelImplCopyWithImpl<
          _$FetchUserDetailsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchUserDetailsDataModelImplToJson(
      this,
    );
  }
}

abstract class _FetchUserDetailsDataModel implements FetchUserDetailsDataModel {
  const factory _FetchUserDetailsDataModel(
      {final String? token,
      final UserModel? userDetails,
      final HomeModel? primaryHome,
      final SupportModel? support}) = _$FetchUserDetailsDataModelImpl;

  factory _FetchUserDetailsDataModel.fromJson(Map<String, dynamic> json) =
      _$FetchUserDetailsDataModelImpl.fromJson;

  @override
  String? get token;
  @override
  UserModel? get userDetails;
  @override
  HomeModel? get primaryHome;
  @override
  SupportModel? get support;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserDetailsDataModelImplCopyWith<_$FetchUserDetailsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SupportModel _$SupportModelFromJson(Map<String, dynamic> json) {
  return _SupportModel.fromJson(json);
}

/// @nodoc
mixin _$SupportModel {
  String? get supportEmail => throw _privateConstructorUsedError;
  String? get supportNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportModelCopyWith<SupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportModelCopyWith<$Res> {
  factory $SupportModelCopyWith(
          SupportModel value, $Res Function(SupportModel) then) =
      _$SupportModelCopyWithImpl<$Res, SupportModel>;
  @useResult
  $Res call({String? supportEmail, String? supportNumber});
}

/// @nodoc
class _$SupportModelCopyWithImpl<$Res, $Val extends SupportModel>
    implements $SupportModelCopyWith<$Res> {
  _$SupportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportEmail = freezed,
    Object? supportNumber = freezed,
  }) {
    return _then(_value.copyWith(
      supportEmail: freezed == supportEmail
          ? _value.supportEmail
          : supportEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      supportNumber: freezed == supportNumber
          ? _value.supportNumber
          : supportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportModelImplCopyWith<$Res>
    implements $SupportModelCopyWith<$Res> {
  factory _$$SupportModelImplCopyWith(
          _$SupportModelImpl value, $Res Function(_$SupportModelImpl) then) =
      __$$SupportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? supportEmail, String? supportNumber});
}

/// @nodoc
class __$$SupportModelImplCopyWithImpl<$Res>
    extends _$SupportModelCopyWithImpl<$Res, _$SupportModelImpl>
    implements _$$SupportModelImplCopyWith<$Res> {
  __$$SupportModelImplCopyWithImpl(
      _$SupportModelImpl _value, $Res Function(_$SupportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportEmail = freezed,
    Object? supportNumber = freezed,
  }) {
    return _then(_$SupportModelImpl(
      supportEmail: freezed == supportEmail
          ? _value.supportEmail
          : supportEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      supportNumber: freezed == supportNumber
          ? _value.supportNumber
          : supportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupportModelImpl implements _SupportModel {
  const _$SupportModelImpl({this.supportEmail, this.supportNumber});

  factory _$SupportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportModelImplFromJson(json);

  @override
  final String? supportEmail;
  @override
  final String? supportNumber;

  @override
  String toString() {
    return 'SupportModel(supportEmail: $supportEmail, supportNumber: $supportNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportModelImpl &&
            (identical(other.supportEmail, supportEmail) ||
                other.supportEmail == supportEmail) &&
            (identical(other.supportNumber, supportNumber) ||
                other.supportNumber == supportNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, supportEmail, supportNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportModelImplCopyWith<_$SupportModelImpl> get copyWith =>
      __$$SupportModelImplCopyWithImpl<_$SupportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportModelImplToJson(
      this,
    );
  }
}

abstract class _SupportModel implements SupportModel {
  const factory _SupportModel(
      {final String? supportEmail,
      final String? supportNumber}) = _$SupportModelImpl;

  factory _SupportModel.fromJson(Map<String, dynamic> json) =
      _$SupportModelImpl.fromJson;

  @override
  String? get supportEmail;
  @override
  String? get supportNumber;
  @override
  @JsonKey(ignore: true)
  _$$SupportModelImplCopyWith<_$SupportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  dynamic get favouriteHomes => throw _privateConstructorUsedError;
  dynamic get onGoingBookings => throw _privateConstructorUsedError;
  dynamic get upComingBookings => throw _privateConstructorUsedError;
  dynamic get wallet => throw _privateConstructorUsedError;
  LocationModel? get address => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;
  List<dynamic>? get referrals => throw _privateConstructorUsedError;
  int? get referralEarnings => throw _privateConstructorUsedError;
  List<DocumentDataModel>? get kycDocuments =>
      throw _privateConstructorUsedError;
  ReferralModel? get referral => throw _privateConstructorUsedError;
  int? get referralCount => throw _privateConstructorUsedError;
  String? get dealingType => throw _privateConstructorUsedError;
  String? get primaryHome => throw _privateConstructorUsedError;
  SubscriptionModel? get subscription => throw _privateConstructorUsedError;
  dynamic get primaryAccountId => throw _privateConstructorUsedError;
  bool? get payUAutherised => throw _privateConstructorUsedError;
  bool? get isHost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      int? mobile,
      String? name,
      String? email,
      String? gender,
      String? dob,
      String? profilePic,
      int? otp,
      String? source,
      String? version,
      String? deviceId,
      bool? blocked,
      dynamic favouriteHomes,
      dynamic onGoingBookings,
      dynamic upComingBookings,
      dynamic wallet,
      LocationModel? address,
      String? referralCode,
      List<dynamic>? referrals,
      int? referralEarnings,
      List<DocumentDataModel>? kycDocuments,
      ReferralModel? referral,
      int? referralCount,
      String? dealingType,
      String? primaryHome,
      SubscriptionModel? subscription,
      dynamic primaryAccountId,
      bool? payUAutherised,
      bool? isHost});

  $LocationModelCopyWith<$Res>? get address;
  $ReferralModelCopyWith<$Res>? get referral;
  $SubscriptionModelCopyWith<$Res>? get subscription;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? profilePic = freezed,
    Object? otp = freezed,
    Object? source = freezed,
    Object? version = freezed,
    Object? deviceId = freezed,
    Object? blocked = freezed,
    Object? favouriteHomes = freezed,
    Object? onGoingBookings = freezed,
    Object? upComingBookings = freezed,
    Object? wallet = freezed,
    Object? address = freezed,
    Object? referralCode = freezed,
    Object? referrals = freezed,
    Object? referralEarnings = freezed,
    Object? kycDocuments = freezed,
    Object? referral = freezed,
    Object? referralCount = freezed,
    Object? dealingType = freezed,
    Object? primaryHome = freezed,
    Object? subscription = freezed,
    Object? primaryAccountId = freezed,
    Object? payUAutherised = freezed,
    Object? isHost = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      favouriteHomes: freezed == favouriteHomes
          ? _value.favouriteHomes
          : favouriteHomes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onGoingBookings: freezed == onGoingBookings
          ? _value.onGoingBookings
          : onGoingBookings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      upComingBookings: freezed == upComingBookings
          ? _value.upComingBookings
          : upComingBookings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrals: freezed == referrals
          ? _value.referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      referralEarnings: freezed == referralEarnings
          ? _value.referralEarnings
          : referralEarnings // ignore: cast_nullable_to_non_nullable
              as int?,
      kycDocuments: freezed == kycDocuments
          ? _value.kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      referral: freezed == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as ReferralModel?,
      referralCount: freezed == referralCount
          ? _value.referralCount
          : referralCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dealingType: freezed == dealingType
          ? _value.dealingType
          : dealingType // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryHome: freezed == primaryHome
          ? _value.primaryHome
          : primaryHome // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel?,
      primaryAccountId: freezed == primaryAccountId
          ? _value.primaryAccountId
          : primaryAccountId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payUAutherised: freezed == payUAutherised
          ? _value.payUAutherised
          : payUAutherised // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHost: freezed == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $LocationModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferralModelCopyWith<$Res>? get referral {
    if (_value.referral == null) {
      return null;
    }

    return $ReferralModelCopyWith<$Res>(_value.referral!, (value) {
      return _then(_value.copyWith(referral: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionModelCopyWith<$Res>? get subscription {
    if (_value.subscription == null) {
      return null;
    }

    return $SubscriptionModelCopyWith<$Res>(_value.subscription!, (value) {
      return _then(_value.copyWith(subscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? image,
      int? mobile,
      String? name,
      String? email,
      String? gender,
      String? dob,
      String? profilePic,
      int? otp,
      String? source,
      String? version,
      String? deviceId,
      bool? blocked,
      dynamic favouriteHomes,
      dynamic onGoingBookings,
      dynamic upComingBookings,
      dynamic wallet,
      LocationModel? address,
      String? referralCode,
      List<dynamic>? referrals,
      int? referralEarnings,
      List<DocumentDataModel>? kycDocuments,
      ReferralModel? referral,
      int? referralCount,
      String? dealingType,
      String? primaryHome,
      SubscriptionModel? subscription,
      dynamic primaryAccountId,
      bool? payUAutherised,
      bool? isHost});

  @override
  $LocationModelCopyWith<$Res>? get address;
  @override
  $ReferralModelCopyWith<$Res>? get referral;
  @override
  $SubscriptionModelCopyWith<$Res>? get subscription;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? profilePic = freezed,
    Object? otp = freezed,
    Object? source = freezed,
    Object? version = freezed,
    Object? deviceId = freezed,
    Object? blocked = freezed,
    Object? favouriteHomes = freezed,
    Object? onGoingBookings = freezed,
    Object? upComingBookings = freezed,
    Object? wallet = freezed,
    Object? address = freezed,
    Object? referralCode = freezed,
    Object? referrals = freezed,
    Object? referralEarnings = freezed,
    Object? kycDocuments = freezed,
    Object? referral = freezed,
    Object? referralCount = freezed,
    Object? dealingType = freezed,
    Object? primaryHome = freezed,
    Object? subscription = freezed,
    Object? primaryAccountId = freezed,
    Object? payUAutherised = freezed,
    Object? isHost = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
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
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      favouriteHomes: freezed == favouriteHomes
          ? _value.favouriteHomes
          : favouriteHomes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onGoingBookings: freezed == onGoingBookings
          ? _value.onGoingBookings
          : onGoingBookings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      upComingBookings: freezed == upComingBookings
          ? _value.upComingBookings
          : upComingBookings // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referrals: freezed == referrals
          ? _value._referrals
          : referrals // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      referralEarnings: freezed == referralEarnings
          ? _value.referralEarnings
          : referralEarnings // ignore: cast_nullable_to_non_nullable
              as int?,
      kycDocuments: freezed == kycDocuments
          ? _value._kycDocuments
          : kycDocuments // ignore: cast_nullable_to_non_nullable
              as List<DocumentDataModel>?,
      referral: freezed == referral
          ? _value.referral
          : referral // ignore: cast_nullable_to_non_nullable
              as ReferralModel?,
      referralCount: freezed == referralCount
          ? _value.referralCount
          : referralCount // ignore: cast_nullable_to_non_nullable
              as int?,
      dealingType: freezed == dealingType
          ? _value.dealingType
          : dealingType // ignore: cast_nullable_to_non_nullable
              as String?,
      primaryHome: freezed == primaryHome
          ? _value.primaryHome
          : primaryHome // ignore: cast_nullable_to_non_nullable
              as String?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel?,
      primaryAccountId: freezed == primaryAccountId
          ? _value.primaryAccountId
          : primaryAccountId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payUAutherised: freezed == payUAutherised
          ? _value.payUAutherised
          : payUAutherised // ignore: cast_nullable_to_non_nullable
              as bool?,
      isHost: freezed == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.image,
      this.mobile,
      this.name,
      this.email,
      this.gender,
      this.dob,
      this.profilePic,
      this.otp,
      this.source,
      this.version,
      this.deviceId,
      this.blocked,
      this.favouriteHomes,
      this.onGoingBookings,
      this.upComingBookings,
      this.wallet,
      this.address,
      this.referralCode,
      final List<dynamic>? referrals,
      this.referralEarnings,
      final List<DocumentDataModel>? kycDocuments,
      this.referral,
      this.referralCount,
      this.dealingType,
      this.primaryHome,
      this.subscription,
      this.primaryAccountId,
      this.payUAutherised,
      this.isHost})
      : _referrals = referrals,
        _kycDocuments = kycDocuments;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final int? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? gender;
  @override
  final String? dob;
  @override
  final String? profilePic;
  @override
  final int? otp;
  @override
  final String? source;
  @override
  final String? version;
  @override
  final String? deviceId;
  @override
  final bool? blocked;
  @override
  final dynamic favouriteHomes;
  @override
  final dynamic onGoingBookings;
  @override
  final dynamic upComingBookings;
  @override
  final dynamic wallet;
  @override
  final LocationModel? address;
  @override
  final String? referralCode;
  final List<dynamic>? _referrals;
  @override
  List<dynamic>? get referrals {
    final value = _referrals;
    if (value == null) return null;
    if (_referrals is EqualUnmodifiableListView) return _referrals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? referralEarnings;
  final List<DocumentDataModel>? _kycDocuments;
  @override
  List<DocumentDataModel>? get kycDocuments {
    final value = _kycDocuments;
    if (value == null) return null;
    if (_kycDocuments is EqualUnmodifiableListView) return _kycDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ReferralModel? referral;
  @override
  final int? referralCount;
  @override
  final String? dealingType;
  @override
  final String? primaryHome;
  @override
  final SubscriptionModel? subscription;
  @override
  final dynamic primaryAccountId;
  @override
  final bool? payUAutherised;
  @override
  final bool? isHost;

  @override
  String toString() {
    return 'UserModel(id: $id, image: $image, mobile: $mobile, name: $name, email: $email, gender: $gender, dob: $dob, profilePic: $profilePic, otp: $otp, source: $source, version: $version, deviceId: $deviceId, blocked: $blocked, favouriteHomes: $favouriteHomes, onGoingBookings: $onGoingBookings, upComingBookings: $upComingBookings, wallet: $wallet, address: $address, referralCode: $referralCode, referrals: $referrals, referralEarnings: $referralEarnings, kycDocuments: $kycDocuments, referral: $referral, referralCount: $referralCount, dealingType: $dealingType, primaryHome: $primaryHome, subscription: $subscription, primaryAccountId: $primaryAccountId, payUAutherised: $payUAutherised, isHost: $isHost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            const DeepCollectionEquality()
                .equals(other.favouriteHomes, favouriteHomes) &&
            const DeepCollectionEquality()
                .equals(other.onGoingBookings, onGoingBookings) &&
            const DeepCollectionEquality()
                .equals(other.upComingBookings, upComingBookings) &&
            const DeepCollectionEquality().equals(other.wallet, wallet) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality()
                .equals(other._referrals, _referrals) &&
            (identical(other.referralEarnings, referralEarnings) ||
                other.referralEarnings == referralEarnings) &&
            const DeepCollectionEquality()
                .equals(other._kycDocuments, _kycDocuments) &&
            (identical(other.referral, referral) ||
                other.referral == referral) &&
            (identical(other.referralCount, referralCount) ||
                other.referralCount == referralCount) &&
            (identical(other.dealingType, dealingType) ||
                other.dealingType == dealingType) &&
            (identical(other.primaryHome, primaryHome) ||
                other.primaryHome == primaryHome) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            const DeepCollectionEquality()
                .equals(other.primaryAccountId, primaryAccountId) &&
            (identical(other.payUAutherised, payUAutherised) ||
                other.payUAutherised == payUAutherised) &&
            (identical(other.isHost, isHost) || other.isHost == isHost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        image,
        mobile,
        name,
        email,
        gender,
        dob,
        profilePic,
        otp,
        source,
        version,
        deviceId,
        blocked,
        const DeepCollectionEquality().hash(favouriteHomes),
        const DeepCollectionEquality().hash(onGoingBookings),
        const DeepCollectionEquality().hash(upComingBookings),
        const DeepCollectionEquality().hash(wallet),
        address,
        referralCode,
        const DeepCollectionEquality().hash(_referrals),
        referralEarnings,
        const DeepCollectionEquality().hash(_kycDocuments),
        referral,
        referralCount,
        dealingType,
        primaryHome,
        subscription,
        const DeepCollectionEquality().hash(primaryAccountId),
        payUAutherised,
        isHost
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: '_id') final String? id,
      final String? image,
      final int? mobile,
      final String? name,
      final String? email,
      final String? gender,
      final String? dob,
      final String? profilePic,
      final int? otp,
      final String? source,
      final String? version,
      final String? deviceId,
      final bool? blocked,
      final dynamic favouriteHomes,
      final dynamic onGoingBookings,
      final dynamic upComingBookings,
      final dynamic wallet,
      final LocationModel? address,
      final String? referralCode,
      final List<dynamic>? referrals,
      final int? referralEarnings,
      final List<DocumentDataModel>? kycDocuments,
      final ReferralModel? referral,
      final int? referralCount,
      final String? dealingType,
      final String? primaryHome,
      final SubscriptionModel? subscription,
      final dynamic primaryAccountId,
      final bool? payUAutherised,
      final bool? isHost}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get image;
  @override
  int? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  String? get profilePic;
  @override
  int? get otp;
  @override
  String? get source;
  @override
  String? get version;
  @override
  String? get deviceId;
  @override
  bool? get blocked;
  @override
  dynamic get favouriteHomes;
  @override
  dynamic get onGoingBookings;
  @override
  dynamic get upComingBookings;
  @override
  dynamic get wallet;
  @override
  LocationModel? get address;
  @override
  String? get referralCode;
  @override
  List<dynamic>? get referrals;
  @override
  int? get referralEarnings;
  @override
  List<DocumentDataModel>? get kycDocuments;
  @override
  ReferralModel? get referral;
  @override
  int? get referralCount;
  @override
  String? get dealingType;
  @override
  String? get primaryHome;
  @override
  SubscriptionModel? get subscription;
  @override
  dynamic get primaryAccountId;
  @override
  bool? get payUAutherised;
  @override
  bool? get isHost;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReferralModel _$ReferralModelFromJson(Map<String, dynamic> json) {
  return _ReferralModel.fromJson(json);
}

/// @nodoc
mixin _$ReferralModel {
  int? get referralAmount => throw _privateConstructorUsedError;
  int? get referralCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralModelCopyWith<ReferralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralModelCopyWith<$Res> {
  factory $ReferralModelCopyWith(
          ReferralModel value, $Res Function(ReferralModel) then) =
      _$ReferralModelCopyWithImpl<$Res, ReferralModel>;
  @useResult
  $Res call({int? referralAmount, int? referralCount});
}

/// @nodoc
class _$ReferralModelCopyWithImpl<$Res, $Val extends ReferralModel>
    implements $ReferralModelCopyWith<$Res> {
  _$ReferralModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralAmount = freezed,
    Object? referralCount = freezed,
  }) {
    return _then(_value.copyWith(
      referralAmount: freezed == referralAmount
          ? _value.referralAmount
          : referralAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referralCount: freezed == referralCount
          ? _value.referralCount
          : referralCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralModelImplCopyWith<$Res>
    implements $ReferralModelCopyWith<$Res> {
  factory _$$ReferralModelImplCopyWith(
          _$ReferralModelImpl value, $Res Function(_$ReferralModelImpl) then) =
      __$$ReferralModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? referralAmount, int? referralCount});
}

/// @nodoc
class __$$ReferralModelImplCopyWithImpl<$Res>
    extends _$ReferralModelCopyWithImpl<$Res, _$ReferralModelImpl>
    implements _$$ReferralModelImplCopyWith<$Res> {
  __$$ReferralModelImplCopyWithImpl(
      _$ReferralModelImpl _value, $Res Function(_$ReferralModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralAmount = freezed,
    Object? referralCount = freezed,
  }) {
    return _then(_$ReferralModelImpl(
      referralAmount: freezed == referralAmount
          ? _value.referralAmount
          : referralAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      referralCount: freezed == referralCount
          ? _value.referralCount
          : referralCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralModelImpl implements _ReferralModel {
  const _$ReferralModelImpl({this.referralAmount, this.referralCount});

  factory _$ReferralModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralModelImplFromJson(json);

  @override
  final int? referralAmount;
  @override
  final int? referralCount;

  @override
  String toString() {
    return 'ReferralModel(referralAmount: $referralAmount, referralCount: $referralCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralModelImpl &&
            (identical(other.referralAmount, referralAmount) ||
                other.referralAmount == referralAmount) &&
            (identical(other.referralCount, referralCount) ||
                other.referralCount == referralCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referralAmount, referralCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralModelImplCopyWith<_$ReferralModelImpl> get copyWith =>
      __$$ReferralModelImplCopyWithImpl<_$ReferralModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralModelImplToJson(
      this,
    );
  }
}

abstract class _ReferralModel implements ReferralModel {
  const factory _ReferralModel(
      {final int? referralAmount,
      final int? referralCount}) = _$ReferralModelImpl;

  factory _ReferralModel.fromJson(Map<String, dynamic> json) =
      _$ReferralModelImpl.fromJson;

  @override
  int? get referralAmount;
  @override
  int? get referralCount;
  @override
  @JsonKey(ignore: true)
  _$$ReferralModelImplCopyWith<_$ReferralModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  dynamic get colorCode => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get membershipType => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get durationByDays => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  List<String>? get list => throw _privateConstructorUsedError;
  String? get razorpayPlanId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionModelCopyWith<SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionModelCopyWith<$Res> {
  factory $SubscriptionModelCopyWith(
          SubscriptionModel value, $Res Function(SubscriptionModel) then) =
      _$SubscriptionModelCopyWithImpl<$Res, SubscriptionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      dynamic colorCode,
      String? name,
      String? membershipType,
      String? duration,
      int? price,
      int? discount,
      int? durationByDays,
      String? createdAt,
      String? startDate,
      String? endDate,
      bool? isActive,
      List<String>? list,
      String? razorpayPlanId});
}

/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res, $Val extends SubscriptionModel>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? colorCode = freezed,
    Object? name = freezed,
    Object? membershipType = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? durationByDays = freezed,
    Object? createdAt = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isActive = freezed,
    Object? list = freezed,
    Object? razorpayPlanId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipType: freezed == membershipType
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationByDays: freezed == durationByDays
          ? _value.durationByDays
          : durationByDays // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      razorpayPlanId: freezed == razorpayPlanId
          ? _value.razorpayPlanId
          : razorpayPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionModelImplCopyWith<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  factory _$$SubscriptionModelImplCopyWith(_$SubscriptionModelImpl value,
          $Res Function(_$SubscriptionModelImpl) then) =
      __$$SubscriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      dynamic colorCode,
      String? name,
      String? membershipType,
      String? duration,
      int? price,
      int? discount,
      int? durationByDays,
      String? createdAt,
      String? startDate,
      String? endDate,
      bool? isActive,
      List<String>? list,
      String? razorpayPlanId});
}

/// @nodoc
class __$$SubscriptionModelImplCopyWithImpl<$Res>
    extends _$SubscriptionModelCopyWithImpl<$Res, _$SubscriptionModelImpl>
    implements _$$SubscriptionModelImplCopyWith<$Res> {
  __$$SubscriptionModelImplCopyWithImpl(_$SubscriptionModelImpl _value,
      $Res Function(_$SubscriptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? colorCode = freezed,
    Object? name = freezed,
    Object? membershipType = freezed,
    Object? duration = freezed,
    Object? price = freezed,
    Object? discount = freezed,
    Object? durationByDays = freezed,
    Object? createdAt = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isActive = freezed,
    Object? list = freezed,
    Object? razorpayPlanId = freezed,
  }) {
    return _then(_$SubscriptionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipType: freezed == membershipType
          ? _value.membershipType
          : membershipType // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      durationByDays: freezed == durationByDays
          ? _value.durationByDays
          : durationByDays // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      razorpayPlanId: freezed == razorpayPlanId
          ? _value.razorpayPlanId
          : razorpayPlanId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionModelImpl implements _SubscriptionModel {
  const _$SubscriptionModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.colorCode,
      this.name,
      this.membershipType,
      this.duration,
      this.price,
      this.discount,
      this.durationByDays,
      this.createdAt,
      this.startDate,
      this.endDate,
      this.isActive,
      final List<String>? list,
      this.razorpayPlanId})
      : _list = list;

  factory _$SubscriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final dynamic colorCode;
  @override
  final String? name;
  @override
  final String? membershipType;
  @override
  final String? duration;
  @override
  final int? price;
  @override
  final int? discount;
  @override
  final int? durationByDays;
  @override
  final String? createdAt;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final bool? isActive;
  final List<String>? _list;
  @override
  List<String>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? razorpayPlanId;

  @override
  String toString() {
    return 'SubscriptionModel(id: $id, colorCode: $colorCode, name: $name, membershipType: $membershipType, duration: $duration, price: $price, discount: $discount, durationByDays: $durationByDays, createdAt: $createdAt, startDate: $startDate, endDate: $endDate, isActive: $isActive, list: $list, razorpayPlanId: $razorpayPlanId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.colorCode, colorCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.membershipType, membershipType) ||
                other.membershipType == membershipType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.durationByDays, durationByDays) ||
                other.durationByDays == durationByDays) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.razorpayPlanId, razorpayPlanId) ||
                other.razorpayPlanId == razorpayPlanId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(colorCode),
      name,
      membershipType,
      duration,
      price,
      discount,
      durationByDays,
      createdAt,
      startDate,
      endDate,
      isActive,
      const DeepCollectionEquality().hash(_list),
      razorpayPlanId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionModelImplCopyWith<_$SubscriptionModelImpl> get copyWith =>
      __$$SubscriptionModelImplCopyWithImpl<_$SubscriptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionModelImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionModel implements SubscriptionModel {
  const factory _SubscriptionModel(
      {@JsonKey(name: '_id') final String? id,
      final dynamic colorCode,
      final String? name,
      final String? membershipType,
      final String? duration,
      final int? price,
      final int? discount,
      final int? durationByDays,
      final String? createdAt,
      final String? startDate,
      final String? endDate,
      final bool? isActive,
      final List<String>? list,
      final String? razorpayPlanId}) = _$SubscriptionModelImpl;

  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  dynamic get colorCode;
  @override
  String? get name;
  @override
  String? get membershipType;
  @override
  String? get duration;
  @override
  int? get price;
  @override
  int? get discount;
  @override
  int? get durationByDays;
  @override
  String? get createdAt;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  bool? get isActive;
  @override
  List<String>? get list;
  @override
  String? get razorpayPlanId;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionModelImplCopyWith<_$SubscriptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentDataModel _$DocumentDataModelFromJson(Map<String, dynamic> json) {
  return _DocumentDataModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentDataModel {
  String? get documentType => throw _privateConstructorUsedError;
  String? get documentStatus => throw _privateConstructorUsedError;
  String? get uploadedUrl => throw _privateConstructorUsedError;
  String? get errorTxt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDataModelCopyWith<DocumentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDataModelCopyWith<$Res> {
  factory $DocumentDataModelCopyWith(
          DocumentDataModel value, $Res Function(DocumentDataModel) then) =
      _$DocumentDataModelCopyWithImpl<$Res, DocumentDataModel>;
  @useResult
  $Res call(
      {String? documentType,
      String? documentStatus,
      String? uploadedUrl,
      String? errorTxt});
}

/// @nodoc
class _$DocumentDataModelCopyWithImpl<$Res, $Val extends DocumentDataModel>
    implements $DocumentDataModelCopyWith<$Res> {
  _$DocumentDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentType = freezed,
    Object? documentStatus = freezed,
    Object? uploadedUrl = freezed,
    Object? errorTxt = freezed,
  }) {
    return _then(_value.copyWith(
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentStatus: freezed == documentStatus
          ? _value.documentStatus
          : documentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedUrl: freezed == uploadedUrl
          ? _value.uploadedUrl
          : uploadedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTxt: freezed == errorTxt
          ? _value.errorTxt
          : errorTxt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentDataModelImplCopyWith<$Res>
    implements $DocumentDataModelCopyWith<$Res> {
  factory _$$DocumentDataModelImplCopyWith(_$DocumentDataModelImpl value,
          $Res Function(_$DocumentDataModelImpl) then) =
      __$$DocumentDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? documentType,
      String? documentStatus,
      String? uploadedUrl,
      String? errorTxt});
}

/// @nodoc
class __$$DocumentDataModelImplCopyWithImpl<$Res>
    extends _$DocumentDataModelCopyWithImpl<$Res, _$DocumentDataModelImpl>
    implements _$$DocumentDataModelImplCopyWith<$Res> {
  __$$DocumentDataModelImplCopyWithImpl(_$DocumentDataModelImpl _value,
      $Res Function(_$DocumentDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentType = freezed,
    Object? documentStatus = freezed,
    Object? uploadedUrl = freezed,
    Object? errorTxt = freezed,
  }) {
    return _then(_$DocumentDataModelImpl(
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentStatus: freezed == documentStatus
          ? _value.documentStatus
          : documentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedUrl: freezed == uploadedUrl
          ? _value.uploadedUrl
          : uploadedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      errorTxt: freezed == errorTxt
          ? _value.errorTxt
          : errorTxt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentDataModelImpl implements _DocumentDataModel {
  const _$DocumentDataModelImpl(
      {required this.documentType,
      required this.documentStatus,
      required this.uploadedUrl,
      required this.errorTxt});

  factory _$DocumentDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentDataModelImplFromJson(json);

  @override
  final String? documentType;
  @override
  final String? documentStatus;
  @override
  final String? uploadedUrl;
  @override
  final String? errorTxt;

  @override
  String toString() {
    return 'DocumentDataModel(documentType: $documentType, documentStatus: $documentStatus, uploadedUrl: $uploadedUrl, errorTxt: $errorTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentDataModelImpl &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentStatus, documentStatus) ||
                other.documentStatus == documentStatus) &&
            (identical(other.uploadedUrl, uploadedUrl) ||
                other.uploadedUrl == uploadedUrl) &&
            (identical(other.errorTxt, errorTxt) ||
                other.errorTxt == errorTxt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, documentType, documentStatus, uploadedUrl, errorTxt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentDataModelImplCopyWith<_$DocumentDataModelImpl> get copyWith =>
      __$$DocumentDataModelImplCopyWithImpl<_$DocumentDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentDataModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentDataModel implements DocumentDataModel {
  const factory _DocumentDataModel(
      {required final String? documentType,
      required final String? documentStatus,
      required final String? uploadedUrl,
      required final String? errorTxt}) = _$DocumentDataModelImpl;

  factory _DocumentDataModel.fromJson(Map<String, dynamic> json) =
      _$DocumentDataModelImpl.fromJson;

  @override
  String? get documentType;
  @override
  String? get documentStatus;
  @override
  String? get uploadedUrl;
  @override
  String? get errorTxt;
  @override
  @JsonKey(ignore: true)
  _$$DocumentDataModelImplCopyWith<_$DocumentDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchNotificationsResponseModel _$FetchNotificationsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchNotificationsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchNotificationsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<NotificationModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchNotificationsResponseModelCopyWith<FetchNotificationsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchNotificationsResponseModelCopyWith<$Res> {
  factory $FetchNotificationsResponseModelCopyWith(
          FetchNotificationsResponseModel value,
          $Res Function(FetchNotificationsResponseModel) then) =
      _$FetchNotificationsResponseModelCopyWithImpl<$Res,
          FetchNotificationsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<NotificationModel>? data});
}

/// @nodoc
class _$FetchNotificationsResponseModelCopyWithImpl<$Res,
        $Val extends FetchNotificationsResponseModel>
    implements $FetchNotificationsResponseModelCopyWith<$Res> {
  _$FetchNotificationsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<NotificationModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchNotificationsResponseModelImplCopyWith<$Res>
    implements $FetchNotificationsResponseModelCopyWith<$Res> {
  factory _$$FetchNotificationsResponseModelImplCopyWith(
          _$FetchNotificationsResponseModelImpl value,
          $Res Function(_$FetchNotificationsResponseModelImpl) then) =
      __$$FetchNotificationsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<NotificationModel>? data});
}

/// @nodoc
class __$$FetchNotificationsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchNotificationsResponseModelCopyWithImpl<$Res,
        _$FetchNotificationsResponseModelImpl>
    implements _$$FetchNotificationsResponseModelImplCopyWith<$Res> {
  __$$FetchNotificationsResponseModelImplCopyWithImpl(
      _$FetchNotificationsResponseModelImpl _value,
      $Res Function(_$FetchNotificationsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchNotificationsResponseModelImpl(
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
              as List<NotificationModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchNotificationsResponseModelImpl
    implements _FetchNotificationsResponseModel {
  const _$FetchNotificationsResponseModelImpl(
      {this.status, this.message, final List<NotificationModel>? data})
      : _data = data;

  factory _$FetchNotificationsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchNotificationsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<NotificationModel>? _data;
  @override
  List<NotificationModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchNotificationsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchNotificationsResponseModelImpl &&
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
  _$$FetchNotificationsResponseModelImplCopyWith<
          _$FetchNotificationsResponseModelImpl>
      get copyWith => __$$FetchNotificationsResponseModelImplCopyWithImpl<
          _$FetchNotificationsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchNotificationsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchNotificationsResponseModel
    implements FetchNotificationsResponseModel {
  const factory _FetchNotificationsResponseModel(
          {final int? status,
          final String? message,
          final List<NotificationModel>? data}) =
      _$FetchNotificationsResponseModelImpl;

  factory _FetchNotificationsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchNotificationsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<NotificationModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchNotificationsResponseModelImplCopyWith<
          _$FetchNotificationsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? topic,
      String? title,
      String? body,
      String? image,
      DateTime? createdAt});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? topic,
      String? title,
      String? body,
      String? image,
      DateTime? createdAt});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? topic = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$NotificationModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.topic,
      this.title,
      this.body,
      this.image,
      this.createdAt});

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? topic;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? image;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'NotificationModel(id: $id, topic: $topic, title: $title, body: $body, image: $image, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, topic, title, body, image, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {@JsonKey(name: '_id') final String? id,
      final String? topic,
      final String? title,
      final String? body,
      final String? image,
      final DateTime? createdAt}) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get topic;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get image;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchSubscriptionsResponseModel _$FetchSubscriptionsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchSubscriptionsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchSubscriptionsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SubscriptionDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchSubscriptionsResponseModelCopyWith<FetchSubscriptionsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchSubscriptionsResponseModelCopyWith<$Res> {
  factory $FetchSubscriptionsResponseModelCopyWith(
          FetchSubscriptionsResponseModel value,
          $Res Function(FetchSubscriptionsResponseModel) then) =
      _$FetchSubscriptionsResponseModelCopyWithImpl<$Res,
          FetchSubscriptionsResponseModel>;
  @useResult
  $Res call({int? status, String? message, SubscriptionDataModel? data});

  $SubscriptionDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchSubscriptionsResponseModelCopyWithImpl<$Res,
        $Val extends FetchSubscriptionsResponseModel>
    implements $FetchSubscriptionsResponseModelCopyWith<$Res> {
  _$FetchSubscriptionsResponseModelCopyWithImpl(this._value, this._then);

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
              as SubscriptionDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SubscriptionDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchSubscriptionsResponseModelImplCopyWith<$Res>
    implements $FetchSubscriptionsResponseModelCopyWith<$Res> {
  factory _$$FetchSubscriptionsResponseModelImplCopyWith(
          _$FetchSubscriptionsResponseModelImpl value,
          $Res Function(_$FetchSubscriptionsResponseModelImpl) then) =
      __$$FetchSubscriptionsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SubscriptionDataModel? data});

  @override
  $SubscriptionDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchSubscriptionsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchSubscriptionsResponseModelCopyWithImpl<$Res,
        _$FetchSubscriptionsResponseModelImpl>
    implements _$$FetchSubscriptionsResponseModelImplCopyWith<$Res> {
  __$$FetchSubscriptionsResponseModelImplCopyWithImpl(
      _$FetchSubscriptionsResponseModelImpl _value,
      $Res Function(_$FetchSubscriptionsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchSubscriptionsResponseModelImpl(
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
              as SubscriptionDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchSubscriptionsResponseModelImpl
    implements _FetchSubscriptionsResponseModel {
  const _$FetchSubscriptionsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchSubscriptionsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchSubscriptionsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SubscriptionDataModel? data;

  @override
  String toString() {
    return 'FetchSubscriptionsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchSubscriptionsResponseModelImpl &&
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
  _$$FetchSubscriptionsResponseModelImplCopyWith<
          _$FetchSubscriptionsResponseModelImpl>
      get copyWith => __$$FetchSubscriptionsResponseModelImplCopyWithImpl<
          _$FetchSubscriptionsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchSubscriptionsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchSubscriptionsResponseModel
    implements FetchSubscriptionsResponseModel {
  const factory _FetchSubscriptionsResponseModel(
          {final int? status,
          final String? message,
          final SubscriptionDataModel? data}) =
      _$FetchSubscriptionsResponseModelImpl;

  factory _FetchSubscriptionsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchSubscriptionsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SubscriptionDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchSubscriptionsResponseModelImplCopyWith<
          _$FetchSubscriptionsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubscriptionDataModel _$SubscriptionDataModelFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionDataModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionDataModel {
  bool? get subscribed => throw _privateConstructorUsedError;
  List<String>? get list => throw _privateConstructorUsedError;
  List<SubscriptionModel>? get subscriptions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionDataModelCopyWith<SubscriptionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDataModelCopyWith<$Res> {
  factory $SubscriptionDataModelCopyWith(SubscriptionDataModel value,
          $Res Function(SubscriptionDataModel) then) =
      _$SubscriptionDataModelCopyWithImpl<$Res, SubscriptionDataModel>;
  @useResult
  $Res call(
      {bool? subscribed,
      List<String>? list,
      List<SubscriptionModel>? subscriptions});
}

/// @nodoc
class _$SubscriptionDataModelCopyWithImpl<$Res,
        $Val extends SubscriptionDataModel>
    implements $SubscriptionDataModelCopyWith<$Res> {
  _$SubscriptionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = freezed,
    Object? list = freezed,
    Object? subscriptions = freezed,
  }) {
    return _then(_value.copyWith(
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscriptions: freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionDataModelImplCopyWith<$Res>
    implements $SubscriptionDataModelCopyWith<$Res> {
  factory _$$SubscriptionDataModelImplCopyWith(
          _$SubscriptionDataModelImpl value,
          $Res Function(_$SubscriptionDataModelImpl) then) =
      __$$SubscriptionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? subscribed,
      List<String>? list,
      List<SubscriptionModel>? subscriptions});
}

/// @nodoc
class __$$SubscriptionDataModelImplCopyWithImpl<$Res>
    extends _$SubscriptionDataModelCopyWithImpl<$Res,
        _$SubscriptionDataModelImpl>
    implements _$$SubscriptionDataModelImplCopyWith<$Res> {
  __$$SubscriptionDataModelImplCopyWithImpl(_$SubscriptionDataModelImpl _value,
      $Res Function(_$SubscriptionDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribed = freezed,
    Object? list = freezed,
    Object? subscriptions = freezed,
  }) {
    return _then(_$SubscriptionDataModelImpl(
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      subscriptions: freezed == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionDataModelImpl implements _SubscriptionDataModel {
  const _$SubscriptionDataModelImpl(
      {this.subscribed,
      final List<String>? list,
      final List<SubscriptionModel>? subscriptions})
      : _list = list,
        _subscriptions = subscriptions;

  factory _$SubscriptionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDataModelImplFromJson(json);

  @override
  final bool? subscribed;
  final List<String>? _list;
  @override
  List<String>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubscriptionModel>? _subscriptions;
  @override
  List<SubscriptionModel>? get subscriptions {
    final value = _subscriptions;
    if (value == null) return null;
    if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubscriptionDataModel(subscribed: $subscribed, list: $list, subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDataModelImpl &&
            (identical(other.subscribed, subscribed) ||
                other.subscribed == subscribed) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscribed,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_subscriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDataModelImplCopyWith<_$SubscriptionDataModelImpl>
      get copyWith => __$$SubscriptionDataModelImplCopyWithImpl<
          _$SubscriptionDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDataModelImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionDataModel implements SubscriptionDataModel {
  const factory _SubscriptionDataModel(
          {final bool? subscribed,
          final List<String>? list,
          final List<SubscriptionModel>? subscriptions}) =
      _$SubscriptionDataModelImpl;

  factory _SubscriptionDataModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDataModelImpl.fromJson;

  @override
  bool? get subscribed;
  @override
  List<String>? get list;
  @override
  List<SubscriptionModel>? get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionDataModelImplCopyWith<_$SubscriptionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
