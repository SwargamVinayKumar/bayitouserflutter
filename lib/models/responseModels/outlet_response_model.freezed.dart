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
  FetchOutletsDataModel? get data => throw _privateConstructorUsedError;

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
  $Res call({int? status, String? message, FetchOutletsDataModel? data});

  $FetchOutletsDataModelCopyWith<$Res>? get data;
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
              as FetchOutletsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FetchOutletsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FetchOutletsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
  $Res call({int? status, String? message, FetchOutletsDataModel? data});

  @override
  $FetchOutletsDataModelCopyWith<$Res>? get data;
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
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FetchOutletsDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchOutletsResponseImpl implements _FetchOutletsResponse {
  const _$FetchOutletsResponseImpl({this.status, this.message, this.data});

  factory _$FetchOutletsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchOutletsResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final FetchOutletsDataModel? data;

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
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

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
      final FetchOutletsDataModel? data}) = _$FetchOutletsResponseImpl;

  factory _FetchOutletsResponse.fromJson(Map<String, dynamic> json) =
      _$FetchOutletsResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  FetchOutletsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchOutletsResponseImplCopyWith<_$FetchOutletsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchOutletsDataModel _$FetchOutletsDataModelFromJson(
    Map<String, dynamic> json) {
  return _FetchOutletsDataModel.fromJson(json);
}

/// @nodoc
mixin _$FetchOutletsDataModel {
  List<OutletModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchOutletsDataModelCopyWith<FetchOutletsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOutletsDataModelCopyWith<$Res> {
  factory $FetchOutletsDataModelCopyWith(FetchOutletsDataModel value,
          $Res Function(FetchOutletsDataModel) then) =
      _$FetchOutletsDataModelCopyWithImpl<$Res, FetchOutletsDataModel>;
  @useResult
  $Res call({List<OutletModel>? data});
}

/// @nodoc
class _$FetchOutletsDataModelCopyWithImpl<$Res,
        $Val extends FetchOutletsDataModel>
    implements $FetchOutletsDataModelCopyWith<$Res> {
  _$FetchOutletsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchOutletsDataModelImplCopyWith<$Res>
    implements $FetchOutletsDataModelCopyWith<$Res> {
  factory _$$FetchOutletsDataModelImplCopyWith(
          _$FetchOutletsDataModelImpl value,
          $Res Function(_$FetchOutletsDataModelImpl) then) =
      __$$FetchOutletsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OutletModel>? data});
}

/// @nodoc
class __$$FetchOutletsDataModelImplCopyWithImpl<$Res>
    extends _$FetchOutletsDataModelCopyWithImpl<$Res,
        _$FetchOutletsDataModelImpl>
    implements _$$FetchOutletsDataModelImplCopyWith<$Res> {
  __$$FetchOutletsDataModelImplCopyWithImpl(_$FetchOutletsDataModelImpl _value,
      $Res Function(_$FetchOutletsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FetchOutletsDataModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OutletModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchOutletsDataModelImpl implements _FetchOutletsDataModel {
  const _$FetchOutletsDataModelImpl({final List<OutletModel>? data})
      : _data = data;

  factory _$FetchOutletsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchOutletsDataModelImplFromJson(json);

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
    return 'FetchOutletsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOutletsDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchOutletsDataModelImplCopyWith<_$FetchOutletsDataModelImpl>
      get copyWith => __$$FetchOutletsDataModelImplCopyWithImpl<
          _$FetchOutletsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchOutletsDataModelImplToJson(
      this,
    );
  }
}

abstract class _FetchOutletsDataModel implements FetchOutletsDataModel {
  const factory _FetchOutletsDataModel({final List<OutletModel>? data}) =
      _$FetchOutletsDataModelImpl;

  factory _FetchOutletsDataModel.fromJson(Map<String, dynamic> json) =
      _$FetchOutletsDataModelImpl.fromJson;

  @override
  List<OutletModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchOutletsDataModelImplCopyWith<_$FetchOutletsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchOutletDetailsModel _$FetchOutletDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _FetchOutletDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$FetchOutletDetailsModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OutletModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchOutletDetailsModelCopyWith<FetchOutletDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchOutletDetailsModelCopyWith<$Res> {
  factory $FetchOutletDetailsModelCopyWith(FetchOutletDetailsModel value,
          $Res Function(FetchOutletDetailsModel) then) =
      _$FetchOutletDetailsModelCopyWithImpl<$Res, FetchOutletDetailsModel>;
  @useResult
  $Res call({int? status, String? message, OutletModel? data});

  $OutletModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchOutletDetailsModelCopyWithImpl<$Res,
        $Val extends FetchOutletDetailsModel>
    implements $FetchOutletDetailsModelCopyWith<$Res> {
  _$FetchOutletDetailsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FetchOutletDetailsModelImplCopyWith<$Res>
    implements $FetchOutletDetailsModelCopyWith<$Res> {
  factory _$$FetchOutletDetailsModelImplCopyWith(
          _$FetchOutletDetailsModelImpl value,
          $Res Function(_$FetchOutletDetailsModelImpl) then) =
      __$$FetchOutletDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, OutletModel? data});

  @override
  $OutletModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchOutletDetailsModelImplCopyWithImpl<$Res>
    extends _$FetchOutletDetailsModelCopyWithImpl<$Res,
        _$FetchOutletDetailsModelImpl>
    implements _$$FetchOutletDetailsModelImplCopyWith<$Res> {
  __$$FetchOutletDetailsModelImplCopyWithImpl(
      _$FetchOutletDetailsModelImpl _value,
      $Res Function(_$FetchOutletDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchOutletDetailsModelImpl(
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
class _$FetchOutletDetailsModelImpl implements _FetchOutletDetailsModel {
  const _$FetchOutletDetailsModelImpl({this.status, this.message, this.data});

  factory _$FetchOutletDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchOutletDetailsModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final OutletModel? data;

  @override
  String toString() {
    return 'FetchOutletDetailsModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchOutletDetailsModelImpl &&
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
  _$$FetchOutletDetailsModelImplCopyWith<_$FetchOutletDetailsModelImpl>
      get copyWith => __$$FetchOutletDetailsModelImplCopyWithImpl<
          _$FetchOutletDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchOutletDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _FetchOutletDetailsModel implements FetchOutletDetailsModel {
  const factory _FetchOutletDetailsModel(
      {final int? status,
      final String? message,
      final OutletModel? data}) = _$FetchOutletDetailsModelImpl;

  factory _FetchOutletDetailsModel.fromJson(Map<String, dynamic> json) =
      _$FetchOutletDetailsModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  OutletModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchOutletDetailsModelImplCopyWith<_$FetchOutletDetailsModelImpl>
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
