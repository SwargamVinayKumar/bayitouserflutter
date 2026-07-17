// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchHomesResponseModel _$FetchHomesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHomesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHomesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<HomeModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHomesResponseModelCopyWith<FetchHomesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHomesResponseModelCopyWith<$Res> {
  factory $FetchHomesResponseModelCopyWith(FetchHomesResponseModel value,
          $Res Function(FetchHomesResponseModel) then) =
      _$FetchHomesResponseModelCopyWithImpl<$Res, FetchHomesResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<HomeModel>? data});
}

/// @nodoc
class _$FetchHomesResponseModelCopyWithImpl<$Res,
        $Val extends FetchHomesResponseModel>
    implements $FetchHomesResponseModelCopyWith<$Res> {
  _$FetchHomesResponseModelCopyWithImpl(this._value, this._then);

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
              as List<HomeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchHomesResponseModelImplCopyWith<$Res>
    implements $FetchHomesResponseModelCopyWith<$Res> {
  factory _$$FetchHomesResponseModelImplCopyWith(
          _$FetchHomesResponseModelImpl value,
          $Res Function(_$FetchHomesResponseModelImpl) then) =
      __$$FetchHomesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<HomeModel>? data});
}

/// @nodoc
class __$$FetchHomesResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHomesResponseModelCopyWithImpl<$Res,
        _$FetchHomesResponseModelImpl>
    implements _$$FetchHomesResponseModelImplCopyWith<$Res> {
  __$$FetchHomesResponseModelImplCopyWithImpl(
      _$FetchHomesResponseModelImpl _value,
      $Res Function(_$FetchHomesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchHomesResponseModelImpl(
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
              as List<HomeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHomesResponseModelImpl implements _FetchHomesResponseModel {
  const _$FetchHomesResponseModelImpl(
      {this.status, this.message, final List<HomeModel>? data})
      : _data = data;

  factory _$FetchHomesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchHomesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<HomeModel>? _data;
  @override
  List<HomeModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchHomesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomesResponseModelImpl &&
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
  _$$FetchHomesResponseModelImplCopyWith<_$FetchHomesResponseModelImpl>
      get copyWith => __$$FetchHomesResponseModelImplCopyWithImpl<
          _$FetchHomesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHomesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHomesResponseModel implements FetchHomesResponseModel {
  const factory _FetchHomesResponseModel(
      {final int? status,
      final String? message,
      final List<HomeModel>? data}) = _$FetchHomesResponseModelImpl;

  factory _FetchHomesResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchHomesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<HomeModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchHomesResponseModelImplCopyWith<_$FetchHomesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchHomeDetailsResponseModel _$FetchHomeDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHomeDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHomeDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HomeModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHomeDetailsResponseModelCopyWith<FetchHomeDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHomeDetailsResponseModelCopyWith<$Res> {
  factory $FetchHomeDetailsResponseModelCopyWith(
          FetchHomeDetailsResponseModel value,
          $Res Function(FetchHomeDetailsResponseModel) then) =
      _$FetchHomeDetailsResponseModelCopyWithImpl<$Res,
          FetchHomeDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, HomeModel? data});

  $HomeModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchHomeDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHomeDetailsResponseModel>
    implements $FetchHomeDetailsResponseModelCopyWith<$Res> {
  _$FetchHomeDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as HomeModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchHomeDetailsResponseModelImplCopyWith<$Res>
    implements $FetchHomeDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchHomeDetailsResponseModelImplCopyWith(
          _$FetchHomeDetailsResponseModelImpl value,
          $Res Function(_$FetchHomeDetailsResponseModelImpl) then) =
      __$$FetchHomeDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HomeModel? data});

  @override
  $HomeModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchHomeDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHomeDetailsResponseModelCopyWithImpl<$Res,
        _$FetchHomeDetailsResponseModelImpl>
    implements _$$FetchHomeDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchHomeDetailsResponseModelImplCopyWithImpl(
      _$FetchHomeDetailsResponseModelImpl _value,
      $Res Function(_$FetchHomeDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchHomeDetailsResponseModelImpl(
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
              as HomeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHomeDetailsResponseModelImpl
    implements _FetchHomeDetailsResponseModel {
  const _$FetchHomeDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchHomeDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchHomeDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HomeModel? data;

  @override
  String toString() {
    return 'FetchHomeDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeDetailsResponseModelImpl &&
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
  _$$FetchHomeDetailsResponseModelImplCopyWith<
          _$FetchHomeDetailsResponseModelImpl>
      get copyWith => __$$FetchHomeDetailsResponseModelImplCopyWithImpl<
          _$FetchHomeDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHomeDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHomeDetailsResponseModel
    implements FetchHomeDetailsResponseModel {
  const factory _FetchHomeDetailsResponseModel(
      {final int? status,
      final String? message,
      final HomeModel? data}) = _$FetchHomeDetailsResponseModelImpl;

  factory _FetchHomeDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchHomeDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HomeModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchHomeDetailsResponseModelImplCopyWith<
          _$FetchHomeDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  dynamic get hostId => throw _privateConstructorUsedError;
  dynamic get branch => throw _privateConstructorUsedError;
  UserModel? get manager => throw _privateConstructorUsedError;
  String? get approvalStatus => throw _privateConstructorUsedError;
  List<String>? get rejectedFields => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get homeImage => throw _privateConstructorUsedError;
  String? get homeLicence => throw _privateConstructorUsedError;
  String? get homeName => throw _privateConstructorUsedError;
  String? get aboutHome => throw _privateConstructorUsedError;
  String? get gstIn => throw _privateConstructorUsedError;
  String? get homeType => throw _privateConstructorUsedError;
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
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      dynamic hostId,
      dynamic branch,
      UserModel? manager,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      String? homeImage,
      String? homeLicence,
      String? homeName,
      String? aboutHome,
      String? gstIn,
      String? homeType,
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

  $UserModelCopyWith<$Res>? get manager;
  $UnitModelCopyWith<$Res>? get unit;
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostId = freezed,
    Object? branch = freezed,
    Object? manager = freezed,
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? homeImage = freezed,
    Object? homeLicence = freezed,
    Object? homeName = freezed,
    Object? aboutHome = freezed,
    Object? gstIn = freezed,
    Object? homeType = freezed,
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
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as dynamic,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
      homeImage: freezed == homeImage
          ? _value.homeImage
          : homeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      homeLicence: freezed == homeLicence
          ? _value.homeLicence
          : homeLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      homeName: freezed == homeName
          ? _value.homeName
          : homeName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutHome: freezed == aboutHome
          ? _value.aboutHome
          : aboutHome // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      homeType: freezed == homeType
          ? _value.homeType
          : homeType // ignore: cast_nullable_to_non_nullable
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
  $UserModelCopyWith<$Res>? get manager {
    if (_value.manager == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.manager!, (value) {
      return _then(_value.copyWith(manager: value) as $Val);
    });
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
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      dynamic hostId,
      dynamic branch,
      UserModel? manager,
      String? approvalStatus,
      List<String>? rejectedFields,
      String? reason,
      String? homeImage,
      String? homeLicence,
      String? homeName,
      String? aboutHome,
      String? gstIn,
      String? homeType,
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
  $UserModelCopyWith<$Res>? get manager;
  @override
  $UnitModelCopyWith<$Res>? get unit;
  @override
  $LocationModelCopyWith<$Res>? get location;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostId = freezed,
    Object? branch = freezed,
    Object? manager = freezed,
    Object? approvalStatus = freezed,
    Object? rejectedFields = freezed,
    Object? reason = freezed,
    Object? homeImage = freezed,
    Object? homeLicence = freezed,
    Object? homeName = freezed,
    Object? aboutHome = freezed,
    Object? gstIn = freezed,
    Object? homeType = freezed,
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
    return _then(_$HomeModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as dynamic,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as UserModel?,
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
      homeImage: freezed == homeImage
          ? _value.homeImage
          : homeImage // ignore: cast_nullable_to_non_nullable
              as String?,
      homeLicence: freezed == homeLicence
          ? _value.homeLicence
          : homeLicence // ignore: cast_nullable_to_non_nullable
              as String?,
      homeName: freezed == homeName
          ? _value.homeName
          : homeName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutHome: freezed == aboutHome
          ? _value.aboutHome
          : aboutHome // ignore: cast_nullable_to_non_nullable
              as String?,
      gstIn: freezed == gstIn
          ? _value.gstIn
          : gstIn // ignore: cast_nullable_to_non_nullable
              as String?,
      homeType: freezed == homeType
          ? _value.homeType
          : homeType // ignore: cast_nullable_to_non_nullable
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
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.hostId,
      this.branch,
      this.manager,
      this.approvalStatus,
      final List<String>? rejectedFields,
      this.reason,
      this.homeImage,
      this.homeLicence,
      this.homeName,
      this.aboutHome,
      this.gstIn,
      this.homeType,
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

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final dynamic hostId;
  @override
  final dynamic branch;
  @override
  final UserModel? manager;
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
  final String? homeImage;
  @override
  final String? homeLicence;
  @override
  final String? homeName;
  @override
  final String? aboutHome;
  @override
  final String? gstIn;
  @override
  final String? homeType;
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
    return 'HomeModel(id: $id, hostId: $hostId, branch: $branch, manager: $manager, approvalStatus: $approvalStatus, rejectedFields: $rejectedFields, reason: $reason, homeImage: $homeImage, homeLicence: $homeLicence, homeName: $homeName, aboutHome: $aboutHome, gstIn: $gstIn, homeType: $homeType, amenityIds: $amenityIds, amenities: $amenities, amenitiesMore: $amenitiesMore, unit: $unit, units: $units, unitsMore: $unitsMore, rules: $rules, images: $images, location: $location, monthlyIncome: $monthlyIncome, totalIncome: $totalIncome, totalVotes: $totalVotes, rating: $rating, categoryRatings: $categoryRatings, isFavorite: $isFavorite, checkInTime: $checkInTime, checkOutTime: $checkOutTime, faq: $faq)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.hostId, hostId) &&
            const DeepCollectionEquality().equals(other.branch, branch) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.approvalStatus, approvalStatus) ||
                other.approvalStatus == approvalStatus) &&
            const DeepCollectionEquality()
                .equals(other._rejectedFields, _rejectedFields) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.homeImage, homeImage) ||
                other.homeImage == homeImage) &&
            (identical(other.homeLicence, homeLicence) ||
                other.homeLicence == homeLicence) &&
            (identical(other.homeName, homeName) ||
                other.homeName == homeName) &&
            (identical(other.aboutHome, aboutHome) ||
                other.aboutHome == aboutHome) &&
            (identical(other.gstIn, gstIn) || other.gstIn == gstIn) &&
            (identical(other.homeType, homeType) ||
                other.homeType == homeType) &&
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
        const DeepCollectionEquality().hash(branch),
        manager,
        approvalStatus,
        const DeepCollectionEquality().hash(_rejectedFields),
        reason,
        homeImage,
        homeLicence,
        homeName,
        aboutHome,
        gstIn,
        homeType,
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
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {@JsonKey(name: '_id') final String? id,
      final dynamic hostId,
      final dynamic branch,
      final UserModel? manager,
      final String? approvalStatus,
      final List<String>? rejectedFields,
      final String? reason,
      final String? homeImage,
      final String? homeLicence,
      final String? homeName,
      final String? aboutHome,
      final String? gstIn,
      final String? homeType,
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
      final List<FaqModel>? faq}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  dynamic get hostId;
  @override
  dynamic get branch;
  @override
  UserModel? get manager;
  @override
  String? get approvalStatus;
  @override
  List<String>? get rejectedFields;
  @override
  String? get reason;
  @override
  String? get homeImage;
  @override
  String? get homeLicence;
  @override
  String? get homeName;
  @override
  String? get aboutHome;
  @override
  String? get gstIn;
  @override
  String? get homeType;
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
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FaqModel _$FaqModelFromJson(Map<String, dynamic> json) {
  return _FaqModel.fromJson(json);
}

/// @nodoc
mixin _$FaqModel {
  String? get question => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqModelCopyWith<FaqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqModelCopyWith<$Res> {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) then) =
      _$FaqModelCopyWithImpl<$Res, FaqModel>;
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class _$FaqModelCopyWithImpl<$Res, $Val extends FaqModel>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqModelImplCopyWith<$Res>
    implements $FaqModelCopyWith<$Res> {
  factory _$$FaqModelImplCopyWith(
          _$FaqModelImpl value, $Res Function(_$FaqModelImpl) then) =
      __$$FaqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? question, String? answer});
}

/// @nodoc
class __$$FaqModelImplCopyWithImpl<$Res>
    extends _$FaqModelCopyWithImpl<$Res, _$FaqModelImpl>
    implements _$$FaqModelImplCopyWith<$Res> {
  __$$FaqModelImplCopyWithImpl(
      _$FaqModelImpl _value, $Res Function(_$FaqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$FaqModelImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqModelImpl implements _FaqModel {
  const _$FaqModelImpl({this.question, this.answer});

  factory _$FaqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqModelImplFromJson(json);

  @override
  final String? question;
  @override
  final String? answer;

  @override
  String toString() {
    return 'FaqModel(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      __$$FaqModelImplCopyWithImpl<_$FaqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqModelImplToJson(
      this,
    );
  }
}

abstract class _FaqModel implements FaqModel {
  const factory _FaqModel({final String? question, final String? answer}) =
      _$FaqModelImpl;

  factory _FaqModel.fromJson(Map<String, dynamic> json) =
      _$FaqModelImpl.fromJson;

  @override
  String? get question;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageDataModel _$ImageDataModelFromJson(Map<String, dynamic> json) {
  return _ImageDataModel.fromJson(json);
}

/// @nodoc
mixin _$ImageDataModel {
  String? get imagesType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDataModelCopyWith<ImageDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataModelCopyWith<$Res> {
  factory $ImageDataModelCopyWith(
          ImageDataModel value, $Res Function(ImageDataModel) then) =
      _$ImageDataModelCopyWithImpl<$Res, ImageDataModel>;
  @useResult
  $Res call({String? imagesType, List<String>? images});
}

/// @nodoc
class _$ImageDataModelCopyWithImpl<$Res, $Val extends ImageDataModel>
    implements $ImageDataModelCopyWith<$Res> {
  _$ImageDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesType = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      imagesType: freezed == imagesType
          ? _value.imagesType
          : imagesType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageDataModelImplCopyWith<$Res>
    implements $ImageDataModelCopyWith<$Res> {
  factory _$$ImageDataModelImplCopyWith(_$ImageDataModelImpl value,
          $Res Function(_$ImageDataModelImpl) then) =
      __$$ImageDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imagesType, List<String>? images});
}

/// @nodoc
class __$$ImageDataModelImplCopyWithImpl<$Res>
    extends _$ImageDataModelCopyWithImpl<$Res, _$ImageDataModelImpl>
    implements _$$ImageDataModelImplCopyWith<$Res> {
  __$$ImageDataModelImplCopyWithImpl(
      _$ImageDataModelImpl _value, $Res Function(_$ImageDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesType = freezed,
    Object? images = freezed,
  }) {
    return _then(_$ImageDataModelImpl(
      imagesType: freezed == imagesType
          ? _value.imagesType
          : imagesType // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageDataModelImpl implements _ImageDataModel {
  const _$ImageDataModelImpl({this.imagesType, final List<String>? images})
      : _images = images;

  factory _$ImageDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageDataModelImplFromJson(json);

  @override
  final String? imagesType;
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
  String toString() {
    return 'ImageDataModel(imagesType: $imagesType, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageDataModelImpl &&
            (identical(other.imagesType, imagesType) ||
                other.imagesType == imagesType) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, imagesType, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageDataModelImplCopyWith<_$ImageDataModelImpl> get copyWith =>
      __$$ImageDataModelImplCopyWithImpl<_$ImageDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageDataModelImplToJson(
      this,
    );
  }
}

abstract class _ImageDataModel implements ImageDataModel {
  const factory _ImageDataModel(
      {final String? imagesType,
      final List<String>? images}) = _$ImageDataModelImpl;

  factory _ImageDataModel.fromJson(Map<String, dynamic> json) =
      _$ImageDataModelImpl.fromJson;

  @override
  String? get imagesType;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$ImageDataModelImplCopyWith<_$ImageDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchAmenitiesResponseModel _$FetchAmenitiesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchAmenitiesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchAmenitiesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<AmenitiesModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchAmenitiesResponseModelCopyWith<FetchAmenitiesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchAmenitiesResponseModelCopyWith<$Res> {
  factory $FetchAmenitiesResponseModelCopyWith(
          FetchAmenitiesResponseModel value,
          $Res Function(FetchAmenitiesResponseModel) then) =
      _$FetchAmenitiesResponseModelCopyWithImpl<$Res,
          FetchAmenitiesResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<AmenitiesModel>? data});
}

/// @nodoc
class _$FetchAmenitiesResponseModelCopyWithImpl<$Res,
        $Val extends FetchAmenitiesResponseModel>
    implements $FetchAmenitiesResponseModelCopyWith<$Res> {
  _$FetchAmenitiesResponseModelCopyWithImpl(this._value, this._then);

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
              as List<AmenitiesModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchAmenitiesResponseModelImplCopyWith<$Res>
    implements $FetchAmenitiesResponseModelCopyWith<$Res> {
  factory _$$FetchAmenitiesResponseModelImplCopyWith(
          _$FetchAmenitiesResponseModelImpl value,
          $Res Function(_$FetchAmenitiesResponseModelImpl) then) =
      __$$FetchAmenitiesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<AmenitiesModel>? data});
}

/// @nodoc
class __$$FetchAmenitiesResponseModelImplCopyWithImpl<$Res>
    extends _$FetchAmenitiesResponseModelCopyWithImpl<$Res,
        _$FetchAmenitiesResponseModelImpl>
    implements _$$FetchAmenitiesResponseModelImplCopyWith<$Res> {
  __$$FetchAmenitiesResponseModelImplCopyWithImpl(
      _$FetchAmenitiesResponseModelImpl _value,
      $Res Function(_$FetchAmenitiesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchAmenitiesResponseModelImpl(
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
              as List<AmenitiesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchAmenitiesResponseModelImpl
    implements _FetchAmenitiesResponseModel {
  const _$FetchAmenitiesResponseModelImpl(
      {this.status, this.message, final List<AmenitiesModel>? data})
      : _data = data;

  factory _$FetchAmenitiesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchAmenitiesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<AmenitiesModel>? _data;
  @override
  List<AmenitiesModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchAmenitiesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAmenitiesResponseModelImpl &&
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
  _$$FetchAmenitiesResponseModelImplCopyWith<_$FetchAmenitiesResponseModelImpl>
      get copyWith => __$$FetchAmenitiesResponseModelImplCopyWithImpl<
          _$FetchAmenitiesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchAmenitiesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchAmenitiesResponseModel
    implements FetchAmenitiesResponseModel {
  const factory _FetchAmenitiesResponseModel(
      {final int? status,
      final String? message,
      final List<AmenitiesModel>? data}) = _$FetchAmenitiesResponseModelImpl;

  factory _FetchAmenitiesResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchAmenitiesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<AmenitiesModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchAmenitiesResponseModelImplCopyWith<_$FetchAmenitiesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchRatingAndReviewsResponseModel _$FetchRatingAndReviewsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchRatingAndReviewsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchRatingAndReviewsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<RatingAndReviewModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchRatingAndReviewsResponseModelCopyWith<
          FetchRatingAndReviewsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchRatingAndReviewsResponseModelCopyWith<$Res> {
  factory $FetchRatingAndReviewsResponseModelCopyWith(
          FetchRatingAndReviewsResponseModel value,
          $Res Function(FetchRatingAndReviewsResponseModel) then) =
      _$FetchRatingAndReviewsResponseModelCopyWithImpl<$Res,
          FetchRatingAndReviewsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<RatingAndReviewModel>? data});
}

/// @nodoc
class _$FetchRatingAndReviewsResponseModelCopyWithImpl<$Res,
        $Val extends FetchRatingAndReviewsResponseModel>
    implements $FetchRatingAndReviewsResponseModelCopyWith<$Res> {
  _$FetchRatingAndReviewsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<RatingAndReviewModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchRatingAndReviewsResponseModelImplCopyWith<$Res>
    implements $FetchRatingAndReviewsResponseModelCopyWith<$Res> {
  factory _$$FetchRatingAndReviewsResponseModelImplCopyWith(
          _$FetchRatingAndReviewsResponseModelImpl value,
          $Res Function(_$FetchRatingAndReviewsResponseModelImpl) then) =
      __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<RatingAndReviewModel>? data});
}

/// @nodoc
class __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchRatingAndReviewsResponseModelCopyWithImpl<$Res,
        _$FetchRatingAndReviewsResponseModelImpl>
    implements _$$FetchRatingAndReviewsResponseModelImplCopyWith<$Res> {
  __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl(
      _$FetchRatingAndReviewsResponseModelImpl _value,
      $Res Function(_$FetchRatingAndReviewsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchRatingAndReviewsResponseModelImpl(
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
              as List<RatingAndReviewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchRatingAndReviewsResponseModelImpl
    implements _FetchRatingAndReviewsResponseModel {
  const _$FetchRatingAndReviewsResponseModelImpl(
      {this.status, this.message, final List<RatingAndReviewModel>? data})
      : _data = data;

  factory _$FetchRatingAndReviewsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchRatingAndReviewsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<RatingAndReviewModel>? _data;
  @override
  List<RatingAndReviewModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchRatingAndReviewsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRatingAndReviewsResponseModelImpl &&
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
  _$$FetchRatingAndReviewsResponseModelImplCopyWith<
          _$FetchRatingAndReviewsResponseModelImpl>
      get copyWith => __$$FetchRatingAndReviewsResponseModelImplCopyWithImpl<
          _$FetchRatingAndReviewsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchRatingAndReviewsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchRatingAndReviewsResponseModel
    implements FetchRatingAndReviewsResponseModel {
  const factory _FetchRatingAndReviewsResponseModel(
          {final int? status,
          final String? message,
          final List<RatingAndReviewModel>? data}) =
      _$FetchRatingAndReviewsResponseModelImpl;

  factory _FetchRatingAndReviewsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchRatingAndReviewsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<RatingAndReviewModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchRatingAndReviewsResponseModelImplCopyWith<
          _$FetchRatingAndReviewsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RatingAndReviewModel _$RatingAndReviewModelFromJson(Map<String, dynamic> json) {
  return _RatingAndReviewModel.fromJson(json);
}

/// @nodoc
mixin _$RatingAndReviewModel {
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get homeId => throw _privateConstructorUsedError;
  dynamic get rating => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingAndReviewModelCopyWith<RatingAndReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingAndReviewModelCopyWith<$Res> {
  factory $RatingAndReviewModelCopyWith(RatingAndReviewModel value,
          $Res Function(RatingAndReviewModel) then) =
      _$RatingAndReviewModelCopyWithImpl<$Res, RatingAndReviewModel>;
  @useResult
  $Res call({dynamic userId, dynamic homeId, dynamic rating, String? review});
}

/// @nodoc
class _$RatingAndReviewModelCopyWithImpl<$Res,
        $Val extends RatingAndReviewModel>
    implements $RatingAndReviewModelCopyWith<$Res> {
  _$RatingAndReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? homeId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingAndReviewModelImplCopyWith<$Res>
    implements $RatingAndReviewModelCopyWith<$Res> {
  factory _$$RatingAndReviewModelImplCopyWith(_$RatingAndReviewModelImpl value,
          $Res Function(_$RatingAndReviewModelImpl) then) =
      __$$RatingAndReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic userId, dynamic homeId, dynamic rating, String? review});
}

/// @nodoc
class __$$RatingAndReviewModelImplCopyWithImpl<$Res>
    extends _$RatingAndReviewModelCopyWithImpl<$Res, _$RatingAndReviewModelImpl>
    implements _$$RatingAndReviewModelImplCopyWith<$Res> {
  __$$RatingAndReviewModelImplCopyWithImpl(_$RatingAndReviewModelImpl _value,
      $Res Function(_$RatingAndReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? homeId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_$RatingAndReviewModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingAndReviewModelImpl implements _RatingAndReviewModel {
  const _$RatingAndReviewModelImpl(
      {this.userId, this.homeId, this.rating, this.review});

  factory _$RatingAndReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingAndReviewModelImplFromJson(json);

  @override
  final dynamic userId;
  @override
  final dynamic homeId;
  @override
  final dynamic rating;
  @override
  final String? review;

  @override
  String toString() {
    return 'RatingAndReviewModel(userId: $userId, homeId: $homeId, rating: $rating, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingAndReviewModelImpl &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.homeId, homeId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(homeId),
      const DeepCollectionEquality().hash(rating),
      review);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingAndReviewModelImplCopyWith<_$RatingAndReviewModelImpl>
      get copyWith =>
          __$$RatingAndReviewModelImplCopyWithImpl<_$RatingAndReviewModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingAndReviewModelImplToJson(
      this,
    );
  }
}

abstract class _RatingAndReviewModel implements RatingAndReviewModel {
  const factory _RatingAndReviewModel(
      {final dynamic userId,
      final dynamic homeId,
      final dynamic rating,
      final String? review}) = _$RatingAndReviewModelImpl;

  factory _RatingAndReviewModel.fromJson(Map<String, dynamic> json) =
      _$RatingAndReviewModelImpl.fromJson;

  @override
  dynamic get userId;
  @override
  dynamic get homeId;
  @override
  dynamic get rating;
  @override
  String? get review;
  @override
  @JsonKey(ignore: true)
  _$$RatingAndReviewModelImplCopyWith<_$RatingAndReviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryRating _$CategoryRatingFromJson(Map<String, dynamic> json) {
  return _CategoryRating.fromJson(json);
}

/// @nodoc
mixin _$CategoryRating {
  dynamic get rating => throw _privateConstructorUsedError;
  String? get ratedFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryRatingCopyWith<CategoryRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryRatingCopyWith<$Res> {
  factory $CategoryRatingCopyWith(
          CategoryRating value, $Res Function(CategoryRating) then) =
      _$CategoryRatingCopyWithImpl<$Res, CategoryRating>;
  @useResult
  $Res call({dynamic rating, String? ratedFor});
}

/// @nodoc
class _$CategoryRatingCopyWithImpl<$Res, $Val extends CategoryRating>
    implements $CategoryRatingCopyWith<$Res> {
  _$CategoryRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? ratedFor = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ratedFor: freezed == ratedFor
          ? _value.ratedFor
          : ratedFor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryRatingImplCopyWith<$Res>
    implements $CategoryRatingCopyWith<$Res> {
  factory _$$CategoryRatingImplCopyWith(_$CategoryRatingImpl value,
          $Res Function(_$CategoryRatingImpl) then) =
      __$$CategoryRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic rating, String? ratedFor});
}

/// @nodoc
class __$$CategoryRatingImplCopyWithImpl<$Res>
    extends _$CategoryRatingCopyWithImpl<$Res, _$CategoryRatingImpl>
    implements _$$CategoryRatingImplCopyWith<$Res> {
  __$$CategoryRatingImplCopyWithImpl(
      _$CategoryRatingImpl _value, $Res Function(_$CategoryRatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? ratedFor = freezed,
  }) {
    return _then(_$CategoryRatingImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ratedFor: freezed == ratedFor
          ? _value.ratedFor
          : ratedFor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryRatingImpl implements _CategoryRating {
  const _$CategoryRatingImpl({this.rating, this.ratedFor});

  factory _$CategoryRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryRatingImplFromJson(json);

  @override
  final dynamic rating;
  @override
  final String? ratedFor;

  @override
  String toString() {
    return 'CategoryRating(rating: $rating, ratedFor: $ratedFor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryRatingImpl &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.ratedFor, ratedFor) ||
                other.ratedFor == ratedFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rating), ratedFor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryRatingImplCopyWith<_$CategoryRatingImpl> get copyWith =>
      __$$CategoryRatingImplCopyWithImpl<_$CategoryRatingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryRatingImplToJson(
      this,
    );
  }
}

abstract class _CategoryRating implements CategoryRating {
  const factory _CategoryRating(
      {final dynamic rating, final String? ratedFor}) = _$CategoryRatingImpl;

  factory _CategoryRating.fromJson(Map<String, dynamic> json) =
      _$CategoryRatingImpl.fromJson;

  @override
  dynamic get rating;
  @override
  String? get ratedFor;
  @override
  @JsonKey(ignore: true)
  _$$CategoryRatingImplCopyWith<_$CategoryRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchHomeUnitsResponseModel _$FetchHomeUnitsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHomeUnitsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHomeUnitsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UnitModel>? get data => throw _privateConstructorUsedError;
  List<String>? get unitTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHomeUnitsResponseModelCopyWith<FetchHomeUnitsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHomeUnitsResponseModelCopyWith<$Res> {
  factory $FetchHomeUnitsResponseModelCopyWith(
          FetchHomeUnitsResponseModel value,
          $Res Function(FetchHomeUnitsResponseModel) then) =
      _$FetchHomeUnitsResponseModelCopyWithImpl<$Res,
          FetchHomeUnitsResponseModel>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      List<UnitModel>? data,
      List<String>? unitTypes});
}

/// @nodoc
class _$FetchHomeUnitsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHomeUnitsResponseModel>
    implements $FetchHomeUnitsResponseModelCopyWith<$Res> {
  _$FetchHomeUnitsResponseModelCopyWithImpl(this._value, this._then);

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
    Object? unitTypes = freezed,
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
              as List<UnitModel>?,
      unitTypes: freezed == unitTypes
          ? _value.unitTypes
          : unitTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchHomeUnitsResponseModelImplCopyWith<$Res>
    implements $FetchHomeUnitsResponseModelCopyWith<$Res> {
  factory _$$FetchHomeUnitsResponseModelImplCopyWith(
          _$FetchHomeUnitsResponseModelImpl value,
          $Res Function(_$FetchHomeUnitsResponseModelImpl) then) =
      __$$FetchHomeUnitsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      List<UnitModel>? data,
      List<String>? unitTypes});
}

/// @nodoc
class __$$FetchHomeUnitsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHomeUnitsResponseModelCopyWithImpl<$Res,
        _$FetchHomeUnitsResponseModelImpl>
    implements _$$FetchHomeUnitsResponseModelImplCopyWith<$Res> {
  __$$FetchHomeUnitsResponseModelImplCopyWithImpl(
      _$FetchHomeUnitsResponseModelImpl _value,
      $Res Function(_$FetchHomeUnitsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? unitTypes = freezed,
  }) {
    return _then(_$FetchHomeUnitsResponseModelImpl(
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
              as List<UnitModel>?,
      unitTypes: freezed == unitTypes
          ? _value._unitTypes
          : unitTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHomeUnitsResponseModelImpl
    implements _FetchHomeUnitsResponseModel {
  const _$FetchHomeUnitsResponseModelImpl(
      {this.status,
      this.message,
      final List<UnitModel>? data,
      final List<String>? unitTypes})
      : _data = data,
        _unitTypes = unitTypes;

  factory _$FetchHomeUnitsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchHomeUnitsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<UnitModel>? _data;
  @override
  List<UnitModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _unitTypes;
  @override
  List<String>? get unitTypes {
    final value = _unitTypes;
    if (value == null) return null;
    if (_unitTypes is EqualUnmodifiableListView) return _unitTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchHomeUnitsResponseModel(status: $status, message: $message, data: $data, unitTypes: $unitTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeUnitsResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._unitTypes, _unitTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_unitTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchHomeUnitsResponseModelImplCopyWith<_$FetchHomeUnitsResponseModelImpl>
      get copyWith => __$$FetchHomeUnitsResponseModelImplCopyWithImpl<
          _$FetchHomeUnitsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHomeUnitsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHomeUnitsResponseModel
    implements FetchHomeUnitsResponseModel {
  const factory _FetchHomeUnitsResponseModel(
      {final int? status,
      final String? message,
      final List<UnitModel>? data,
      final List<String>? unitTypes}) = _$FetchHomeUnitsResponseModelImpl;

  factory _FetchHomeUnitsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchHomeUnitsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<UnitModel>? get data;
  @override
  List<String>? get unitTypes;
  @override
  @JsonKey(ignore: true)
  _$$FetchHomeUnitsResponseModelImplCopyWith<_$FetchHomeUnitsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AmenitiesModel _$AmenitiesModelFromJson(Map<String, dynamic> json) {
  return _AmenitiesModel.fromJson(json);
}

/// @nodoc
mixin _$AmenitiesModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmenitiesModelCopyWith<AmenitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmenitiesModelCopyWith<$Res> {
  factory $AmenitiesModelCopyWith(
          AmenitiesModel value, $Res Function(AmenitiesModel) then) =
      _$AmenitiesModelCopyWithImpl<$Res, AmenitiesModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String? image, String? name});
}

/// @nodoc
class _$AmenitiesModelCopyWithImpl<$Res, $Val extends AmenitiesModel>
    implements $AmenitiesModelCopyWith<$Res> {
  _$AmenitiesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmenitiesModelImplCopyWith<$Res>
    implements $AmenitiesModelCopyWith<$Res> {
  factory _$$AmenitiesModelImplCopyWith(_$AmenitiesModelImpl value,
          $Res Function(_$AmenitiesModelImpl) then) =
      __$$AmenitiesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, String? image, String? name});
}

/// @nodoc
class __$$AmenitiesModelImplCopyWithImpl<$Res>
    extends _$AmenitiesModelCopyWithImpl<$Res, _$AmenitiesModelImpl>
    implements _$$AmenitiesModelImplCopyWith<$Res> {
  __$$AmenitiesModelImplCopyWithImpl(
      _$AmenitiesModelImpl _value, $Res Function(_$AmenitiesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
  }) {
    return _then(_$AmenitiesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmenitiesModelImpl implements _AmenitiesModel {
  const _$AmenitiesModelImpl(
      {@JsonKey(name: '_id') this.id, this.image, this.name});

  factory _$AmenitiesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmenitiesModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? image;
  @override
  final String? name;

  @override
  String toString() {
    return 'AmenitiesModel(id: $id, image: $image, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmenitiesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmenitiesModelImplCopyWith<_$AmenitiesModelImpl> get copyWith =>
      __$$AmenitiesModelImplCopyWithImpl<_$AmenitiesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmenitiesModelImplToJson(
      this,
    );
  }
}

abstract class _AmenitiesModel implements AmenitiesModel {
  const factory _AmenitiesModel(
      {@JsonKey(name: '_id') final String? id,
      final String? image,
      final String? name}) = _$AmenitiesModelImpl;

  factory _AmenitiesModel.fromJson(Map<String, dynamic> json) =
      _$AmenitiesModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$AmenitiesModelImplCopyWith<_$AmenitiesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitModel _$UnitModelFromJson(Map<String, dynamic> json) {
  return _UnitModel.fromJson(json);
}

/// @nodoc
mixin _$UnitModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get hostId => throw _privateConstructorUsedError;
  String? get homeId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get unitNo => throw _privateConstructorUsedError;
  int? get floor => throw _privateConstructorUsedError;
  List<String>? get specialAmenities => throw _privateConstructorUsedError;
  int? get capacityCount => throw _privateConstructorUsedError;
  int? get occupiedCount => throw _privateConstructorUsedError;
  String? get unitType => throw _privateConstructorUsedError;
  RentModel? get rent => throw _privateConstructorUsedError;
  DateTime? get checkInDate => throw _privateConstructorUsedError;
  DateTime? get checkOutDate => throw _privateConstructorUsedError;
  int? get guestCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitModelCopyWith<UnitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitModelCopyWith<$Res> {
  factory $UnitModelCopyWith(UnitModel value, $Res Function(UnitModel) then) =
      _$UnitModelCopyWithImpl<$Res, UnitModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? hostId,
      String? homeId,
      String? image,
      String? unitNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      int? occupiedCount,
      String? unitType,
      RentModel? rent,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount});

  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class _$UnitModelCopyWithImpl<$Res, $Val extends UnitModel>
    implements $UnitModelCopyWith<$Res> {
  _$UnitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostId = freezed,
    Object? homeId = freezed,
    Object? image = freezed,
    Object? unitNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? occupiedCount = freezed,
    Object? unitType = freezed,
    Object? rent = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String?,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNo: freezed == unitNo
          ? _value.unitNo
          : unitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      specialAmenities: freezed == specialAmenities
          ? _value.specialAmenities
          : specialAmenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      capacityCount: freezed == capacityCount
          ? _value.capacityCount
          : capacityCount // ignore: cast_nullable_to_non_nullable
              as int?,
      occupiedCount: freezed == occupiedCount
          ? _value.occupiedCount
          : occupiedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOutDate: freezed == checkOutDate
          ? _value.checkOutDate
          : checkOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      guestCount: freezed == guestCount
          ? _value.guestCount
          : guestCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RentModelCopyWith<$Res>? get rent {
    if (_value.rent == null) {
      return null;
    }

    return $RentModelCopyWith<$Res>(_value.rent!, (value) {
      return _then(_value.copyWith(rent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnitModelImplCopyWith<$Res>
    implements $UnitModelCopyWith<$Res> {
  factory _$$UnitModelImplCopyWith(
          _$UnitModelImpl value, $Res Function(_$UnitModelImpl) then) =
      __$$UnitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? hostId,
      String? homeId,
      String? image,
      String? unitNo,
      int? floor,
      List<String>? specialAmenities,
      int? capacityCount,
      int? occupiedCount,
      String? unitType,
      RentModel? rent,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount});

  @override
  $RentModelCopyWith<$Res>? get rent;
}

/// @nodoc
class __$$UnitModelImplCopyWithImpl<$Res>
    extends _$UnitModelCopyWithImpl<$Res, _$UnitModelImpl>
    implements _$$UnitModelImplCopyWith<$Res> {
  __$$UnitModelImplCopyWithImpl(
      _$UnitModelImpl _value, $Res Function(_$UnitModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hostId = freezed,
    Object? homeId = freezed,
    Object? image = freezed,
    Object? unitNo = freezed,
    Object? floor = freezed,
    Object? specialAmenities = freezed,
    Object? capacityCount = freezed,
    Object? occupiedCount = freezed,
    Object? unitType = freezed,
    Object? rent = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
  }) {
    return _then(_$UnitModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as String?,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      unitNo: freezed == unitNo
          ? _value.unitNo
          : unitNo // ignore: cast_nullable_to_non_nullable
              as String?,
      floor: freezed == floor
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as int?,
      specialAmenities: freezed == specialAmenities
          ? _value._specialAmenities
          : specialAmenities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      capacityCount: freezed == capacityCount
          ? _value.capacityCount
          : capacityCount // ignore: cast_nullable_to_non_nullable
              as int?,
      occupiedCount: freezed == occupiedCount
          ? _value.occupiedCount
          : occupiedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      rent: freezed == rent
          ? _value.rent
          : rent // ignore: cast_nullable_to_non_nullable
              as RentModel?,
      checkInDate: freezed == checkInDate
          ? _value.checkInDate
          : checkInDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkOutDate: freezed == checkOutDate
          ? _value.checkOutDate
          : checkOutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      guestCount: freezed == guestCount
          ? _value.guestCount
          : guestCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitModelImpl implements _UnitModel {
  const _$UnitModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.hostId,
      this.homeId,
      this.image,
      this.unitNo,
      this.floor,
      final List<String>? specialAmenities,
      this.capacityCount,
      this.occupiedCount,
      this.unitType,
      this.rent,
      this.checkInDate,
      this.checkOutDate,
      this.guestCount})
      : _specialAmenities = specialAmenities;

  factory _$UnitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? hostId;
  @override
  final String? homeId;
  @override
  final String? image;
  @override
  final String? unitNo;
  @override
  final int? floor;
  final List<String>? _specialAmenities;
  @override
  List<String>? get specialAmenities {
    final value = _specialAmenities;
    if (value == null) return null;
    if (_specialAmenities is EqualUnmodifiableListView)
      return _specialAmenities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? capacityCount;
  @override
  final int? occupiedCount;
  @override
  final String? unitType;
  @override
  final RentModel? rent;
  @override
  final DateTime? checkInDate;
  @override
  final DateTime? checkOutDate;
  @override
  final int? guestCount;

  @override
  String toString() {
    return 'UnitModel(id: $id, hostId: $hostId, homeId: $homeId, image: $image, unitNo: $unitNo, floor: $floor, specialAmenities: $specialAmenities, capacityCount: $capacityCount, occupiedCount: $occupiedCount, unitType: $unitType, rent: $rent, checkInDate: $checkInDate, checkOutDate: $checkOutDate, guestCount: $guestCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hostId, hostId) || other.hostId == hostId) &&
            (identical(other.homeId, homeId) || other.homeId == homeId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.unitNo, unitNo) || other.unitNo == unitNo) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            const DeepCollectionEquality()
                .equals(other._specialAmenities, _specialAmenities) &&
            (identical(other.capacityCount, capacityCount) ||
                other.capacityCount == capacityCount) &&
            (identical(other.occupiedCount, occupiedCount) ||
                other.occupiedCount == occupiedCount) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.rent, rent) || other.rent == rent) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      hostId,
      homeId,
      image,
      unitNo,
      floor,
      const DeepCollectionEquality().hash(_specialAmenities),
      capacityCount,
      occupiedCount,
      unitType,
      rent,
      checkInDate,
      checkOutDate,
      guestCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitModelImplCopyWith<_$UnitModelImpl> get copyWith =>
      __$$UnitModelImplCopyWithImpl<_$UnitModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitModelImplToJson(
      this,
    );
  }
}

abstract class _UnitModel implements UnitModel {
  const factory _UnitModel(
      {@JsonKey(name: '_id') final String? id,
      final String? hostId,
      final String? homeId,
      final String? image,
      final String? unitNo,
      final int? floor,
      final List<String>? specialAmenities,
      final int? capacityCount,
      final int? occupiedCount,
      final String? unitType,
      final RentModel? rent,
      final DateTime? checkInDate,
      final DateTime? checkOutDate,
      final int? guestCount}) = _$UnitModelImpl;

  factory _UnitModel.fromJson(Map<String, dynamic> json) =
      _$UnitModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get hostId;
  @override
  String? get homeId;
  @override
  String? get image;
  @override
  String? get unitNo;
  @override
  int? get floor;
  @override
  List<String>? get specialAmenities;
  @override
  int? get capacityCount;
  @override
  int? get occupiedCount;
  @override
  String? get unitType;
  @override
  RentModel? get rent;
  @override
  DateTime? get checkInDate;
  @override
  DateTime? get checkOutDate;
  @override
  int? get guestCount;
  @override
  @JsonKey(ignore: true)
  _$$UnitModelImplCopyWith<_$UnitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RentModel _$RentModelFromJson(Map<String, dynamic> json) {
  return _RentModel.fromJson(json);
}

/// @nodoc
mixin _$RentModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get monthly => throw _privateConstructorUsedError;
  int? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentModelCopyWith<RentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentModelCopyWith<$Res> {
  factory $RentModelCopyWith(RentModel value, $Res Function(RentModel) then) =
      _$RentModelCopyWithImpl<$Res, RentModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, int? monthly, int? daily});
}

/// @nodoc
class _$RentModelCopyWithImpl<$Res, $Val extends RentModel>
    implements $RentModelCopyWith<$Res> {
  _$RentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      monthly: freezed == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as int?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentModelImplCopyWith<$Res>
    implements $RentModelCopyWith<$Res> {
  factory _$$RentModelImplCopyWith(
          _$RentModelImpl value, $Res Function(_$RentModelImpl) then) =
      __$$RentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String? id, int? monthly, int? daily});
}

/// @nodoc
class __$$RentModelImplCopyWithImpl<$Res>
    extends _$RentModelCopyWithImpl<$Res, _$RentModelImpl>
    implements _$$RentModelImplCopyWith<$Res> {
  __$$RentModelImplCopyWithImpl(
      _$RentModelImpl _value, $Res Function(_$RentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? monthly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_$RentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      monthly: freezed == monthly
          ? _value.monthly
          : monthly // ignore: cast_nullable_to_non_nullable
              as int?,
      daily: freezed == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RentModelImpl implements _RentModel {
  const _$RentModelImpl(
      {@JsonKey(name: '_id') this.id, this.monthly, this.daily});

  factory _$RentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? monthly;
  @override
  final int? daily;

  @override
  String toString() {
    return 'RentModel(id: $id, monthly: $monthly, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.monthly, monthly) || other.monthly == monthly) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, monthly, daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentModelImplCopyWith<_$RentModelImpl> get copyWith =>
      __$$RentModelImplCopyWithImpl<_$RentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentModelImplToJson(
      this,
    );
  }
}

abstract class _RentModel implements RentModel {
  const factory _RentModel(
      {@JsonKey(name: '_id') final String? id,
      final int? monthly,
      final int? daily}) = _$RentModelImpl;

  factory _RentModel.fromJson(Map<String, dynamic> json) =
      _$RentModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get monthly;
  @override
  int? get daily;
  @override
  @JsonKey(ignore: true)
  _$$RentModelImplCopyWith<_$RentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TitleMessageModel _$TitleMessageModelFromJson(Map<String, dynamic> json) {
  return _TitleMessageModel.fromJson(json);
}

/// @nodoc
mixin _$TitleMessageModel {
  String? get image => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleMessageModelCopyWith<TitleMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleMessageModelCopyWith<$Res> {
  factory $TitleMessageModelCopyWith(
          TitleMessageModel value, $Res Function(TitleMessageModel) then) =
      _$TitleMessageModelCopyWithImpl<$Res, TitleMessageModel>;
  @useResult
  $Res call({String? image, String? message});
}

/// @nodoc
class _$TitleMessageModelCopyWithImpl<$Res, $Val extends TitleMessageModel>
    implements $TitleMessageModelCopyWith<$Res> {
  _$TitleMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TitleMessageModelImplCopyWith<$Res>
    implements $TitleMessageModelCopyWith<$Res> {
  factory _$$TitleMessageModelImplCopyWith(_$TitleMessageModelImpl value,
          $Res Function(_$TitleMessageModelImpl) then) =
      __$$TitleMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String? message});
}

/// @nodoc
class __$$TitleMessageModelImplCopyWithImpl<$Res>
    extends _$TitleMessageModelCopyWithImpl<$Res, _$TitleMessageModelImpl>
    implements _$$TitleMessageModelImplCopyWith<$Res> {
  __$$TitleMessageModelImplCopyWithImpl(_$TitleMessageModelImpl _value,
      $Res Function(_$TitleMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? message = freezed,
  }) {
    return _then(_$TitleMessageModelImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TitleMessageModelImpl implements _TitleMessageModel {
  const _$TitleMessageModelImpl({this.image, this.message});

  factory _$TitleMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TitleMessageModelImplFromJson(json);

  @override
  final String? image;
  @override
  final String? message;

  @override
  String toString() {
    return 'TitleMessageModel(image: $image, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleMessageModelImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, image, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleMessageModelImplCopyWith<_$TitleMessageModelImpl> get copyWith =>
      __$$TitleMessageModelImplCopyWithImpl<_$TitleMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TitleMessageModelImplToJson(
      this,
    );
  }
}

abstract class _TitleMessageModel implements TitleMessageModel {
  const factory _TitleMessageModel(
      {final String? image, final String? message}) = _$TitleMessageModelImpl;

  factory _TitleMessageModel.fromJson(Map<String, dynamic> json) =
      _$TitleMessageModelImpl.fromJson;

  @override
  String? get image;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$TitleMessageModelImplCopyWith<_$TitleMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchHomeStatisticsResponseModel _$FetchHomeStatisticsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchHomeStatisticsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchHomeStatisticsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<StatsDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchHomeStatisticsResponseModelCopyWith<FetchHomeStatisticsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchHomeStatisticsResponseModelCopyWith<$Res> {
  factory $FetchHomeStatisticsResponseModelCopyWith(
          FetchHomeStatisticsResponseModel value,
          $Res Function(FetchHomeStatisticsResponseModel) then) =
      _$FetchHomeStatisticsResponseModelCopyWithImpl<$Res,
          FetchHomeStatisticsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<StatsDataModel>? data});
}

/// @nodoc
class _$FetchHomeStatisticsResponseModelCopyWithImpl<$Res,
        $Val extends FetchHomeStatisticsResponseModel>
    implements $FetchHomeStatisticsResponseModelCopyWith<$Res> {
  _$FetchHomeStatisticsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<StatsDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchHomeStatisticsResponseModelImplCopyWith<$Res>
    implements $FetchHomeStatisticsResponseModelCopyWith<$Res> {
  factory _$$FetchHomeStatisticsResponseModelImplCopyWith(
          _$FetchHomeStatisticsResponseModelImpl value,
          $Res Function(_$FetchHomeStatisticsResponseModelImpl) then) =
      __$$FetchHomeStatisticsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<StatsDataModel>? data});
}

/// @nodoc
class __$$FetchHomeStatisticsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchHomeStatisticsResponseModelCopyWithImpl<$Res,
        _$FetchHomeStatisticsResponseModelImpl>
    implements _$$FetchHomeStatisticsResponseModelImplCopyWith<$Res> {
  __$$FetchHomeStatisticsResponseModelImplCopyWithImpl(
      _$FetchHomeStatisticsResponseModelImpl _value,
      $Res Function(_$FetchHomeStatisticsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchHomeStatisticsResponseModelImpl(
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
              as List<StatsDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchHomeStatisticsResponseModelImpl
    implements _FetchHomeStatisticsResponseModel {
  const _$FetchHomeStatisticsResponseModelImpl(
      {this.status, this.message, final List<StatsDataModel>? data})
      : _data = data;

  factory _$FetchHomeStatisticsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchHomeStatisticsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<StatsDataModel>? _data;
  @override
  List<StatsDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchHomeStatisticsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchHomeStatisticsResponseModelImpl &&
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
  _$$FetchHomeStatisticsResponseModelImplCopyWith<
          _$FetchHomeStatisticsResponseModelImpl>
      get copyWith => __$$FetchHomeStatisticsResponseModelImplCopyWithImpl<
          _$FetchHomeStatisticsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchHomeStatisticsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchHomeStatisticsResponseModel
    implements FetchHomeStatisticsResponseModel {
  const factory _FetchHomeStatisticsResponseModel(
          {final int? status,
          final String? message,
          final List<StatsDataModel>? data}) =
      _$FetchHomeStatisticsResponseModelImpl;

  factory _FetchHomeStatisticsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchHomeStatisticsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<StatsDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchHomeStatisticsResponseModelImplCopyWith<
          _$FetchHomeStatisticsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StatsDataModel _$StatsDataModelFromJson(Map<String, dynamic> json) {
  return _StatsDataModel.fromJson(json);
}

/// @nodoc
mixin _$StatsDataModel {
  String? get type => throw _privateConstructorUsedError;
  dynamic get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsDataModelCopyWith<StatsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsDataModelCopyWith<$Res> {
  factory $StatsDataModelCopyWith(
          StatsDataModel value, $Res Function(StatsDataModel) then) =
      _$StatsDataModelCopyWithImpl<$Res, StatsDataModel>;
  @useResult
  $Res call({String? type, dynamic amount});
}

/// @nodoc
class _$StatsDataModelCopyWithImpl<$Res, $Val extends StatsDataModel>
    implements $StatsDataModelCopyWith<$Res> {
  _$StatsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsDataModelImplCopyWith<$Res>
    implements $StatsDataModelCopyWith<$Res> {
  factory _$$StatsDataModelImplCopyWith(_$StatsDataModelImpl value,
          $Res Function(_$StatsDataModelImpl) then) =
      __$$StatsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, dynamic amount});
}

/// @nodoc
class __$$StatsDataModelImplCopyWithImpl<$Res>
    extends _$StatsDataModelCopyWithImpl<$Res, _$StatsDataModelImpl>
    implements _$$StatsDataModelImplCopyWith<$Res> {
  __$$StatsDataModelImplCopyWithImpl(
      _$StatsDataModelImpl _value, $Res Function(_$StatsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$StatsDataModelImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsDataModelImpl implements _StatsDataModel {
  const _$StatsDataModelImpl({this.type, this.amount});

  factory _$StatsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsDataModelImplFromJson(json);

  @override
  final String? type;
  @override
  final dynamic amount;

  @override
  String toString() {
    return 'StatsDataModel(type: $type, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsDataModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsDataModelImplCopyWith<_$StatsDataModelImpl> get copyWith =>
      __$$StatsDataModelImplCopyWithImpl<_$StatsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsDataModelImplToJson(
      this,
    );
  }
}

abstract class _StatsDataModel implements StatsDataModel {
  const factory _StatsDataModel({final String? type, final dynamic amount}) =
      _$StatsDataModelImpl;

  factory _StatsDataModel.fromJson(Map<String, dynamic> json) =
      _$StatsDataModelImpl.fromJson;

  @override
  String? get type;
  @override
  dynamic get amount;
  @override
  @JsonKey(ignore: true)
  _$$StatsDataModelImplCopyWith<_$StatsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterUnitResponseModel _$RegisterUnitResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterUnitResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterUnitResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UnitModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterUnitResponseModelCopyWith<RegisterUnitResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUnitResponseModelCopyWith<$Res> {
  factory $RegisterUnitResponseModelCopyWith(RegisterUnitResponseModel value,
          $Res Function(RegisterUnitResponseModel) then) =
      _$RegisterUnitResponseModelCopyWithImpl<$Res, RegisterUnitResponseModel>;
  @useResult
  $Res call({int? status, String? message, UnitModel? data});

  $UnitModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterUnitResponseModelCopyWithImpl<$Res,
        $Val extends RegisterUnitResponseModel>
    implements $RegisterUnitResponseModelCopyWith<$Res> {
  _$RegisterUnitResponseModelCopyWithImpl(this._value, this._then);

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
              as UnitModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UnitModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterUnitResponseModelImplCopyWith<$Res>
    implements $RegisterUnitResponseModelCopyWith<$Res> {
  factory _$$RegisterUnitResponseModelImplCopyWith(
          _$RegisterUnitResponseModelImpl value,
          $Res Function(_$RegisterUnitResponseModelImpl) then) =
      __$$RegisterUnitResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, UnitModel? data});

  @override
  $UnitModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RegisterUnitResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterUnitResponseModelCopyWithImpl<$Res,
        _$RegisterUnitResponseModelImpl>
    implements _$$RegisterUnitResponseModelImplCopyWith<$Res> {
  __$$RegisterUnitResponseModelImplCopyWithImpl(
      _$RegisterUnitResponseModelImpl _value,
      $Res Function(_$RegisterUnitResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RegisterUnitResponseModelImpl(
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
              as UnitModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterUnitResponseModelImpl implements _RegisterUnitResponseModel {
  const _$RegisterUnitResponseModelImpl({this.status, this.message, this.data});

  factory _$RegisterUnitResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterUnitResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final UnitModel? data;

  @override
  String toString() {
    return 'RegisterUnitResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUnitResponseModelImpl &&
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
  _$$RegisterUnitResponseModelImplCopyWith<_$RegisterUnitResponseModelImpl>
      get copyWith => __$$RegisterUnitResponseModelImplCopyWithImpl<
          _$RegisterUnitResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterUnitResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterUnitResponseModel implements RegisterUnitResponseModel {
  const factory _RegisterUnitResponseModel(
      {final int? status,
      final String? message,
      final UnitModel? data}) = _$RegisterUnitResponseModelImpl;

  factory _RegisterUnitResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegisterUnitResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  UnitModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$RegisterUnitResponseModelImplCopyWith<_$RegisterUnitResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CreateCouponResponseModel _$CreateCouponResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CreateCouponResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CreateCouponResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CouponDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCouponResponseModelCopyWith<CreateCouponResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCouponResponseModelCopyWith<$Res> {
  factory $CreateCouponResponseModelCopyWith(CreateCouponResponseModel value,
          $Res Function(CreateCouponResponseModel) then) =
      _$CreateCouponResponseModelCopyWithImpl<$Res, CreateCouponResponseModel>;
  @useResult
  $Res call({int? status, String? message, CouponDataModel? data});

  $CouponDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateCouponResponseModelCopyWithImpl<$Res,
        $Val extends CreateCouponResponseModel>
    implements $CreateCouponResponseModelCopyWith<$Res> {
  _$CreateCouponResponseModelCopyWithImpl(this._value, this._then);

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
              as CouponDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CouponDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCouponResponseModelImplCopyWith<$Res>
    implements $CreateCouponResponseModelCopyWith<$Res> {
  factory _$$CreateCouponResponseModelImplCopyWith(
          _$CreateCouponResponseModelImpl value,
          $Res Function(_$CreateCouponResponseModelImpl) then) =
      __$$CreateCouponResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, CouponDataModel? data});

  @override
  $CouponDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateCouponResponseModelImplCopyWithImpl<$Res>
    extends _$CreateCouponResponseModelCopyWithImpl<$Res,
        _$CreateCouponResponseModelImpl>
    implements _$$CreateCouponResponseModelImplCopyWith<$Res> {
  __$$CreateCouponResponseModelImplCopyWithImpl(
      _$CreateCouponResponseModelImpl _value,
      $Res Function(_$CreateCouponResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateCouponResponseModelImpl(
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
              as CouponDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCouponResponseModelImpl implements _CreateCouponResponseModel {
  const _$CreateCouponResponseModelImpl({this.status, this.message, this.data});

  factory _$CreateCouponResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCouponResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final CouponDataModel? data;

  @override
  String toString() {
    return 'CreateCouponResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCouponResponseModelImpl &&
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
  _$$CreateCouponResponseModelImplCopyWith<_$CreateCouponResponseModelImpl>
      get copyWith => __$$CreateCouponResponseModelImplCopyWithImpl<
          _$CreateCouponResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCouponResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CreateCouponResponseModel implements CreateCouponResponseModel {
  const factory _CreateCouponResponseModel(
      {final int? status,
      final String? message,
      final CouponDataModel? data}) = _$CreateCouponResponseModelImpl;

  factory _CreateCouponResponseModel.fromJson(Map<String, dynamic> json) =
      _$CreateCouponResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  CouponDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateCouponResponseModelImplCopyWith<_$CreateCouponResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchCouponsResponseModel _$FetchCouponsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchCouponsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchCouponsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<CouponDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchCouponsResponseModelCopyWith<FetchCouponsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchCouponsResponseModelCopyWith<$Res> {
  factory $FetchCouponsResponseModelCopyWith(FetchCouponsResponseModel value,
          $Res Function(FetchCouponsResponseModel) then) =
      _$FetchCouponsResponseModelCopyWithImpl<$Res, FetchCouponsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<CouponDataModel>? data});
}

/// @nodoc
class _$FetchCouponsResponseModelCopyWithImpl<$Res,
        $Val extends FetchCouponsResponseModel>
    implements $FetchCouponsResponseModelCopyWith<$Res> {
  _$FetchCouponsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<CouponDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchCouponsResponseModelImplCopyWith<$Res>
    implements $FetchCouponsResponseModelCopyWith<$Res> {
  factory _$$FetchCouponsResponseModelImplCopyWith(
          _$FetchCouponsResponseModelImpl value,
          $Res Function(_$FetchCouponsResponseModelImpl) then) =
      __$$FetchCouponsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<CouponDataModel>? data});
}

/// @nodoc
class __$$FetchCouponsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchCouponsResponseModelCopyWithImpl<$Res,
        _$FetchCouponsResponseModelImpl>
    implements _$$FetchCouponsResponseModelImplCopyWith<$Res> {
  __$$FetchCouponsResponseModelImplCopyWithImpl(
      _$FetchCouponsResponseModelImpl _value,
      $Res Function(_$FetchCouponsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchCouponsResponseModelImpl(
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
              as List<CouponDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchCouponsResponseModelImpl implements _FetchCouponsResponseModel {
  const _$FetchCouponsResponseModelImpl(
      {this.status, this.message, final List<CouponDataModel>? data})
      : _data = data;

  factory _$FetchCouponsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchCouponsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<CouponDataModel>? _data;
  @override
  List<CouponDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchCouponsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCouponsResponseModelImpl &&
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
  _$$FetchCouponsResponseModelImplCopyWith<_$FetchCouponsResponseModelImpl>
      get copyWith => __$$FetchCouponsResponseModelImplCopyWithImpl<
          _$FetchCouponsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchCouponsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchCouponsResponseModel implements FetchCouponsResponseModel {
  const factory _FetchCouponsResponseModel(
      {final int? status,
      final String? message,
      final List<CouponDataModel>? data}) = _$FetchCouponsResponseModelImpl;

  factory _FetchCouponsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchCouponsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<CouponDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchCouponsResponseModelImplCopyWith<_$FetchCouponsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CouponDataModel _$CouponDataModelFromJson(Map<String, dynamic> json) {
  return _CouponDataModel.fromJson(json);
}

/// @nodoc
mixin _$CouponDataModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get discountType => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get singleUse => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  DateTime? get expiryDate => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get orderValue => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDataModelCopyWith<CouponDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDataModelCopyWith<$Res> {
  factory $CouponDataModelCopyWith(
          CouponDataModel value, $Res Function(CouponDataModel) then) =
      _$CouponDataModelCopyWithImpl<$Res, CouponDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? discountType,
      bool? isActive,
      bool? singleUse,
      String? createdBy,
      DateTime? expiryDate,
      String? code,
      int? orderValue,
      int? discount});
}

/// @nodoc
class _$CouponDataModelCopyWithImpl<$Res, $Val extends CouponDataModel>
    implements $CouponDataModelCopyWith<$Res> {
  _$CouponDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discountType = freezed,
    Object? isActive = freezed,
    Object? singleUse = freezed,
    Object? createdBy = freezed,
    Object? expiryDate = freezed,
    Object? code = freezed,
    Object? orderValue = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      singleUse: freezed == singleUse
          ? _value.singleUse
          : singleUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      orderValue: freezed == orderValue
          ? _value.orderValue
          : orderValue // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponDataModelImplCopyWith<$Res>
    implements $CouponDataModelCopyWith<$Res> {
  factory _$$CouponDataModelImplCopyWith(_$CouponDataModelImpl value,
          $Res Function(_$CouponDataModelImpl) then) =
      __$$CouponDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? discountType,
      bool? isActive,
      bool? singleUse,
      String? createdBy,
      DateTime? expiryDate,
      String? code,
      int? orderValue,
      int? discount});
}

/// @nodoc
class __$$CouponDataModelImplCopyWithImpl<$Res>
    extends _$CouponDataModelCopyWithImpl<$Res, _$CouponDataModelImpl>
    implements _$$CouponDataModelImplCopyWith<$Res> {
  __$$CouponDataModelImplCopyWithImpl(
      _$CouponDataModelImpl _value, $Res Function(_$CouponDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discountType = freezed,
    Object? isActive = freezed,
    Object? singleUse = freezed,
    Object? createdBy = freezed,
    Object? expiryDate = freezed,
    Object? code = freezed,
    Object? orderValue = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$CouponDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      singleUse: freezed == singleUse
          ? _value.singleUse
          : singleUse // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryDate: freezed == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      orderValue: freezed == orderValue
          ? _value.orderValue
          : orderValue // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDataModelImpl implements _CouponDataModel {
  const _$CouponDataModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.discountType,
      this.isActive,
      this.singleUse,
      this.createdBy,
      this.expiryDate,
      this.code,
      this.orderValue,
      this.discount});

  factory _$CouponDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDataModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? discountType;
  @override
  final bool? isActive;
  @override
  final bool? singleUse;
  @override
  final String? createdBy;
  @override
  final DateTime? expiryDate;
  @override
  final String? code;
  @override
  final int? orderValue;
  @override
  final int? discount;

  @override
  String toString() {
    return 'CouponDataModel(id: $id, discountType: $discountType, isActive: $isActive, singleUse: $singleUse, createdBy: $createdBy, expiryDate: $expiryDate, code: $code, orderValue: $orderValue, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.singleUse, singleUse) ||
                other.singleUse == singleUse) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.orderValue, orderValue) ||
                other.orderValue == orderValue) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, discountType, isActive,
      singleUse, createdBy, expiryDate, code, orderValue, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDataModelImplCopyWith<_$CouponDataModelImpl> get copyWith =>
      __$$CouponDataModelImplCopyWithImpl<_$CouponDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDataModelImplToJson(
      this,
    );
  }
}

abstract class _CouponDataModel implements CouponDataModel {
  const factory _CouponDataModel(
      {@JsonKey(name: '_id') final String? id,
      final String? discountType,
      final bool? isActive,
      final bool? singleUse,
      final String? createdBy,
      final DateTime? expiryDate,
      final String? code,
      final int? orderValue,
      final int? discount}) = _$CouponDataModelImpl;

  factory _CouponDataModel.fromJson(Map<String, dynamic> json) =
      _$CouponDataModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get discountType;
  @override
  bool? get isActive;
  @override
  bool? get singleUse;
  @override
  String? get createdBy;
  @override
  DateTime? get expiryDate;
  @override
  String? get code;
  @override
  int? get orderValue;
  @override
  int? get discount;
  @override
  @JsonKey(ignore: true)
  _$$CouponDataModelImplCopyWith<_$CouponDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
