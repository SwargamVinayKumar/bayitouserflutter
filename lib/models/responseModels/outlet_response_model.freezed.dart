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
  List<TableModel>? get tables => throw _privateConstructorUsedError;
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
  LocationModel? get location => throw _privateConstructorUsedError;
  DeviceDetails? get deviceDetails => throw _privateConstructorUsedError;

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
      List<TableModel>? tables,
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
      LocationModel? location,
      DeviceDetails? deviceDetails});

  $LocationModelCopyWith<$Res>? get location;
  $DeviceDetailsCopyWith<$Res>? get deviceDetails;
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
              as List<TableModel>?,
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
              as LocationModel?,
      deviceDetails: freezed == deviceDetails
          ? _value.deviceDetails
          : deviceDetails // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
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
abstract class _$$OutletModelImplCopyWith<$Res>
    implements $OutletModelCopyWith<$Res> {
  factory _$$OutletModelImplCopyWith(
          _$OutletModelImpl value, $Res Function(_$OutletModelImpl) then) =
      __$$OutletModelImplCopyWithImpl<$Res>;
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
      List<TableModel>? tables,
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
      LocationModel? location,
      DeviceDetails? deviceDetails});

  @override
  $LocationModelCopyWith<$Res>? get location;
  @override
  $DeviceDetailsCopyWith<$Res>? get deviceDetails;
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
    return _then(_$OutletModelImpl(
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
              as List<TableModel>?,
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
              as LocationModel?,
      deviceDetails: freezed == deviceDetails
          ? _value.deviceDetails
          : deviceDetails // ignore: cast_nullable_to_non_nullable
              as DeviceDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutletModelImpl implements _OutletModel {
  const _$OutletModelImpl(
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
      final List<TableModel>? tables,
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

  factory _$OutletModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutletModelImplFromJson(json);

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

  final List<TableModel>? _tables;
  @override
  List<TableModel>? get tables {
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
  final LocationModel? location;
  @override
  final DeviceDetails? deviceDetails;

  @override
  String toString() {
    return 'OutletModel(id: $id, outletType: $outletType, approvalStatus: $approvalStatus, reason: $reason, profilePic: $profilePic, mobile: $mobile, otp: $otp, name: $name, email: $email, images: $images, tables: $tables, blocked: $blocked, version: $version, daySlots: $daySlots, createdAt: $createdAt, updatedAt: $updatedAt, aboutBusiness: $aboutBusiness, businessLicence: $businessLicence, businessLogo: $businessLogo, businessName: $businessName, fssaiId: $fssaiId, gstIn: $gstIn, location: $location, deviceDetails: $deviceDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutletModelImpl &&
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
      final List<TableModel>? tables,
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
      final LocationModel? location,
      final DeviceDetails? deviceDetails}) = _$OutletModelImpl;

  factory _OutletModel.fromJson(Map<String, dynamic> json) =
      _$OutletModelImpl.fromJson;

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
  List<TableModel>? get tables;
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
  LocationModel? get location;
  @override
  DeviceDetails? get deviceDetails;
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
  OutletModel? get data => throw _privateConstructorUsedError;

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
  $Res call({int? status, String? message, OutletModel? data});

  $OutletModelCopyWith<$Res>? get data;
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
              as OutletModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OutletModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OutletModelCopyWith<$Res>(_value.data!, (value) {
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
  $Res call({int? status, String? message, OutletModel? data});

  @override
  $OutletModelCopyWith<$Res>? get data;
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
              as OutletModel?,
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
  final OutletModel? data;

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
      final OutletModel? data}) = _$OutletDetailsResponseModelImpl;

  factory _OutletDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$OutletDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  OutletModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$OutletDetailsResponseModelImplCopyWith<_$OutletDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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
