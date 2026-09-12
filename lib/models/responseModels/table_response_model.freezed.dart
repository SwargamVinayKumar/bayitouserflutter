// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FetchTablesResponse _$FetchTablesResponseFromJson(Map<String, dynamic> json) {
  return _FetchTablesResponse.fromJson(json);
}

/// @nodoc
mixin _$FetchTablesResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  TableData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchTablesResponseCopyWith<FetchTablesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTablesResponseCopyWith<$Res> {
  factory $FetchTablesResponseCopyWith(
          FetchTablesResponse value, $Res Function(FetchTablesResponse) then) =
      _$FetchTablesResponseCopyWithImpl<$Res, FetchTablesResponse>;
  @useResult
  $Res call({int? status, String? message, TableData? data});

  $TableDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchTablesResponseCopyWithImpl<$Res, $Val extends FetchTablesResponse>
    implements $FetchTablesResponseCopyWith<$Res> {
  _$FetchTablesResponseCopyWithImpl(this._value, this._then);

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
              as TableData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TableDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchTablesResponseImplCopyWith<$Res>
    implements $FetchTablesResponseCopyWith<$Res> {
  factory _$$FetchTablesResponseImplCopyWith(_$FetchTablesResponseImpl value,
          $Res Function(_$FetchTablesResponseImpl) then) =
      __$$FetchTablesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, TableData? data});

  @override
  $TableDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchTablesResponseImplCopyWithImpl<$Res>
    extends _$FetchTablesResponseCopyWithImpl<$Res, _$FetchTablesResponseImpl>
    implements _$$FetchTablesResponseImplCopyWith<$Res> {
  __$$FetchTablesResponseImplCopyWithImpl(_$FetchTablesResponseImpl _value,
      $Res Function(_$FetchTablesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchTablesResponseImpl(
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
              as TableData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchTablesResponseImpl implements _FetchTablesResponse {
  const _$FetchTablesResponseImpl({this.status, this.message, this.data});

  factory _$FetchTablesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FetchTablesResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final TableData? data;

  @override
  String toString() {
    return 'FetchTablesResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTablesResponseImpl &&
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
  _$$FetchTablesResponseImplCopyWith<_$FetchTablesResponseImpl> get copyWith =>
      __$$FetchTablesResponseImplCopyWithImpl<_$FetchTablesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchTablesResponseImplToJson(
      this,
    );
  }
}

abstract class _FetchTablesResponse implements FetchTablesResponse {
  const factory _FetchTablesResponse(
      {final int? status,
      final String? message,
      final TableData? data}) = _$FetchTablesResponseImpl;

  factory _FetchTablesResponse.fromJson(Map<String, dynamic> json) =
      _$FetchTablesResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  TableData? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchTablesResponseImplCopyWith<_$FetchTablesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TableData _$TableDataFromJson(Map<String, dynamic> json) {
  return _TableData.fromJson(json);
}

/// @nodoc
mixin _$TableData {
  List<TableModel>? get tables => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableDataCopyWith<TableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableDataCopyWith<$Res> {
  factory $TableDataCopyWith(TableData value, $Res Function(TableData) then) =
      _$TableDataCopyWithImpl<$Res, TableData>;
  @useResult
  $Res call({List<TableModel>? tables, Pagination? pagination});

  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$TableDataCopyWithImpl<$Res, $Val extends TableData>
    implements $TableDataCopyWith<$Res> {
  _$TableDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      tables: freezed == tables
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableDataImplCopyWith<$Res>
    implements $TableDataCopyWith<$Res> {
  factory _$$TableDataImplCopyWith(
          _$TableDataImpl value, $Res Function(_$TableDataImpl) then) =
      __$$TableDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TableModel>? tables, Pagination? pagination});

  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$TableDataImplCopyWithImpl<$Res>
    extends _$TableDataCopyWithImpl<$Res, _$TableDataImpl>
    implements _$$TableDataImplCopyWith<$Res> {
  __$$TableDataImplCopyWithImpl(
      _$TableDataImpl _value, $Res Function(_$TableDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tables = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$TableDataImpl(
      tables: freezed == tables
          ? _value._tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<TableModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableDataImpl implements _TableData {
  const _$TableDataImpl({final List<TableModel>? tables, this.pagination})
      : _tables = tables;

  factory _$TableDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableDataImplFromJson(json);

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
  final Pagination? pagination;

  @override
  String toString() {
    return 'TableData(tables: $tables, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableDataImpl &&
            const DeepCollectionEquality().equals(other._tables, _tables) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tables), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableDataImplCopyWith<_$TableDataImpl> get copyWith =>
      __$$TableDataImplCopyWithImpl<_$TableDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableDataImplToJson(
      this,
    );
  }
}

abstract class _TableData implements TableData {
  const factory _TableData(
      {final List<TableModel>? tables,
      final Pagination? pagination}) = _$TableDataImpl;

  factory _TableData.fromJson(Map<String, dynamic> json) =
      _$TableDataImpl.fromJson;

  @override
  List<TableModel>? get tables;
  @override
  Pagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$TableDataImplCopyWith<_$TableDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TableModel _$TableModelFromJson(Map<String, dynamic> json) {
  return _TableModel.fromJson(json);
}

/// @nodoc
mixin _$TableModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String? get outletId => throw _privateConstructorUsedError;
  String? get tableNumber => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get seatType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  int? get seatCapacity => throw _privateConstructorUsedError;
  List<SeatModel>? get seats => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get tableCount => throw _privateConstructorUsedError;
  int? get totalVotes => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  List<CategoryRating>? get categoryRating =>
      throw _privateConstructorUsedError;
  RatingAndReviewModel? get topRated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableModelCopyWith<TableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableModelCopyWith<$Res> {
  factory $TableModelCopyWith(
          TableModel value, $Res Function(TableModel) then) =
      _$TableModelCopyWithImpl<$Res, TableModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? outletId,
      String? tableNumber,
      String? description,
      String? seatType,
      List<String>? images,
      bool? available,
      int? seatCapacity,
      List<SeatModel>? seats,
      int? ratingCount,
      String? createdAt,
      String? updatedAt,
      int? tableCount,
      int? totalVotes,
      double? rating,
      List<CategoryRating>? categoryRating,
      RatingAndReviewModel? topRated});

  $RatingAndReviewModelCopyWith<$Res>? get topRated;
}

/// @nodoc
class _$TableModelCopyWithImpl<$Res, $Val extends TableModel>
    implements $TableModelCopyWith<$Res> {
  _$TableModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outletId = freezed,
    Object? tableNumber = freezed,
    Object? description = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? seatCapacity = freezed,
    Object? seats = freezed,
    Object? ratingCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tableCount = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
    Object? categoryRating = freezed,
    Object? topRated = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<SeatModel>?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tableCount: freezed == tableCount
          ? _value.tableCount
          : tableCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: freezed == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryRating: freezed == categoryRating
          ? _value.categoryRating
          : categoryRating // ignore: cast_nullable_to_non_nullable
              as List<CategoryRating>?,
      topRated: freezed == topRated
          ? _value.topRated
          : topRated // ignore: cast_nullable_to_non_nullable
              as RatingAndReviewModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingAndReviewModelCopyWith<$Res>? get topRated {
    if (_value.topRated == null) {
      return null;
    }

    return $RatingAndReviewModelCopyWith<$Res>(_value.topRated!, (value) {
      return _then(_value.copyWith(topRated: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableModelImplCopyWith<$Res>
    implements $TableModelCopyWith<$Res> {
  factory _$$TableModelImplCopyWith(
          _$TableModelImpl value, $Res Function(_$TableModelImpl) then) =
      __$$TableModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String? outletId,
      String? tableNumber,
      String? description,
      String? seatType,
      List<String>? images,
      bool? available,
      int? seatCapacity,
      List<SeatModel>? seats,
      int? ratingCount,
      String? createdAt,
      String? updatedAt,
      int? tableCount,
      int? totalVotes,
      double? rating,
      List<CategoryRating>? categoryRating,
      RatingAndReviewModel? topRated});

  @override
  $RatingAndReviewModelCopyWith<$Res>? get topRated;
}

/// @nodoc
class __$$TableModelImplCopyWithImpl<$Res>
    extends _$TableModelCopyWithImpl<$Res, _$TableModelImpl>
    implements _$$TableModelImplCopyWith<$Res> {
  __$$TableModelImplCopyWithImpl(
      _$TableModelImpl _value, $Res Function(_$TableModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outletId = freezed,
    Object? tableNumber = freezed,
    Object? description = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? seatCapacity = freezed,
    Object? seats = freezed,
    Object? ratingCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tableCount = freezed,
    Object? totalVotes = freezed,
    Object? rating = freezed,
    Object? categoryRating = freezed,
    Object? topRated = freezed,
  }) {
    return _then(_$TableModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as List<SeatModel>?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      tableCount: freezed == tableCount
          ? _value.tableCount
          : tableCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalVotes: freezed == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      categoryRating: freezed == categoryRating
          ? _value._categoryRating
          : categoryRating // ignore: cast_nullable_to_non_nullable
              as List<CategoryRating>?,
      topRated: freezed == topRated
          ? _value.topRated
          : topRated // ignore: cast_nullable_to_non_nullable
              as RatingAndReviewModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableModelImpl implements _TableModel {
  const _$TableModelImpl(
      {@JsonKey(name: '_id') required this.id,
      this.outletId,
      this.tableNumber,
      this.description,
      this.seatType,
      final List<String>? images,
      this.available,
      this.seatCapacity,
      final List<SeatModel>? seats,
      this.ratingCount,
      this.createdAt,
      this.updatedAt,
      this.tableCount,
      this.totalVotes,
      this.rating,
      final List<CategoryRating>? categoryRating,
      this.topRated})
      : _images = images,
        _seats = seats,
        _categoryRating = categoryRating;

  factory _$TableModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
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
  final List<SeatModel>? _seats;
  @override
  List<SeatModel>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? ratingCount;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int? tableCount;
  @override
  final int? totalVotes;
  @override
  final double? rating;
  final List<CategoryRating>? _categoryRating;
  @override
  List<CategoryRating>? get categoryRating {
    final value = _categoryRating;
    if (value == null) return null;
    if (_categoryRating is EqualUnmodifiableListView) return _categoryRating;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RatingAndReviewModel? topRated;

  @override
  String toString() {
    return 'TableModel(id: $id, outletId: $outletId, tableNumber: $tableNumber, description: $description, seatType: $seatType, images: $images, available: $available, seatCapacity: $seatCapacity, seats: $seats, ratingCount: $ratingCount, createdAt: $createdAt, updatedAt: $updatedAt, tableCount: $tableCount, totalVotes: $totalVotes, rating: $rating, categoryRating: $categoryRating, topRated: $topRated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableModelImpl &&
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
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.tableCount, tableCount) ||
                other.tableCount == tableCount) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._categoryRating, _categoryRating) &&
            (identical(other.topRated, topRated) ||
                other.topRated == topRated));
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
      ratingCount,
      createdAt,
      updatedAt,
      tableCount,
      totalVotes,
      rating,
      const DeepCollectionEquality().hash(_categoryRating),
      topRated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      __$$TableModelImplCopyWithImpl<_$TableModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableModelImplToJson(
      this,
    );
  }
}

abstract class _TableModel implements TableModel {
  const factory _TableModel(
      {@JsonKey(name: '_id') required final String id,
      final String? outletId,
      final String? tableNumber,
      final String? description,
      final String? seatType,
      final List<String>? images,
      final bool? available,
      final int? seatCapacity,
      final List<SeatModel>? seats,
      final int? ratingCount,
      final String? createdAt,
      final String? updatedAt,
      final int? tableCount,
      final int? totalVotes,
      final double? rating,
      final List<CategoryRating>? categoryRating,
      final RatingAndReviewModel? topRated}) = _$TableModelImpl;

  factory _TableModel.fromJson(Map<String, dynamic> json) =
      _$TableModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
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
  List<SeatModel>? get seats;
  @override
  int? get ratingCount;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get tableCount;
  @override
  int? get totalVotes;
  @override
  double? get rating;
  @override
  List<CategoryRating>? get categoryRating;
  @override
  RatingAndReviewModel? get topRated;
  @override
  @JsonKey(ignore: true)
  _$$TableModelImplCopyWith<_$TableModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SeatModel _$SeatModelFromJson(Map<String, dynamic> json) {
  return _SeatModel.fromJson(json);
}

/// @nodoc
mixin _$SeatModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get seatNumber => throw _privateConstructorUsedError;
  String? get seatType => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  Charges? get charges => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatModelCopyWith<SeatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatModelCopyWith<$Res> {
  factory $SeatModelCopyWith(SeatModel value, $Res Function(SeatModel) then) =
      _$SeatModelCopyWithImpl<$Res, SeatModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? seatNumber,
      String? seatType,
      List<String>? images,
      bool? available,
      Charges? charges,
      String? createdAt,
      String? updatedAt});

  $ChargesCopyWith<$Res>? get charges;
}

/// @nodoc
class _$SeatModelCopyWithImpl<$Res, $Val extends SeatModel>
    implements $SeatModelCopyWith<$Res> {
  _$SeatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seatNumber = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? charges = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$SeatModelImplCopyWith<$Res>
    implements $SeatModelCopyWith<$Res> {
  factory _$$SeatModelImplCopyWith(
          _$SeatModelImpl value, $Res Function(_$SeatModelImpl) then) =
      __$$SeatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? seatNumber,
      String? seatType,
      List<String>? images,
      bool? available,
      Charges? charges,
      String? createdAt,
      String? updatedAt});

  @override
  $ChargesCopyWith<$Res>? get charges;
}

/// @nodoc
class __$$SeatModelImplCopyWithImpl<$Res>
    extends _$SeatModelCopyWithImpl<$Res, _$SeatModelImpl>
    implements _$$SeatModelImplCopyWith<$Res> {
  __$$SeatModelImplCopyWithImpl(
      _$SeatModelImpl _value, $Res Function(_$SeatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? seatNumber = freezed,
    Object? seatType = freezed,
    Object? images = freezed,
    Object? available = freezed,
    Object? charges = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SeatModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$SeatModelImpl implements _SeatModel {
  const _$SeatModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.seatNumber,
      this.seatType,
      final List<String>? images,
      this.available,
      this.charges,
      this.createdAt,
      this.updatedAt})
      : _images = images;

  factory _$SeatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeatModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
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
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'SeatModel(id: $id, seatNumber: $seatNumber, seatType: $seatType, images: $images, available: $available, charges: $charges, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.seatNumber, seatNumber) ||
                other.seatNumber == seatNumber) &&
            (identical(other.seatType, seatType) ||
                other.seatType == seatType) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.charges, charges) || other.charges == charges) &&
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
      seatNumber,
      seatType,
      const DeepCollectionEquality().hash(_images),
      available,
      charges,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeatModelImplCopyWith<_$SeatModelImpl> get copyWith =>
      __$$SeatModelImplCopyWithImpl<_$SeatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeatModelImplToJson(
      this,
    );
  }
}

abstract class _SeatModel implements SeatModel {
  const factory _SeatModel(
      {@JsonKey(name: '_id') final String? id,
      final String? seatNumber,
      final String? seatType,
      final List<String>? images,
      final bool? available,
      final Charges? charges,
      final String? createdAt,
      final String? updatedAt}) = _$SeatModelImpl;

  factory _SeatModel.fromJson(Map<String, dynamic> json) =
      _$SeatModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
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
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SeatModelImplCopyWith<_$SeatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Charges _$ChargesFromJson(Map<String, dynamic> json) {
  return _Charges.fromJson(json);
}

/// @nodoc
mixin _$Charges {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  int? get perHour => throw _privateConstructorUsedError;
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
      {@JsonKey(name: '_id') String? id,
      int? perHour,
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
    Object? id = freezed,
    Object? perHour = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: '_id') String? id,
      int? perHour,
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
    Object? id = freezed,
    Object? perHour = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ChargesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      perHour: freezed == perHour
          ? _value.perHour
          : perHour // ignore: cast_nullable_to_non_nullable
              as int?,
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
      {@JsonKey(name: '_id') this.id,
      this.perHour,
      this.createdAt,
      this.updatedAt});

  factory _$ChargesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChargesImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final int? perHour;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Charges(id: $id, perHour: $perHour, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChargesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.perHour, perHour) || other.perHour == perHour) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, perHour, createdAt, updatedAt);

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
      {@JsonKey(name: '_id') final String? id,
      final int? perHour,
      final String? createdAt,
      final String? updatedAt}) = _$ChargesImpl;

  factory _Charges.fromJson(Map<String, dynamic> json) = _$ChargesImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  int? get perHour;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChargesImplCopyWith<_$ChargesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return _Pagination.fromJson(json);
}

/// @nodoc
mixin _$Pagination {
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationCopyWith<Pagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationCopyWith<$Res> {
  factory $PaginationCopyWith(
          Pagination value, $Res Function(Pagination) then) =
      _$PaginationCopyWithImpl<$Res, Pagination>;
  @useResult
  $Res call({int? page, int? limit, int? total, int? pages});
}

/// @nodoc
class _$PaginationCopyWithImpl<$Res, $Val extends Pagination>
    implements $PaginationCopyWith<$Res> {
  _$PaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationImplCopyWith<$Res>
    implements $PaginationCopyWith<$Res> {
  factory _$$PaginationImplCopyWith(
          _$PaginationImpl value, $Res Function(_$PaginationImpl) then) =
      __$$PaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page, int? limit, int? total, int? pages});
}

/// @nodoc
class __$$PaginationImplCopyWithImpl<$Res>
    extends _$PaginationCopyWithImpl<$Res, _$PaginationImpl>
    implements _$$PaginationImplCopyWith<$Res> {
  __$$PaginationImplCopyWithImpl(
      _$PaginationImpl _value, $Res Function(_$PaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? limit = freezed,
    Object? total = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$PaginationImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationImpl implements _Pagination {
  const _$PaginationImpl({this.page, this.limit, this.total, this.pages});

  factory _$PaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationImplFromJson(json);

  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? total;
  @override
  final int? pages;

  @override
  String toString() {
    return 'Pagination(page: $page, limit: $limit, total: $total, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit, total, pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
      __$$PaginationImplCopyWithImpl<_$PaginationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationImplToJson(
      this,
    );
  }
}

abstract class _Pagination implements Pagination {
  const factory _Pagination(
      {final int? page,
      final int? limit,
      final int? total,
      final int? pages}) = _$PaginationImpl;

  factory _Pagination.fromJson(Map<String, dynamic> json) =
      _$PaginationImpl.fromJson;

  @override
  int? get page;
  @override
  int? get limit;
  @override
  int? get total;
  @override
  int? get pages;
  @override
  @JsonKey(ignore: true)
  _$$PaginationImplCopyWith<_$PaginationImpl> get copyWith =>
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
  dynamic get outletId => throw _privateConstructorUsedError;
  dynamic get tableId => throw _privateConstructorUsedError;
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
  $Res call(
      {dynamic userId,
      dynamic outletId,
      dynamic tableId,
      dynamic rating,
      String? review});
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
    Object? outletId = freezed,
    Object? tableId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {dynamic userId,
      dynamic outletId,
      dynamic tableId,
      dynamic rating,
      String? review});
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
    Object? outletId = freezed,
    Object? tableId = freezed,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(_$RatingAndReviewModelImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
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
      {this.userId, this.outletId, this.tableId, this.rating, this.review});

  factory _$RatingAndReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingAndReviewModelImplFromJson(json);

  @override
  final dynamic userId;
  @override
  final dynamic outletId;
  @override
  final dynamic tableId;
  @override
  final dynamic rating;
  @override
  final String? review;

  @override
  String toString() {
    return 'RatingAndReviewModel(userId: $userId, outletId: $outletId, tableId: $tableId, rating: $rating, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingAndReviewModelImpl &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.outletId, outletId) &&
            const DeepCollectionEquality().equals(other.tableId, tableId) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(outletId),
      const DeepCollectionEquality().hash(tableId),
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
      final dynamic outletId,
      final dynamic tableId,
      final dynamic rating,
      final String? review}) = _$RatingAndReviewModelImpl;

  factory _RatingAndReviewModel.fromJson(Map<String, dynamic> json) =
      _$RatingAndReviewModelImpl.fromJson;

  @override
  dynamic get userId;
  @override
  dynamic get outletId;
  @override
  dynamic get tableId;
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
