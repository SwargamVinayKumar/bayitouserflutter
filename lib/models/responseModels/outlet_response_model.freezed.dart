// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlet_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchOutletsResponse _$FetchOutletsResponseFromJson(Map<String, dynamic> json) {
  return _FetchOutletsResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchOutletsResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<OutletModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchOutletsResponseCopyWith<FetchOutletsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOutletsResponseCopyWith<$Res> {
  factory $FetchOutletsResponseCopyWith(FetchOutletsResponse value,
          $Res Function(FetchOutletsResponse) then) =
      _$FetchOutletsResponseCopyWithImpl<$Res, FetchOutletsResponse>;
  @useResult
  $Res call({int? status, String? message, List<OutletModel>? data});
}

/// @nodoc
class _$FetchOutletsResponseCopyWithImpl<$Res,
        $Val extends FetchOutletsResponse>
    implements $FetchOutletsResponseCopyWith<$Res> {
  _$FetchOutletsResponseCopyWithImpl(this._value, this._then);

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
              as List<OutletModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchOutletsResponseImplCopyWith<$Res>
    implements $FetchOutletsResponseCopyWith<$Res> {
  factory _$$FetchOutletsResponseImplCopyWith(_$FetchOutletsResponseImpl value,
          $Res Function(_$FetchOutletsResponseImpl) then) =
      __$$FetchOutletsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<OutletModel>? data});
}

/// @nodoc
class __$$FetchOutletsResponseImplCopyWithImpl<$Res>
    extends _$FetchOutletsResponseCopyWithImpl<$Res, _$FetchOutletsResponseImpl>
    implements _$$FetchOutletsResponseImplCopyWith<$Res> {
  __$$FetchOutletsResponseImplCopyWithImpl(_$FetchOutletsResponseImpl _value,
      $Res Function(_$FetchOutletsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchOutletsResponseImpl(
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
              as List<OutletModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchOutletsResponseImpl implements _FetchOutletsResponse {
  const _$FetchOutletsResponseImpl(
      {this.status, this.message, final List<OutletModel>? data})
      : _data = data;

  factory _$FetchOutletsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchOutletsResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<OutletModel>? _data;
  @override
  List<OutletModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchOutletsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOutletsResponseImpl &&
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
  _$$FetchOutletsResponseImplCopyWith<_$FetchOutletsResponseImpl>
      get copyWith =>
          __$$FetchOutletsResponseImplCopyWithImpl<_$FetchOutletsResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchOutletsResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchOutletsResponse implements FetchOutletsResponse {
  const factory _FetchOutletsResponse(
      {final int? status,
      final String? message,
      final List<OutletModel>? data}) = _$FetchOutletsResponseImpl;

  factory _FetchOutletsResponse.fromJson(Map<String, dynamic> json) =
      _$FetchOutletsResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<OutletModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchOutletsResponseImplCopyWith<_$FetchOutletsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OutletModel _$OutletModelFromJson(Map<String, dynamic> json) {
  return _OutletModel.fromJson(json);
}

/// @nodoc
mixin _$OutletModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get outletType => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get businessLogo => throw _privateConstructorUsedError;
  String? get businessLicence => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  String? get aboutBusiness => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  String? get fssaiId => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletModelCopyWith<OutletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletModelCopyWith<$Res> {
  factory $OutletModelCopyWith(
          OutletModel value, $Res Function(OutletModel) then) =
      _$OutletModelCopyWithImpl<$Res, OutletModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? outletType,
      int? mobile,
      String? name,
      String? email,
      String? businessLogo,
      String? businessLicence,
      String? businessName,
      String? aboutBusiness,
      String? gstIn,
      String? fssaiId,
      LocationModel? location});

  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$OutletModelCopyWithImpl<$Res, $Val extends OutletModel>
    implements $OutletModelCopyWith<$Res> {
  _$OutletModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletType = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? businessLogo = freezed,
    Object? businessLicence = freezed,
    Object? businessName = freezed,
    Object? aboutBusiness = freezed,
    Object? gstIn = freezed,
    Object? fssaiId = freezed,
    Object? location = freezed,
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
      businessLogo: freezed == businessLogo
          ? _value.businessLogo
          : businessLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLicence: freezed == businessLicence
          ? _value.businessLicence
          : businessLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutBusiness: freezed == aboutBusiness
          ? _value.aboutBusiness
          : aboutBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      fssaiId: freezed == fssaiId
          ? _value.fssaiId
          : fssaiId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ) as $Val);
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
abstract class _$$OutletModelImplCopyWith<$Res>
    implements $OutletModelCopyWith<$Res> {
  factory _$$OutletModelImplCopyWith(
          _$OutletModelImpl value, $Res Function(_$OutletModelImpl) then) =
      __$$OutletModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? outletType,
      int? mobile,
      String? name,
      String? email,
      String? businessLogo,
      String? businessLicence,
      String? businessName,
      String? aboutBusiness,
      String? gstIn,
      String? fssaiId,
      LocationModel? location});

  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$OutletModelImplCopyWithImpl<$Res>
    extends _$OutletModelCopyWithImpl<$Res, _$OutletModelImpl>
    implements _$$OutletModelImplCopyWith<$Res> {
  __$$OutletModelImplCopyWithImpl(
      _$OutletModelImpl _value, $Res Function(_$OutletModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletType = freezed,
    Object? mobile = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? businessLogo = freezed,
    Object? businessLicence = freezed,
    Object? businessName = freezed,
    Object? aboutBusiness = freezed,
    Object? gstIn = freezed,
    Object? fssaiId = freezed,
    Object? location = freezed,
  }) {
    return _then(_$OutletModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      outletType: freezed == outletType
          ? _value.outletType
          : outletType // ignore: cast_nullable_to_non_nullable
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
      businessLogo: freezed == businessLogo
          ? _value.businessLogo
          : businessLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLicence: freezed == businessLicence
          ? _value.businessLicence
          : businessLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutBusiness: freezed == aboutBusiness
          ? _value.aboutBusiness
          : aboutBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      fssaiId: freezed == fssaiId
          ? _value.fssaiId
          : fssaiId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletModelImpl implements _OutletModel {
  const _$OutletModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.outletType,
      this.mobile,
      this.name,
      this.email,
      this.businessLogo,
      this.businessLicence,
      this.businessName,
      this.aboutBusiness,
      this.gstIn,
      this.fssaiId,
      this.location});

  factory _$OutletModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? outletType;
  @override
  final int? mobile;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? businessLogo;
  @override
  final String? businessLicence;
  @override
  final String? businessName;
  @override
  final String? aboutBusiness;
  @override
  final String? gstIn;
  @override
  final String? fssaiId;
  @override
  final LocationModel? location;

  @override
  String toString() {
    return 'OutletModel(id: $id, outletType: $outletType, mobile: $mobile, name: $name, email: $email, businessLogo: $businessLogo, businessLicence: $businessLicence, businessName: $businessName, aboutBusiness: $aboutBusiness, gstIn: $gstIn, fssaiId: $fssaiId, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outletType, outletType) ||
                other.outletType == outletType) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.businessLogo, businessLogo) ||
                other.businessLogo == businessLogo) &&
            (identical(other.businessLicence, businessLicence) ||
                other.businessLicence == businessLicence) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.aboutBusiness, aboutBusiness) ||
                other.aboutBusiness == aboutBusiness) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.fssaiId, fssaiId) || other.fssaiId == fssaiId) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      outletType,
      mobile,
      name,
      email,
      businessLogo,
      businessLicence,
      businessName,
      aboutBusiness,
      gstIn,
      fssaiId,
      location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletModelImplCopyWith<_$OutletModelImpl> get copyWith =>
      __$$OutletModelImplCopyWithImpl<_$OutletModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletModelImplToJson(
      this,
    );
  }
}

abstract class _OutletModel implements OutletModel {
  const factory _OutletModel(
      {@JsonKey(name: '_id') final String? id,
      final String? outletType,
      final int? mobile,
      final String? name,
      final String? email,
      final String? businessLogo,
      final String? businessLicence,
      final String? businessName,
      final String? aboutBusiness,
      final String? gstIn,
      final String? fssaiId,
      final LocationModel? location}) = _$OutletModelImpl;

  factory _OutletModel.fromJson(Map<String, dynamic> json) =
      _$OutletModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get outletType;
  @override
  int? get mobile;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get businessLogo;
  @override
  String? get businessLicence;
  @override
  String? get businessName;
  @override
  String? get aboutBusiness;
  @override
  String? get gstIn;
  @override
  String? get fssaiId;
  @override
  LocationModel? get location;
  @override
  @JsonKey(ignore: true)
  _$$OutletModelImplCopyWith<_$OutletModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutletDetailsResponseModel _$OutletDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OutletDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OutletDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OutletData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletDetailsResponseModelCopyWith<OutletDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletDetailsResponseModelCopyWith<$Res> {
  factory $OutletDetailsResponseModelCopyWith(OutletDetailsResponseModel value,
          $Res Function(OutletDetailsResponseModel) then) =
      _$OutletDetailsResponseModelCopyWithImpl<$Res,
          OutletDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, OutletData? data});

  $OutletDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OutletDetailsResponseModelCopyWithImpl<$Res,
        $Val extends OutletDetailsResponseModel>
    implements $OutletDetailsResponseModelCopyWith<$Res> {
  _$OutletDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as OutletData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutletDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OutletDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OutletDetailsResponseModelImplCopyWith<$Res>
    implements $OutletDetailsResponseModelCopyWith<$Res> {
  factory _$$OutletDetailsResponseModelImplCopyWith(
          _$OutletDetailsResponseModelImpl value,
          $Res Function(_$OutletDetailsResponseModelImpl) then) =
      __$$OutletDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, OutletData? data});

  @override
  $OutletDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OutletDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$OutletDetailsResponseModelCopyWithImpl<$Res,
        _$OutletDetailsResponseModelImpl>
    implements _$$OutletDetailsResponseModelImplCopyWith<$Res> {
  __$$OutletDetailsResponseModelImplCopyWithImpl(
      _$OutletDetailsResponseModelImpl _value,
      $Res Function(_$OutletDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$OutletDetailsResponseModelImpl(
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
              as OutletData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletDetailsResponseModelImpl implements _OutletDetailsResponseModel {
  const _$OutletDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$OutletDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OutletDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final OutletData? data;

  @override
  String toString() {
    return 'OutletDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletDetailsResponseModelImpl &&
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
  _$$OutletDetailsResponseModelImplCopyWith<_$OutletDetailsResponseModelImpl>
      get copyWith => __$$OutletDetailsResponseModelImplCopyWithImpl<
          _$OutletDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OutletDetailsResponseModel
    implements OutletDetailsResponseModel {
  const factory _OutletDetailsResponseModel(
      {final int? status,
      final String? message,
      final OutletData? data}) = _$OutletDetailsResponseModelImpl;

  factory _OutletDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$OutletDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  OutletData? get data;
  @override
  @JsonKey(ignore: true)
  _$$OutletDetailsResponseModelImplCopyWith<_$OutletDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OutletData _$OutletDataFromJson(Map<String, dynamic> json) {
  return _OutletData.fromJson(json);
}

/// @nodoc
mixin _$OutletData {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get outletType => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  int? get otp => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  List<OutletTable>? get tables => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  List<DaySlot>? get daySlots => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get aboutBusiness => throw _privateConstructorUsedError;
  String? get businessLicence => throw _privateConstructorUsedError;
  String? get businessLogo => throw _privateConstructorUsedError;
  String? get businessName => throw _privateConstructorUsedError;
  String? get fssaiId => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  DeviceDetails? get deviceDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletDataCopyWith<OutletData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletDataCopyWith<$Res> {
  factory $OutletDataCopyWith(
          OutletData value, $Res Function(OutletData) then) =
      _$OutletDataCopyWithImpl<$Res, OutletData>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? outletType,
      String? approvalStatus,
      String? reason,
      String? profilePic,
      int? mobile,
      int? otp,
      String? name,
      String? email,
      List<String>? images,
      List<OutletTable>? tables,
      bool? blocked,
      String? version,
      List<DaySlot>? daySlots,
      String? createdAt,
      String? updatedAt,
      String? aboutBusiness,
      String? businessLicence,
      String? businessLogo,
      String? businessName,
      String? fssaiId,
      String? gstIn,
      Location? location,
      DeviceDetails? deviceDetails});

  $LocationCopyWith<$Res>? get location;
  $DeviceDetailsCopyWith<$Res>? get deviceDetails;
}

/// @nodoc
class _$OutletDataCopyWithImpl<$Res, $Val extends OutletData>
    implements $OutletDataCopyWith<$Res> {
  _$OutletDataCopyWithImpl(this._value, this._then);

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
    Object? profilePic = freezed,
    Object? mobile = freezed,
    Object? otp = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? images = freezed,
    Object? tables = freezed,
    Object? blocked = freezed,
    Object? version = freezed,
    Object? daySlots = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? aboutBusiness = freezed,
    Object? businessLicence = freezed,
    Object? businessLogo = freezed,
    Object? businessName = freezed,
    Object? fssaiId = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? deviceDetails = freezed,
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
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tables: freezed == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<OutletTable>?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      daySlots: freezed == daySlots
          ? _value.daySlots
          : daySlots // ignore: cast_nullable_to_non_nullable
              as List<DaySlot>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutBusiness: freezed == aboutBusiness
          ? _value.aboutBusiness
          : aboutBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLicence: freezed == businessLicence
          ? _value.businessLicence
          : businessLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLogo: freezed == businessLogo
          ? _value.businessLogo
          : businessLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      fssaiId: freezed == fssaiId
          ? _value.fssaiId
          : fssaiId // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      deviceDetails: freezed == deviceDetails
          ? _value.deviceDetails
          : deviceDetails // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceDetailsCopyWith<$Res>? get deviceDetails {
    if (_value.deviceDetails == null) {
      return null;
    }

    return $DeviceDetailsCopyWith<$Res>(_value.deviceDetails!, (value) {
      return _then(_value.copyWith(deviceDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OutletDataImplCopyWith<$Res>
    implements $OutletDataCopyWith<$Res> {
  factory _$$OutletDataImplCopyWith(
          _$OutletDataImpl value, $Res Function(_$OutletDataImpl) then) =
      __$$OutletDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? outletType,
      String? approvalStatus,
      String? reason,
      String? profilePic,
      int? mobile,
      int? otp,
      String? name,
      String? email,
      List<String>? images,
      List<OutletTable>? tables,
      bool? blocked,
      String? version,
      List<DaySlot>? daySlots,
      String? createdAt,
      String? updatedAt,
      String? aboutBusiness,
      String? businessLicence,
      String? businessLogo,
      String? businessName,
      String? fssaiId,
      String? gstIn,
      Location? location,
      DeviceDetails? deviceDetails});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $DeviceDetailsCopyWith<$Res>? get deviceDetails;
}

/// @nodoc
class __$$OutletDataImplCopyWithImpl<$Res>
    extends _$OutletDataCopyWithImpl<$Res, _$OutletDataImpl>
    implements _$$OutletDataImplCopyWith<$Res> {
  __$$OutletDataImplCopyWithImpl(
      _$OutletDataImpl _value, $Res Function(_$OutletDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletType = freezed,
    Object? approvalStatus = freezed,
    Object? reason = freezed,
    Object? profilePic = freezed,
    Object? mobile = freezed,
    Object? otp = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? images = freezed,
    Object? tables = freezed,
    Object? blocked = freezed,
    Object? version = freezed,
    Object? daySlots = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? aboutBusiness = freezed,
    Object? businessLicence = freezed,
    Object? businessLogo = freezed,
    Object? businessName = freezed,
    Object? fssaiId = freezed,
    Object? gstIn = freezed,
    Object? location = freezed,
    Object? deviceDetails = freezed,
  }) {
    return _then(_$OutletDataImpl(
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
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tables: freezed == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<OutletTable>?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      daySlots: freezed == daySlots
          ? _value._daySlots
          : daySlots // ignore: cast_nullable_to_non_nullable
              as List<DaySlot>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutBusiness: freezed == aboutBusiness
          ? _value.aboutBusiness
          : aboutBusiness // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLicence: freezed == businessLicence
          ? _value.businessLicence
          : businessLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      businessLogo: freezed == businessLogo
          ? _value.businessLogo
          : businessLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      businessName: freezed == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      fssaiId: freezed == fssaiId
          ? _value.fssaiId
          : fssaiId // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      deviceDetails: freezed == deviceDetails
          ? _value.deviceDetails
          : deviceDetails // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletDataImpl implements _OutletData {
  const _$OutletDataImpl(
      {@JsonKey(name: "_id") this.id,
      this.outletType,
      this.approvalStatus,
      this.reason,
      this.profilePic,
      this.mobile,
      this.otp,
      this.name,
      this.email,
      final List<String>? images,
      final List<OutletTable>? tables,
      this.blocked,
      this.version,
      final List<DaySlot>? daySlots,
      this.createdAt,
      this.updatedAt,
      this.aboutBusiness,
      this.businessLicence,
      this.businessLogo,
      this.businessName,
      this.fssaiId,
      this.gstIn,
      this.location,
      this.deviceDetails})
      : _images = images,
        _tables = tables,
        _daySlots = daySlots;

  factory _$OutletDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletDataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? outletType;
  @override
  final String? approvalStatus;
  @override
  final String? reason;
  @override
  final String? profilePic;
  @override
  final int? mobile;
  @override
  final int? otp;
  @override
  final String? name;
  @override
  final String? email;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OutletTable>? _tables;
  @override
  List<OutletTable>? get tables {
    final value = _tables;
    if (value == null) return null;
    if (_tables is EqualUnmodifiableListView) return _tables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? blocked;
  @override
  final String? version;
  final List<DaySlot>? _daySlots;
  @override
  List<DaySlot>? get daySlots {
    final value = _daySlots;
    if (value == null) return null;
    if (_daySlots is EqualUnmodifiableListView) return _daySlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? aboutBusiness;
  @override
  final String? businessLicence;
  @override
  final String? businessLogo;
  @override
  final String? businessName;
  @override
  final String? fssaiId;
  @override
  final String? gstIn;
  @override
  final Location? location;
  @override
  final DeviceDetails? deviceDetails;

  @override
  String toString() {
    return 'OutletData(id: $id, outletType: $outletType, approvalStatus: $approvalStatus, reason: $reason, profilePic: $profilePic, mobile: $mobile, otp: $otp, name: $name, email: $email, images: $images, tables: $tables, blocked: $blocked, version: $version, daySlots: $daySlots, createdAt: $createdAt, updatedAt: $updatedAt, aboutBusiness: $aboutBusiness, businessLicence: $businessLicence, businessLogo: $businessLogo, businessName: $businessName, fssaiId: $fssaiId, gstIn: $gstIn, location: $location, deviceDetails: $deviceDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outletType, outletType) ||
                other.outletType == outletType) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._daySlots, _daySlots) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.aboutBusiness, aboutBusiness) ||
                other.aboutBusiness == aboutBusiness) &&
            (identical(other.businessLicence, businessLicence) ||
                other.businessLicence == businessLicence) &&
            (identical(other.businessLogo, businessLogo) ||
                other.businessLogo == businessLogo) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.fssaiId, fssaiId) || other.fssaiId == fssaiId) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.deviceDetails, deviceDetails) ||
                other.deviceDetails == deviceDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        outletType,
        approvalStatus,
        reason,
        profilePic,
        mobile,
        otp,
        name,
        email,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_tables),
        blocked,
        version,
        const DeepCollectionEquality().hash(_daySlots),
        createdAt,
        updatedAt,
        aboutBusiness,
        businessLicence,
        businessLogo,
        businessName,
        fssaiId,
        gstIn,
        location,
        deviceDetails
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletDataImplCopyWith<_$OutletDataImpl> get copyWith =>
      __$$OutletDataImplCopyWithImpl<_$OutletDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletDataImplToJson(
      this,
    );
  }
}

abstract class _OutletData implements OutletData {
  const factory _OutletData(
      {@JsonKey(name: "_id") final String? id,
      final String? outletType,
      final String? approvalStatus,
      final String? reason,
      final String? profilePic,
      final int? mobile,
      final int? otp,
      final String? name,
      final String? email,
      final List<String>? images,
      final List<OutletTable>? tables,
      final bool? blocked,
      final String? version,
      final List<DaySlot>? daySlots,
      final String? createdAt,
      final String? updatedAt,
      final String? aboutBusiness,
      final String? businessLicence,
      final String? businessLogo,
      final String? businessName,
      final String? fssaiId,
      final String? gstIn,
      final Location? location,
      final DeviceDetails? deviceDetails}) = _$OutletDataImpl;

  factory _OutletData.fromJson(Map<String, dynamic> json) =
      _$OutletDataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get outletType;
  @override
  String? get approvalStatus;
  @override
  String? get reason;
  @override
  String? get profilePic;
  @override
  int? get mobile;
  @override
  int? get otp;
  @override
  String? get name;
  @override
  String? get email;
  @override
  List<String>? get images;
  @override
  List<OutletTable>? get tables;
  @override
  bool? get blocked;
  @override
  String? get version;
  @override
  List<DaySlot>? get daySlots;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get aboutBusiness;
  @override
  String? get businessLicence;
  @override
  String? get businessLogo;
  @override
  String? get businessName;
  @override
  String? get fssaiId;
  @override
  String? get gstIn;
  @override
  Location? get location;
  @override
  DeviceDetails? get deviceDetails;
  @override
  @JsonKey(ignore: true)
  _$$OutletDataImplCopyWith<_$OutletDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutletTable _$OutletTableFromJson(Map<String, dynamic> json) {
  return _OutletTable.fromJson(json);
}

/// @nodoc
mixin _$OutletTable {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get outletId => throw _privateConstructorUsedError;
  String? get tableNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get seatType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  int? get seatCapacity => throw _privateConstructorUsedError;
  List<Seat>? get seats => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutletTableCopyWith<OutletTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutletTableCopyWith<$Res> {
  factory $OutletTableCopyWith(
          OutletTable value, $Res Function(OutletTable) then) =
      _$OutletTableCopyWithImpl<$Res, OutletTable>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? outletId,
      String? tableNumber,
      String? description,
      String? seatType,
      List<String>? images,
      bool? available,
      int? seatCapacity,
      List<Seat>? seats,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$OutletTableCopyWithImpl<$Res, $Val extends OutletTable>
    implements $OutletTableCopyWith<$Res> {
  _$OutletTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletId = freezed,
    Object? tableNumber = freezed,
    Object? description = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? seatCapacity = freezed,
    Object? seats = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seatType: freezed == seatType
          ? _value.seatType
          : seatType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      seatCapacity: freezed == seatCapacity
          ? _value.seatCapacity
          : seatCapacity // ignore: cast_nullable_to_non_nullable
              as int?,
      seats: freezed == seats
          ? _value.seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>?,
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
abstract class _$$OutletTableImplCopyWith<$Res>
    implements $OutletTableCopyWith<$Res> {
  factory _$$OutletTableImplCopyWith(
          _$OutletTableImpl value, $Res Function(_$OutletTableImpl) then) =
      __$$OutletTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? outletId,
      String? tableNumber,
      String? description,
      String? seatType,
      List<String>? images,
      bool? available,
      int? seatCapacity,
      List<Seat>? seats,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$OutletTableImplCopyWithImpl<$Res>
    extends _$OutletTableCopyWithImpl<$Res, _$OutletTableImpl>
    implements _$$OutletTableImplCopyWith<$Res> {
  __$$OutletTableImplCopyWithImpl(
      _$OutletTableImpl _value, $Res Function(_$OutletTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? outletId = freezed,
    Object? tableNumber = freezed,
    Object? description = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? seatCapacity = freezed,
    Object? seats = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OutletTableImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seatType: freezed == seatType
          ? _value.seatType
          : seatType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      seatCapacity: freezed == seatCapacity
          ? _value.seatCapacity
          : seatCapacity // ignore: cast_nullable_to_non_nullable
              as int?,
      seats: freezed == seats
          ? _value._seats
          : seats // ignore: cast_nullable_to_non_nullable
              as List<Seat>?,
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
class _$OutletTableImpl implements _OutletTable {
  const _$OutletTableImpl(
      {@JsonKey(name: "_id") this.id,
      this.outletId,
      this.tableNumber,
      this.description,
      this.seatType,
      final List<String>? images,
      this.available,
      this.seatCapacity,
      final List<Seat>? seats,
      this.createdAt,
      this.updatedAt})
      : _images = images,
        _seats = seats;

  factory _$OutletTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletTableImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? outletId;
  @override
  final String? tableNumber;
  @override
  final String? description;
  @override
  final String? seatType;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? available;
  @override
  final int? seatCapacity;
  final List<Seat>? _seats;
  @override
  List<Seat>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'OutletTable(id: $id, outletId: $outletId, tableNumber: $tableNumber, description: $description, seatType: $seatType, images: $images, available: $available, seatCapacity: $seatCapacity, seats: $seats, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.seatType, seatType) ||
                other.seatType == seatType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.seatCapacity, seatCapacity) ||
                other.seatCapacity == seatCapacity) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
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
      outletId,
      tableNumber,
      description,
      seatType,
      const DeepCollectionEquality().hash(_images),
      available,
      seatCapacity,
      const DeepCollectionEquality().hash(_seats),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutletTableImplCopyWith<_$OutletTableImpl> get copyWith =>
      __$$OutletTableImplCopyWithImpl<_$OutletTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutletTableImplToJson(
      this,
    );
  }
}

abstract class _OutletTable implements OutletTable {
  const factory _OutletTable(
      {@JsonKey(name: "_id") final String? id,
      final String? outletId,
      final String? tableNumber,
      final String? description,
      final String? seatType,
      final List<String>? images,
      final bool? available,
      final int? seatCapacity,
      final List<Seat>? seats,
      final String? createdAt,
      final String? updatedAt}) = _$OutletTableImpl;

  factory _OutletTable.fromJson(Map<String, dynamic> json) =
      _$OutletTableImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get outletId;
  @override
  String? get tableNumber;
  @override
  String? get description;
  @override
  String? get seatType;
  @override
  List<String>? get images;
  @override
  bool? get available;
  @override
  int? get seatCapacity;
  @override
  List<Seat>? get seats;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OutletTableImplCopyWith<_$OutletTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Seat _$SeatFromJson(Map<String, dynamic> json) {
  return _Seat.fromJson(json);
}

/// @nodoc
mixin _$Seat {
  String? get seatNumber => throw _privateConstructorUsedError;
  String? get seatType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  Charges? get charges => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatCopyWith<Seat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatCopyWith<$Res> {
  factory $SeatCopyWith(Seat value, $Res Function(Seat) then) =
      _$SeatCopyWithImpl<$Res, Seat>;
  @useResult
  $Res call(
      {String? seatNumber,
      String? seatType,
      List<String>? images,
      bool? available,
      Charges? charges,
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});

  $ChargesCopyWith<$Res>? get charges;
}

/// @nodoc
class _$SeatCopyWithImpl<$Res, $Val extends Seat>
    implements $SeatCopyWith<$Res> {
  _$SeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatNumber = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? charges = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      seatNumber: freezed == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      seatType: freezed == seatType
          ? _value.seatType
          : seatType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as Charges?,
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

  @override
  @pragma('vm:prefer-inline')
  $ChargesCopyWith<$Res>? get charges {
    if (_value.charges == null) {
      return null;
    }

    return $ChargesCopyWith<$Res>(_value.charges!, (value) {
      return _then(_value.copyWith(charges: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SeatImplCopyWith<$Res> implements $SeatCopyWith<$Res> {
  factory _$$SeatImplCopyWith(
          _$SeatImpl value, $Res Function(_$SeatImpl) then) =
      __$$SeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? seatNumber,
      String? seatType,
      List<String>? images,
      bool? available,
      Charges? charges,
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});

  @override
  $ChargesCopyWith<$Res>? get charges;
}

/// @nodoc
class __$$SeatImplCopyWithImpl<$Res>
    extends _$SeatCopyWithImpl<$Res, _$SeatImpl>
    implements _$$SeatImplCopyWith<$Res> {
  __$$SeatImplCopyWithImpl(_$SeatImpl _value, $Res Function(_$SeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seatNumber = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? charges = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SeatImpl(
      seatNumber: freezed == seatNumber
          ? _value.seatNumber
          : seatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      seatType: freezed == seatType
          ? _value.seatType
          : seatType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as Charges?,
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
class _$SeatImpl implements _Seat {
  const _$SeatImpl(
      {this.seatNumber,
      this.seatType,
      final List<String>? images,
      this.available,
      this.charges,
      @JsonKey(name: "_id") this.id,
      this.createdAt,
      this.updatedAt})
      : _images = images;

  factory _$SeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatImplFromJson(json);

  @override
  final String? seatNumber;
  @override
  final String? seatType;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? available;
  @override
  final Charges? charges;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Seat(seatNumber: $seatNumber, seatType: $seatType, images: $images, available: $available, charges: $charges, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatImpl &&
            (identical(other.seatNumber, seatNumber) ||
                other.seatNumber == seatNumber) &&
            (identical(other.seatType, seatType) ||
                other.seatType == seatType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.charges, charges) || other.charges == charges) &&
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
      seatNumber,
      seatType,
      const DeepCollectionEquality().hash(_images),
      available,
      charges,
      id,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      __$$SeatImplCopyWithImpl<_$SeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatImplToJson(
      this,
    );
  }
}

abstract class _Seat implements Seat {
  const factory _Seat(
      {final String? seatNumber,
      final String? seatType,
      final List<String>? images,
      final bool? available,
      final Charges? charges,
      @JsonKey(name: "_id") final String? id,
      final String? createdAt,
      final String? updatedAt}) = _$SeatImpl;

  factory _Seat.fromJson(Map<String, dynamic> json) = _$SeatImpl.fromJson;

  @override
  String? get seatNumber;
  @override
  String? get seatType;
  @override
  List<String>? get images;
  @override
  bool? get available;
  @override
  Charges? get charges;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SeatImplCopyWith<_$SeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Charges _$ChargesFromJson(Map<String, dynamic> json) {
  return _Charges.fromJson(json);
}

/// @nodoc
mixin _$Charges {
  int? get perHour => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargesCopyWith<Charges> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargesCopyWith<$Res> {
  factory $ChargesCopyWith(Charges value, $Res Function(Charges) then) =
      _$ChargesCopyWithImpl<$Res, Charges>;
  @useResult
  $Res call(
      {int? perHour,
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$ChargesCopyWithImpl<$Res, $Val extends Charges>
    implements $ChargesCopyWith<$Res> {
  _$ChargesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perHour = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$ChargesImplCopyWith<$Res> implements $ChargesCopyWith<$Res> {
  factory _$$ChargesImplCopyWith(
          _$ChargesImpl value, $Res Function(_$ChargesImpl) then) =
      __$$ChargesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? perHour,
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$ChargesImplCopyWithImpl<$Res>
    extends _$ChargesCopyWithImpl<$Res, _$ChargesImpl>
    implements _$$ChargesImplCopyWith<$Res> {
  __$$ChargesImplCopyWithImpl(
      _$ChargesImpl _value, $Res Function(_$ChargesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? perHour = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ChargesImpl(
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ChargesImpl implements _Charges {
  const _$ChargesImpl(
      {this.perHour,
      @JsonKey(name: "_id") this.id,
      this.createdAt,
      this.updatedAt});

  factory _$ChargesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargesImplFromJson(json);

  @override
  final int? perHour;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Charges(perHour: $perHour, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargesImpl &&
            (identical(other.perHour, perHour) || other.perHour == perHour) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, perHour, id, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChargesImplCopyWith<_$ChargesImpl> get copyWith =>
      __$$ChargesImplCopyWithImpl<_$ChargesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChargesImplToJson(
      this,
    );
  }
}

abstract class _Charges implements Charges {
  const factory _Charges(
      {final int? perHour,
      @JsonKey(name: "_id") final String? id,
      final String? createdAt,
      final String? updatedAt}) = _$ChargesImpl;

  factory _Charges.fromJson(Map<String, dynamic> json) = _$ChargesImpl.fromJson;

  @override
  int? get perHour;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChargesImplCopyWith<_$ChargesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DaySlot _$DaySlotFromJson(Map<String, dynamic> json) {
  return _DaySlot.fromJson(json);
}

/// @nodoc
mixin _$DaySlot {
  String? get day => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get startTime => throw _privateConstructorUsedError;
  int? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaySlotCopyWith<DaySlot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaySlotCopyWith<$Res> {
  factory $DaySlotCopyWith(DaySlot value, $Res Function(DaySlot) then) =
      _$DaySlotCopyWithImpl<$Res, DaySlot>;
  @useResult
  $Res call(
      {String? day,
      bool? status,
      int? startTime,
      int? endTime,
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$DaySlotCopyWithImpl<$Res, $Val extends DaySlot>
    implements $DaySlotCopyWith<$Res> {
  _$DaySlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? status = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$DaySlotImplCopyWith<$Res> implements $DaySlotCopyWith<$Res> {
  factory _$$DaySlotImplCopyWith(
          _$DaySlotImpl value, $Res Function(_$DaySlotImpl) then) =
      __$$DaySlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? day,
      bool? status,
      int? startTime,
      int? endTime,
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$DaySlotImplCopyWithImpl<$Res>
    extends _$DaySlotCopyWithImpl<$Res, _$DaySlotImpl>
    implements _$$DaySlotImplCopyWith<$Res> {
  __$$DaySlotImplCopyWithImpl(
      _$DaySlotImpl _value, $Res Function(_$DaySlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? status = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DaySlotImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as int?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$DaySlotImpl implements _DaySlot {
  const _$DaySlotImpl(
      {this.day,
      this.status,
      this.startTime,
      this.endTime,
      @JsonKey(name: "_id") this.id,
      this.createdAt,
      this.updatedAt});

  factory _$DaySlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$DaySlotImplFromJson(json);

  @override
  final String? day;
  @override
  final bool? status;
  @override
  final int? startTime;
  @override
  final int? endTime;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'DaySlot(day: $day, status: $status, startTime: $startTime, endTime: $endTime, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaySlotImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, status, startTime, endTime, id, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DaySlotImplCopyWith<_$DaySlotImpl> get copyWith =>
      __$$DaySlotImplCopyWithImpl<_$DaySlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DaySlotImplToJson(
      this,
    );
  }
}

abstract class _DaySlot implements DaySlot {
  const factory _DaySlot(
      {final String? day,
      final bool? status,
      final int? startTime,
      final int? endTime,
      @JsonKey(name: "_id") final String? id,
      final String? createdAt,
      final String? updatedAt}) = _$DaySlotImpl;

  factory _DaySlot.fromJson(Map<String, dynamic> json) = _$DaySlotImpl.fromJson;

  @override
  String? get day;
  @override
  bool? get status;
  @override
  int? get startTime;
  @override
  int? get endTime;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DaySlotImplCopyWith<_$DaySlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get landMark => throw _privateConstructorUsedError;
  int? get pinCode => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  List<dynamic>? get coordinates => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
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
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

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
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "_id") String? id,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
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
    return _then(_$LocationImpl(
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
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.address1,
      this.address2,
      this.city,
      this.state,
      this.landMark,
      this.pinCode,
      this.latitude,
      this.longitude,
      final List<dynamic>? coordinates,
      @JsonKey(name: "_id") this.id,
      this.createdAt,
      this.updatedAt})
      : _coordinates = coordinates;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

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
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Location(address1: $address1, address2: $address2, city: $city, state: $state, landMark: $landMark, pinCode: $pinCode, latitude: $latitude, longitude: $longitude, coordinates: $coordinates, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
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
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? address1,
      final String? address2,
      final String? city,
      final String? state,
      final String? landMark,
      final int? pinCode,
      final double? latitude,
      final double? longitude,
      final List<dynamic>? coordinates,
      @JsonKey(name: "_id") final String? id,
      final String? createdAt,
      final String? updatedAt}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

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
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DeviceDetails _$DeviceDetailsFromJson(Map<String, dynamic> json) {
  return _DeviceDetails.fromJson(json);
}

/// @nodoc
mixin _$DeviceDetails {
  String? get source => throw _privateConstructorUsedError;
  String? get imei => throw _privateConstructorUsedError;
  String? get deviceVersion => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceDetailsCopyWith<DeviceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDetailsCopyWith<$Res> {
  factory $DeviceDetailsCopyWith(
          DeviceDetails value, $Res Function(DeviceDetails) then) =
      _$DeviceDetailsCopyWithImpl<$Res, DeviceDetails>;
  @useResult
  $Res call(
      {String? source, String? imei, String? deviceVersion, String? deviceId});
}

/// @nodoc
class _$DeviceDetailsCopyWithImpl<$Res, $Val extends DeviceDetails>
    implements $DeviceDetailsCopyWith<$Res> {
  _$DeviceDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? imei = freezed,
    Object? deviceVersion = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      imei: freezed == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceVersion: freezed == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDetailsImplCopyWith<$Res>
    implements $DeviceDetailsCopyWith<$Res> {
  factory _$$DeviceDetailsImplCopyWith(
          _$DeviceDetailsImpl value, $Res Function(_$DeviceDetailsImpl) then) =
      __$$DeviceDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? source, String? imei, String? deviceVersion, String? deviceId});
}

/// @nodoc
class __$$DeviceDetailsImplCopyWithImpl<$Res>
    extends _$DeviceDetailsCopyWithImpl<$Res, _$DeviceDetailsImpl>
    implements _$$DeviceDetailsImplCopyWith<$Res> {
  __$$DeviceDetailsImplCopyWithImpl(
      _$DeviceDetailsImpl _value, $Res Function(_$DeviceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? imei = freezed,
    Object? deviceVersion = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$DeviceDetailsImpl(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      imei: freezed == imei
          ? _value.imei
          : imei // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceVersion: freezed == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDetailsImpl implements _DeviceDetails {
  const _$DeviceDetailsImpl(
      {this.source, this.imei, this.deviceVersion, this.deviceId});

  factory _$DeviceDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDetailsImplFromJson(json);

  @override
  final String? source;
  @override
  final String? imei;
  @override
  final String? deviceVersion;
  @override
  final String? deviceId;

  @override
  String toString() {
    return 'DeviceDetails(source: $source, imei: $imei, deviceVersion: $deviceVersion, deviceId: $deviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDetailsImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.imei, imei) || other.imei == imei) &&
            (identical(other.deviceVersion, deviceVersion) ||
                other.deviceVersion == deviceVersion) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, imei, deviceVersion, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDetailsImplCopyWith<_$DeviceDetailsImpl> get copyWith =>
      __$$DeviceDetailsImplCopyWithImpl<_$DeviceDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDetailsImplToJson(
      this,
    );
  }
}

abstract class _DeviceDetails implements DeviceDetails {
  const factory _DeviceDetails(
      {final String? source,
      final String? imei,
      final String? deviceVersion,
      final String? deviceId}) = _$DeviceDetailsImpl;

  factory _DeviceDetails.fromJson(Map<String, dynamic> json) =
      _$DeviceDetailsImpl.fromJson;

  @override
  String? get source;
  @override
  String? get imei;
  @override
  String? get deviceVersion;
  @override
  String? get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$DeviceDetailsImplCopyWith<_$DeviceDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
