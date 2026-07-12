// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pg_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchPgsResponseModel _$FetchPgsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchPgsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchPgsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<PgModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchPgsResponseModelCopyWith<FetchPgsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPgsResponseModelCopyWith<$Res> {
  factory $FetchPgsResponseModelCopyWith(FetchPgsResponseModel value,
          $Res Function(FetchPgsResponseModel) then) =
      _$FetchPgsResponseModelCopyWithImpl<$Res, FetchPgsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<PgModel>? data});
}

/// @nodoc
class _$FetchPgsResponseModelCopyWithImpl<$Res,
        $Val extends FetchPgsResponseModel>
    implements $FetchPgsResponseModelCopyWith<$Res> {
  _$FetchPgsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<PgModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchPgsResponseModelImplCopyWith<$Res>
    implements $FetchPgsResponseModelCopyWith<$Res> {
  factory _$$FetchPgsResponseModelImplCopyWith(
          _$FetchPgsResponseModelImpl value,
          $Res Function(_$FetchPgsResponseModelImpl) then) =
      __$$FetchPgsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<PgModel>? data});
}

/// @nodoc
class __$$FetchPgsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchPgsResponseModelCopyWithImpl<$Res,
        _$FetchPgsResponseModelImpl>
    implements _$$FetchPgsResponseModelImplCopyWith<$Res> {
  __$$FetchPgsResponseModelImplCopyWithImpl(_$FetchPgsResponseModelImpl _value,
      $Res Function(_$FetchPgsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchPgsResponseModelImpl(
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
              as List<PgModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchPgsResponseModelImpl implements _FetchPgsResponseModel {
  const _$FetchPgsResponseModelImpl(
      {this.status, this.message, final List<PgModel>? data})
      : _data = data;

  factory _$FetchPgsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchPgsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<PgModel>? _data;
  @override
  List<PgModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchPgsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPgsResponseModelImpl &&
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
  _$$FetchPgsResponseModelImplCopyWith<_$FetchPgsResponseModelImpl>
      get copyWith => __$$FetchPgsResponseModelImplCopyWithImpl<
          _$FetchPgsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchPgsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchPgsResponseModel implements FetchPgsResponseModel {
  const factory _FetchPgsResponseModel(
      {final int? status,
      final String? message,
      final List<PgModel>? data}) = _$FetchPgsResponseModelImpl;

  factory _FetchPgsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchPgsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<PgModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchPgsResponseModelImplCopyWith<_$FetchPgsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchPgDetailsResponseModel _$FetchPgDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchPgDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchPgDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PgModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchPgDetailsResponseModelCopyWith<FetchPgDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchPgDetailsResponseModelCopyWith<$Res> {
  factory $FetchPgDetailsResponseModelCopyWith(
          FetchPgDetailsResponseModel value,
          $Res Function(FetchPgDetailsResponseModel) then) =
      _$FetchPgDetailsResponseModelCopyWithImpl<$Res,
          FetchPgDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, PgModel? data});

  $PgModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchPgDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchPgDetailsResponseModel>
    implements $FetchPgDetailsResponseModelCopyWith<$Res> {
  _$FetchPgDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as PgModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PgModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PgModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchPgDetailsResponseModelImplCopyWith<$Res>
    implements $FetchPgDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchPgDetailsResponseModelImplCopyWith(
          _$FetchPgDetailsResponseModelImpl value,
          $Res Function(_$FetchPgDetailsResponseModelImpl) then) =
      __$$FetchPgDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, PgModel? data});

  @override
  $PgModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchPgDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchPgDetailsResponseModelCopyWithImpl<$Res,
        _$FetchPgDetailsResponseModelImpl>
    implements _$$FetchPgDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchPgDetailsResponseModelImplCopyWithImpl(
      _$FetchPgDetailsResponseModelImpl _value,
      $Res Function(_$FetchPgDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchPgDetailsResponseModelImpl(
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
              as PgModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchPgDetailsResponseModelImpl
    implements _FetchPgDetailsResponseModel {
  const _$FetchPgDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchPgDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchPgDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final PgModel? data;

  @override
  String toString() {
    return 'FetchPgDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPgDetailsResponseModelImpl &&
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
  _$$FetchPgDetailsResponseModelImplCopyWith<_$FetchPgDetailsResponseModelImpl>
      get copyWith => __$$FetchPgDetailsResponseModelImplCopyWithImpl<
          _$FetchPgDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchPgDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchPgDetailsResponseModel
    implements FetchPgDetailsResponseModel {
  const factory _FetchPgDetailsResponseModel(
      {final int? status,
      final String? message,
      final PgModel? data}) = _$FetchPgDetailsResponseModelImpl;

  factory _FetchPgDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchPgDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  PgModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchPgDetailsResponseModelImplCopyWith<_$FetchPgDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PgModel _$PgModelFromJson(Map<String, dynamic> json) {
  return _PgModel.fromJson(json);
}

/// @nodoc
mixin _$PgModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  dynamic get hostId => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  List<String>? get rejectedFields => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get pgImage => throw _privateConstructorUsedError;
  String? get pgLicence => throw _privateConstructorUsedError;
  String? get pgName => throw _privateConstructorUsedError;
  String? get aboutPg => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  String? get pgType => throw _privateConstructorUsedError;
  List<String>? get amenityIds => throw _privateConstructorUsedError;
  List<AmenitiesModel>? get amenities => throw _privateConstructorUsedError;
  int? get amenitiesMore => throw _privateConstructorUsedError;
  UnitModel? get unit => throw _privateConstructorUsedError;
  List<UnitModel>? get units => throw _privateConstructorUsedError;
  int? get unitsMore => throw _privateConstructorUsedError;
  List<String>? get rules => throw _privateConstructorUsedError;
  List<ImageDataModel>? get images => throw _privateConstructorUsedError;
  LocationModel? get location => throw _privateConstructorUsedError;
  int? get monthlyIncome => throw _privateConstructorUsedError;
  int? get totalIncome => throw _privateConstructorUsedError;
  int? get totalVotes => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  List<CategoryRating>? get categoryRatings =>
      throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  String? get checkInTime => throw _privateConstructorUsedError;
  String? get checkOutTime => throw _privateConstructorUsedError;
  List<FaqModel>? get faq => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PgModelCopyWith<PgModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PgModelCopyWith<$Res> {
  factory $PgModelCopyWith(PgModel value, $Res Function(PgModel) then) =
      _$PgModelCopyWithImpl<$Res, PgModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      dynamic hostId,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      String? pgImage,
      String? pgLicence,
      String? pgName,
      String? aboutPg,
      String? gstIn,
      String? pgType,
      List<String>? amenityIds,
      List<AmenitiesModel>? amenities,
      int? amenitiesMore,
      UnitModel? unit,
      List<UnitModel>? units,
      int? unitsMore,
      List<String>? rules,
      List<ImageDataModel>? images,
      LocationModel? location,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      dynamic rating,
      List<CategoryRating>? categoryRatings,
      bool? isFavorite,
      String? checkInTime,
      String? checkOutTime,
      List<FaqModel>? faq});

  $UnitModelCopyWith<$Res>? get unit;
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$PgModelCopyWithImpl<$Res, $Val extends PgModel>
    implements $PgModelCopyWith<$Res> {
  _$PgModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostId = freezed,
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? pgImage = freezed,
    Object? pgLicence = freezed,
    Object? pgName = freezed,
    Object? aboutPg = freezed,
    Object? gstIn = freezed,
    Object? pgType = freezed,
    Object? amenityIds = freezed,
    Object? amenities = freezed,
    Object? amenitiesMore = freezed,
    Object? unit = freezed,
    Object? units = freezed,
    Object? unitsMore = freezed,
    Object? rules = freezed,
    Object? images = freezed,
    Object? location = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
    Object? categoryRatings = freezed,
    Object? isFavorite = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? faq = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedFields: freezed == rejectedFields
          ? _value.rejectedFields
          : rejectedFields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      pgImage: freezed == pgImage
          ? _value.pgImage
          : pgImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pgLicence: freezed == pgLicence
          ? _value.pgLicence
          : pgLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      pgName: freezed == pgName
          ? _value.pgName
          : pgName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutPg: freezed == aboutPg
          ? _value.aboutPg
          : aboutPg // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      pgType: freezed == pgType
          ? _value.pgType
          : pgType // ignore: cast_nullable_to_non_nullable
              as String?,
      amenityIds: freezed == amenityIds
          ? _value.amenityIds
          : amenityIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      amenities: freezed == amenities
          ? _value.amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<AmenitiesModel>?,
      amenitiesMore: freezed == amenitiesMore
          ? _value.amenitiesMore
          : amenitiesMore // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitModel?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as List<UnitModel>?,
      unitsMore: freezed == unitsMore
          ? _value.unitsMore
          : unitsMore // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      monthlyIncome: freezed == monthlyIncome
          ? _value.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIncome: freezed == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: freezed == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryRatings: freezed == categoryRatings
          ? _value.categoryRatings
          : categoryRatings // ignore: cast_nullable_to_non_nullable
              as List<CategoryRating>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      faq: freezed == faq
          ? _value.faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitModelCopyWith<$Res>? get unit {
    if (_value.unit == null) {
      return null;
    }

    return $UnitModelCopyWith<$Res>(_value.unit!, (value) {
      return _then(_value.copyWith(unit: value) as $Val);
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
abstract class _$$PgModelImplCopyWith<$Res> implements $PgModelCopyWith<$Res> {
  factory _$$PgModelImplCopyWith(
          _$PgModelImpl value, $Res Function(_$PgModelImpl) then) =
      __$$PgModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      dynamic hostId,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      String? pgImage,
      String? pgLicence,
      String? pgName,
      String? aboutPg,
      String? gstIn,
      String? pgType,
      List<String>? amenityIds,
      List<AmenitiesModel>? amenities,
      int? amenitiesMore,
      UnitModel? unit,
      List<UnitModel>? units,
      int? unitsMore,
      List<String>? rules,
      List<ImageDataModel>? images,
      LocationModel? location,
      int? monthlyIncome,
      int? totalIncome,
      int? totalVotes,
      dynamic rating,
      List<CategoryRating>? categoryRatings,
      bool? isFavorite,
      String? checkInTime,
      String? checkOutTime,
      List<FaqModel>? faq});

  @override
  $UnitModelCopyWith<$Res>? get unit;
  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$PgModelImplCopyWithImpl<$Res>
    extends _$PgModelCopyWithImpl<$Res, _$PgModelImpl>
    implements _$$PgModelImplCopyWith<$Res> {
  __$$PgModelImplCopyWithImpl(
      _$PgModelImpl _value, $Res Function(_$PgModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostId = freezed,
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? pgImage = freezed,
    Object? pgLicence = freezed,
    Object? pgName = freezed,
    Object? aboutPg = freezed,
    Object? gstIn = freezed,
    Object? pgType = freezed,
    Object? amenityIds = freezed,
    Object? amenities = freezed,
    Object? amenitiesMore = freezed,
    Object? unit = freezed,
    Object? units = freezed,
    Object? unitsMore = freezed,
    Object? rules = freezed,
    Object? images = freezed,
    Object? location = freezed,
    Object? monthlyIncome = freezed,
    Object? totalIncome = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
    Object? categoryRatings = freezed,
    Object? isFavorite = freezed,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? faq = freezed,
  }) {
    return _then(_$PgModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectedFields: freezed == rejectedFields
          ? _value._rejectedFields
          : rejectedFields // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      pgImage: freezed == pgImage
          ? _value.pgImage
          : pgImage // ignore: cast_nullable_to_non_nullable
              as String?,
      pgLicence: freezed == pgLicence
          ? _value.pgLicence
          : pgLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      pgName: freezed == pgName
          ? _value.pgName
          : pgName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutPg: freezed == aboutPg
          ? _value.aboutPg
          : aboutPg // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      pgType: freezed == pgType
          ? _value.pgType
          : pgType // ignore: cast_nullable_to_non_nullable
              as String?,
      amenityIds: freezed == amenityIds
          ? _value._amenityIds
          : amenityIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      amenities: freezed == amenities
          ? _value._amenities
          : amenities // ignore: cast_nullable_to_non_nullable
              as List<AmenitiesModel>?,
      amenitiesMore: freezed == amenitiesMore
          ? _value.amenitiesMore
          : amenitiesMore // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as UnitModel?,
      units: freezed == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<UnitModel>?,
      unitsMore: freezed == unitsMore
          ? _value.unitsMore
          : unitsMore // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageDataModel>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel?,
      monthlyIncome: freezed == monthlyIncome
          ? _value.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIncome: freezed == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: freezed == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      categoryRatings: freezed == categoryRatings
          ? _value._categoryRatings
          : categoryRatings // ignore: cast_nullable_to_non_nullable
              as List<CategoryRating>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkInTime: freezed == checkInTime
          ? _value.checkInTime
          : checkInTime // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOutTime: freezed == checkOutTime
          ? _value.checkOutTime
          : checkOutTime // ignore: cast_nullable_to_non_nullable
              as String?,
      faq: freezed == faq
          ? _value._faq
          : faq // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PgModelImpl implements _PgModel {
  const _$PgModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.hostId,
      this.approvalStatus,
      final List<String>? rejectedFields,
      this.reason,
      this.pgImage,
      this.pgLicence,
      this.pgName,
      this.aboutPg,
      this.gstIn,
      this.pgType,
      final List<String>? amenityIds,
      final List<AmenitiesModel>? amenities,
      this.amenitiesMore,
      this.unit,
      final List<UnitModel>? units,
      this.unitsMore,
      final List<String>? rules,
      final List<ImageDataModel>? images,
      this.location,
      this.monthlyIncome,
      this.totalIncome,
      this.totalVotes,
      this.rating,
      final List<CategoryRating>? categoryRatings,
      this.isFavorite,
      this.checkInTime,
      this.checkOutTime,
      final List<FaqModel>? faq})
      : _rejectedFields = rejectedFields,
        _amenityIds = amenityIds,
        _amenities = amenities,
        _units = units,
        _rules = rules,
        _images = images,
        _categoryRatings = categoryRatings,
        _faq = faq;

  factory _$PgModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PgModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final dynamic hostId;
  @override
  final String? approvalStatus;
  final List<String>? _rejectedFields;
  @override
  List<String>? get rejectedFields {
    final value = _rejectedFields;
    if (value == null) return null;
    if (_rejectedFields is EqualUnmodifiableListView) return _rejectedFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? reason;
  @override
  final String? pgImage;
  @override
  final String? pgLicence;
  @override
  final String? pgName;
  @override
  final String? aboutPg;
  @override
  final String? gstIn;
  @override
  final String? pgType;
  final List<String>? _amenityIds;
  @override
  List<String>? get amenityIds {
    final value = _amenityIds;
    if (value == null) return null;
    if (_amenityIds is EqualUnmodifiableListView) return _amenityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmenitiesModel>? _amenities;
  @override
  List<AmenitiesModel>? get amenities {
    final value = _amenities;
    if (value == null) return null;
    if (_amenities is EqualUnmodifiableListView) return _amenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? amenitiesMore;
  @override
  final UnitModel? unit;
  final List<UnitModel>? _units;
  @override
  List<UnitModel>? get units {
    final value = _units;
    if (value == null) return null;
    if (_units is EqualUnmodifiableListView) return _units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? unitsMore;
  final List<String>? _rules;
  @override
  List<String>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageDataModel>? _images;
  @override
  List<ImageDataModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final LocationModel? location;
  @override
  final int? monthlyIncome;
  @override
  final int? totalIncome;
  @override
  final int? totalVotes;
  @override
  final dynamic rating;
  final List<CategoryRating>? _categoryRatings;
  @override
  List<CategoryRating>? get categoryRatings {
    final value = _categoryRatings;
    if (value == null) return null;
    if (_categoryRatings is EqualUnmodifiableListView) return _categoryRatings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFavorite;
  @override
  final String? checkInTime;
  @override
  final String? checkOutTime;
  final List<FaqModel>? _faq;
  @override
  List<FaqModel>? get faq {
    final value = _faq;
    if (value == null) return null;
    if (_faq is EqualUnmodifiableListView) return _faq;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PgModel(id: $id, hostId: $hostId, approvalStatus: $approvalStatus, rejectedFields: $rejectedFields, reason: $reason, pgImage: $pgImage, pgLicence: $pgLicence, pgName: $pgName, aboutPg: $aboutPg, gstIn: $gstIn, pgType: $pgType, amenityIds: $amenityIds, amenities: $amenities, amenitiesMore: $amenitiesMore, unit: $unit, units: $units, unitsMore: $unitsMore, rules: $rules, images: $images, location: $location, monthlyIncome: $monthlyIncome, totalIncome: $totalIncome, totalVotes: $totalVotes, rating: $rating, categoryRatings: $categoryRatings, isFavorite: $isFavorite, checkInTime: $checkInTime, checkOutTime: $checkOutTime, faq: $faq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PgModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.hostId, hostId) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            const DeepCollectionEquality()
                .equals(other._rejectedFields, _rejectedFields) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.pgImage, pgImage) || other.pgImage == pgImage) &&
            (identical(other.pgLicence, pgLicence) ||
                other.pgLicence == pgLicence) &&
            (identical(other.pgName, pgName) || other.pgName == pgName) &&
            (identical(other.aboutPg, aboutPg) || other.aboutPg == aboutPg) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.pgType, pgType) || other.pgType == pgType) &&
            const DeepCollectionEquality()
                .equals(other._amenityIds, _amenityIds) &&
            const DeepCollectionEquality()
                .equals(other._amenities, _amenities) &&
            (identical(other.amenitiesMore, amenitiesMore) ||
                other.amenitiesMore == amenitiesMore) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other._units, _units) &&
            (identical(other.unitsMore, unitsMore) ||
                other.unitsMore == unitsMore) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other._categoryRatings, _categoryRatings) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            const DeepCollectionEquality().equals(other._faq, _faq));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(hostId),
        approvalStatus,
        const DeepCollectionEquality().hash(_rejectedFields),
        reason,
        pgImage,
        pgLicence,
        pgName,
        aboutPg,
        gstIn,
        pgType,
        const DeepCollectionEquality().hash(_amenityIds),
        const DeepCollectionEquality().hash(_amenities),
        amenitiesMore,
        unit,
        const DeepCollectionEquality().hash(_units),
        unitsMore,
        const DeepCollectionEquality().hash(_rules),
        const DeepCollectionEquality().hash(_images),
        location,
        monthlyIncome,
        totalIncome,
        totalVotes,
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(_categoryRatings),
        isFavorite,
        checkInTime,
        checkOutTime,
        const DeepCollectionEquality().hash(_faq)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PgModelImplCopyWith<_$PgModelImpl> get copyWith =>
      __$$PgModelImplCopyWithImpl<_$PgModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PgModelImplToJson(
      this,
    );
  }
}

abstract class _PgModel implements PgModel {
  const factory _PgModel(
      {@JsonKey(name: '_id') final String? id,
      final dynamic hostId,
      final String? approvalStatus,
      final List<String>? rejectedFields,
      final String? reason,
      final String? pgImage,
      final String? pgLicence,
      final String? pgName,
      final String? aboutPg,
      final String? gstIn,
      final String? pgType,
      final List<String>? amenityIds,
      final List<AmenitiesModel>? amenities,
      final int? amenitiesMore,
      final UnitModel? unit,
      final List<UnitModel>? units,
      final int? unitsMore,
      final List<String>? rules,
      final List<ImageDataModel>? images,
      final LocationModel? location,
      final int? monthlyIncome,
      final int? totalIncome,
      final int? totalVotes,
      final dynamic rating,
      final List<CategoryRating>? categoryRatings,
      final bool? isFavorite,
      final String? checkInTime,
      final String? checkOutTime,
      final List<FaqModel>? faq}) = _$PgModelImpl;

  factory _PgModel.fromJson(Map<String, dynamic> json) = _$PgModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  dynamic get hostId;
  @override
  String? get approvalStatus;
  @override
  List<String>? get rejectedFields;
  @override
  String? get reason;
  @override
  String? get pgImage;
  @override
  String? get pgLicence;
  @override
  String? get pgName;
  @override
  String? get aboutPg;
  @override
  String? get gstIn;
  @override
  String? get pgType;
  @override
  List<String>? get amenityIds;
  @override
  List<AmenitiesModel>? get amenities;
  @override
  int? get amenitiesMore;
  @override
  UnitModel? get unit;
  @override
  List<UnitModel>? get units;
  @override
  int? get unitsMore;
  @override
  List<String>? get rules;
  @override
  List<ImageDataModel>? get images;
  @override
  LocationModel? get location;
  @override
  int? get monthlyIncome;
  @override
  int? get totalIncome;
  @override
  int? get totalVotes;
  @override
  dynamic get rating;
  @override
  List<CategoryRating>? get categoryRatings;
  @override
  bool? get isFavorite;
  @override
  String? get checkInTime;
  @override
  String? get checkOutTime;
  @override
  List<FaqModel>? get faq;
  @override
  @JsonKey(ignore: true)
  _$$PgModelImplCopyWith<_$PgModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
