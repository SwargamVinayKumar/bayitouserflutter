// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookings_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeUnitAvailabilityResponseModel _$HomeUnitAvailabilityResponseModelFromJson(
    Map<String, dynamic> json) {
  return _HomeUnitAvailabilityResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HomeUnitAvailabilityResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HomeUnitBookingDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUnitAvailabilityResponseModelCopyWith<HomeUnitAvailabilityResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUnitAvailabilityResponseModelCopyWith<$Res> {
  factory $HomeUnitAvailabilityResponseModelCopyWith(
          HomeUnitAvailabilityResponseModel value,
          $Res Function(HomeUnitAvailabilityResponseModel) then) =
      _$HomeUnitAvailabilityResponseModelCopyWithImpl<$Res,
          HomeUnitAvailabilityResponseModel>;
  @useResult
  $Res call({int? status, String? message, HomeUnitBookingDataModel? data});

  $HomeUnitBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeUnitAvailabilityResponseModelCopyWithImpl<$Res,
        $Val extends HomeUnitAvailabilityResponseModel>
    implements $HomeUnitAvailabilityResponseModelCopyWith<$Res> {
  _$HomeUnitAvailabilityResponseModelCopyWithImpl(this._value, this._then);

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
              as HomeUnitBookingDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeUnitBookingDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeUnitBookingDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeUnitAvailabilityResponseModelImplCopyWith<$Res>
    implements $HomeUnitAvailabilityResponseModelCopyWith<$Res> {
  factory _$$HomeUnitAvailabilityResponseModelImplCopyWith(
          _$HomeUnitAvailabilityResponseModelImpl value,
          $Res Function(_$HomeUnitAvailabilityResponseModelImpl) then) =
      __$$HomeUnitAvailabilityResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HomeUnitBookingDataModel? data});

  @override
  $HomeUnitBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HomeUnitAvailabilityResponseModelImplCopyWithImpl<$Res>
    extends _$HomeUnitAvailabilityResponseModelCopyWithImpl<$Res,
        _$HomeUnitAvailabilityResponseModelImpl>
    implements _$$HomeUnitAvailabilityResponseModelImplCopyWith<$Res> {
  __$$HomeUnitAvailabilityResponseModelImplCopyWithImpl(
      _$HomeUnitAvailabilityResponseModelImpl _value,
      $Res Function(_$HomeUnitAvailabilityResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HomeUnitAvailabilityResponseModelImpl(
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
              as HomeUnitBookingDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeUnitAvailabilityResponseModelImpl
    implements _HomeUnitAvailabilityResponseModel {
  const _$HomeUnitAvailabilityResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$HomeUnitAvailabilityResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeUnitAvailabilityResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HomeUnitBookingDataModel? data;

  @override
  String toString() {
    return 'HomeUnitAvailabilityResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUnitAvailabilityResponseModelImpl &&
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
  _$$HomeUnitAvailabilityResponseModelImplCopyWith<
          _$HomeUnitAvailabilityResponseModelImpl>
      get copyWith => __$$HomeUnitAvailabilityResponseModelImplCopyWithImpl<
          _$HomeUnitAvailabilityResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUnitAvailabilityResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HomeUnitAvailabilityResponseModel
    implements HomeUnitAvailabilityResponseModel {
  const factory _HomeUnitAvailabilityResponseModel(
          {final int? status,
          final String? message,
          final HomeUnitBookingDataModel? data}) =
      _$HomeUnitAvailabilityResponseModelImpl;

  factory _HomeUnitAvailabilityResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$HomeUnitAvailabilityResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HomeUnitBookingDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeUnitAvailabilityResponseModelImplCopyWith<
          _$HomeUnitAvailabilityResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConfirmBookingResponseModel _$ConfirmBookingResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ConfirmBookingResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmBookingResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HomeUnitBookingDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmBookingResponseModelCopyWith<ConfirmBookingResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmBookingResponseModelCopyWith<$Res> {
  factory $ConfirmBookingResponseModelCopyWith(
          ConfirmBookingResponseModel value,
          $Res Function(ConfirmBookingResponseModel) then) =
      _$ConfirmBookingResponseModelCopyWithImpl<$Res,
          ConfirmBookingResponseModel>;
  @useResult
  $Res call({int? status, String? message, HomeUnitBookingDataModel? data});

  $HomeUnitBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConfirmBookingResponseModelCopyWithImpl<$Res,
        $Val extends ConfirmBookingResponseModel>
    implements $ConfirmBookingResponseModelCopyWith<$Res> {
  _$ConfirmBookingResponseModelCopyWithImpl(this._value, this._then);

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
              as HomeUnitBookingDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeUnitBookingDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeUnitBookingDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfirmBookingResponseModelImplCopyWith<$Res>
    implements $ConfirmBookingResponseModelCopyWith<$Res> {
  factory _$$ConfirmBookingResponseModelImplCopyWith(
          _$ConfirmBookingResponseModelImpl value,
          $Res Function(_$ConfirmBookingResponseModelImpl) then) =
      __$$ConfirmBookingResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, HomeUnitBookingDataModel? data});

  @override
  $HomeUnitBookingDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ConfirmBookingResponseModelImplCopyWithImpl<$Res>
    extends _$ConfirmBookingResponseModelCopyWithImpl<$Res,
        _$ConfirmBookingResponseModelImpl>
    implements _$$ConfirmBookingResponseModelImplCopyWith<$Res> {
  __$$ConfirmBookingResponseModelImplCopyWithImpl(
      _$ConfirmBookingResponseModelImpl _value,
      $Res Function(_$ConfirmBookingResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ConfirmBookingResponseModelImpl(
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
              as HomeUnitBookingDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmBookingResponseModelImpl
    implements _ConfirmBookingResponseModel {
  const _$ConfirmBookingResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$ConfirmBookingResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ConfirmBookingResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final HomeUnitBookingDataModel? data;

  @override
  String toString() {
    return 'ConfirmBookingResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmBookingResponseModelImpl &&
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
  _$$ConfirmBookingResponseModelImplCopyWith<_$ConfirmBookingResponseModelImpl>
      get copyWith => __$$ConfirmBookingResponseModelImplCopyWithImpl<
          _$ConfirmBookingResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmBookingResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmBookingResponseModel
    implements ConfirmBookingResponseModel {
  const factory _ConfirmBookingResponseModel(
          {final int? status,
          final String? message,
          final HomeUnitBookingDataModel? data}) =
      _$ConfirmBookingResponseModelImpl;

  factory _ConfirmBookingResponseModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmBookingResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  HomeUnitBookingDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmBookingResponseModelImplCopyWith<_$ConfirmBookingResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HomeUnitAvailabilityDatesResponseModel
    _$HomeUnitAvailabilityDatesResponseModelFromJson(
        Map<String, dynamic> json) {
  return _HomeUnitAvailabilityDatesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HomeUnitAvailabilityDatesResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<AvailabilityDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUnitAvailabilityDatesResponseModelCopyWith<
          HomeUnitAvailabilityDatesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUnitAvailabilityDatesResponseModelCopyWith<$Res> {
  factory $HomeUnitAvailabilityDatesResponseModelCopyWith(
          HomeUnitAvailabilityDatesResponseModel value,
          $Res Function(HomeUnitAvailabilityDatesResponseModel) then) =
      _$HomeUnitAvailabilityDatesResponseModelCopyWithImpl<$Res,
          HomeUnitAvailabilityDatesResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<AvailabilityDataModel>? data});
}

/// @nodoc
class _$HomeUnitAvailabilityDatesResponseModelCopyWithImpl<$Res,
        $Val extends HomeUnitAvailabilityDatesResponseModel>
    implements $HomeUnitAvailabilityDatesResponseModelCopyWith<$Res> {
  _$HomeUnitAvailabilityDatesResponseModelCopyWithImpl(this._value, this._then);

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
              as List<AvailabilityDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeUnitAvailabilityDatesResponseModelImplCopyWith<$Res>
    implements $HomeUnitAvailabilityDatesResponseModelCopyWith<$Res> {
  factory _$$HomeUnitAvailabilityDatesResponseModelImplCopyWith(
          _$HomeUnitAvailabilityDatesResponseModelImpl value,
          $Res Function(_$HomeUnitAvailabilityDatesResponseModelImpl) then) =
      __$$HomeUnitAvailabilityDatesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<AvailabilityDataModel>? data});
}

/// @nodoc
class __$$HomeUnitAvailabilityDatesResponseModelImplCopyWithImpl<$Res>
    extends _$HomeUnitAvailabilityDatesResponseModelCopyWithImpl<$Res,
        _$HomeUnitAvailabilityDatesResponseModelImpl>
    implements _$$HomeUnitAvailabilityDatesResponseModelImplCopyWith<$Res> {
  __$$HomeUnitAvailabilityDatesResponseModelImplCopyWithImpl(
      _$HomeUnitAvailabilityDatesResponseModelImpl _value,
      $Res Function(_$HomeUnitAvailabilityDatesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HomeUnitAvailabilityDatesResponseModelImpl(
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
              as List<AvailabilityDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeUnitAvailabilityDatesResponseModelImpl
    implements _HomeUnitAvailabilityDatesResponseModel {
  const _$HomeUnitAvailabilityDatesResponseModelImpl(
      {this.status, this.message, final List<AvailabilityDataModel>? data})
      : _data = data;

  factory _$HomeUnitAvailabilityDatesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeUnitAvailabilityDatesResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<AvailabilityDataModel>? _data;
  @override
  List<AvailabilityDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeUnitAvailabilityDatesResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUnitAvailabilityDatesResponseModelImpl &&
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
  _$$HomeUnitAvailabilityDatesResponseModelImplCopyWith<
          _$HomeUnitAvailabilityDatesResponseModelImpl>
      get copyWith =>
          __$$HomeUnitAvailabilityDatesResponseModelImplCopyWithImpl<
              _$HomeUnitAvailabilityDatesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUnitAvailabilityDatesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HomeUnitAvailabilityDatesResponseModel
    implements HomeUnitAvailabilityDatesResponseModel {
  const factory _HomeUnitAvailabilityDatesResponseModel(
          {final int? status,
          final String? message,
          final List<AvailabilityDataModel>? data}) =
      _$HomeUnitAvailabilityDatesResponseModelImpl;

  factory _HomeUnitAvailabilityDatesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$HomeUnitAvailabilityDatesResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<AvailabilityDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeUnitAvailabilityDatesResponseModelImplCopyWith<
          _$HomeUnitAvailabilityDatesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityDataModel _$AvailabilityDataModelFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityDataModel.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityDataModel {
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityDataModelCopyWith<AvailabilityDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityDataModelCopyWith<$Res> {
  factory $AvailabilityDataModelCopyWith(AvailabilityDataModel value,
          $Res Function(AvailabilityDataModel) then) =
      _$AvailabilityDataModelCopyWithImpl<$Res, AvailabilityDataModel>;
  @useResult
  $Res call({String? date, String? status});
}

/// @nodoc
class _$AvailabilityDataModelCopyWithImpl<$Res,
        $Val extends AvailabilityDataModel>
    implements $AvailabilityDataModelCopyWith<$Res> {
  _$AvailabilityDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityDataModelImplCopyWith<$Res>
    implements $AvailabilityDataModelCopyWith<$Res> {
  factory _$$AvailabilityDataModelImplCopyWith(
          _$AvailabilityDataModelImpl value,
          $Res Function(_$AvailabilityDataModelImpl) then) =
      __$$AvailabilityDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, String? status});
}

/// @nodoc
class __$$AvailabilityDataModelImplCopyWithImpl<$Res>
    extends _$AvailabilityDataModelCopyWithImpl<$Res,
        _$AvailabilityDataModelImpl>
    implements _$$AvailabilityDataModelImplCopyWith<$Res> {
  __$$AvailabilityDataModelImplCopyWithImpl(_$AvailabilityDataModelImpl _value,
      $Res Function(_$AvailabilityDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AvailabilityDataModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityDataModelImpl implements _AvailabilityDataModel {
  const _$AvailabilityDataModelImpl({this.date, this.status});

  factory _$AvailabilityDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityDataModelImplFromJson(json);

  @override
  final String? date;
  @override
  final String? status;

  @override
  String toString() {
    return 'AvailabilityDataModel(date: $date, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityDataModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityDataModelImplCopyWith<_$AvailabilityDataModelImpl>
      get copyWith => __$$AvailabilityDataModelImplCopyWithImpl<
          _$AvailabilityDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityDataModelImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityDataModel implements AvailabilityDataModel {
  const factory _AvailabilityDataModel(
      {final String? date, final String? status}) = _$AvailabilityDataModelImpl;

  factory _AvailabilityDataModel.fromJson(Map<String, dynamic> json) =
      _$AvailabilityDataModelImpl.fromJson;

  @override
  String? get date;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityDataModelImplCopyWith<_$AvailabilityDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GuestDetailsModel _$GuestDetailsModelFromJson(Map<String, dynamic> json) {
  return _GuestDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$GuestDetailsModel {
  String? get name => throw _privateConstructorUsedError;
  int? get mobile => throw _privateConstructorUsedError;
  String? get aadharImage => throw _privateConstructorUsedError;
  String? get aadharNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestDetailsModelCopyWith<GuestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestDetailsModelCopyWith<$Res> {
  factory $GuestDetailsModelCopyWith(
          GuestDetailsModel value, $Res Function(GuestDetailsModel) then) =
      _$GuestDetailsModelCopyWithImpl<$Res, GuestDetailsModel>;
  @useResult
  $Res call(
      {String? name,
      int? mobile,
      String? aadharImage,
      String? aadharNumber,
      String? gender,
      String? dob});
}

/// @nodoc
class _$GuestDetailsModelCopyWithImpl<$Res, $Val extends GuestDetailsModel>
    implements $GuestDetailsModelCopyWith<$Res> {
  _$GuestDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? mobile = freezed,
    Object? aadharImage = freezed,
    Object? aadharNumber = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      aadharImage: freezed == aadharImage
          ? _value.aadharImage
          : aadharImage // ignore: cast_nullable_to_non_nullable
              as String?,
      aadharNumber: freezed == aadharNumber
          ? _value.aadharNumber
          : aadharNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuestDetailsModelImplCopyWith<$Res>
    implements $GuestDetailsModelCopyWith<$Res> {
  factory _$$GuestDetailsModelImplCopyWith(_$GuestDetailsModelImpl value,
          $Res Function(_$GuestDetailsModelImpl) then) =
      __$$GuestDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? mobile,
      String? aadharImage,
      String? aadharNumber,
      String? gender,
      String? dob});
}

/// @nodoc
class __$$GuestDetailsModelImplCopyWithImpl<$Res>
    extends _$GuestDetailsModelCopyWithImpl<$Res, _$GuestDetailsModelImpl>
    implements _$$GuestDetailsModelImplCopyWith<$Res> {
  __$$GuestDetailsModelImplCopyWithImpl(_$GuestDetailsModelImpl _value,
      $Res Function(_$GuestDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? mobile = freezed,
    Object? aadharImage = freezed,
    Object? aadharNumber = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
  }) {
    return _then(_$GuestDetailsModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mobile: freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as int?,
      aadharImage: freezed == aadharImage
          ? _value.aadharImage
          : aadharImage // ignore: cast_nullable_to_non_nullable
              as String?,
      aadharNumber: freezed == aadharNumber
          ? _value.aadharNumber
          : aadharNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestDetailsModelImpl implements _GuestDetailsModel {
  const _$GuestDetailsModelImpl(
      {this.name,
      this.mobile,
      this.aadharImage,
      this.aadharNumber,
      this.gender,
      this.dob});

  factory _$GuestDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestDetailsModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? mobile;
  @override
  final String? aadharImage;
  @override
  final String? aadharNumber;
  @override
  final String? gender;
  @override
  final String? dob;

  @override
  String toString() {
    return 'GuestDetailsModel(name: $name, mobile: $mobile, aadharImage: $aadharImage, aadharNumber: $aadharNumber, gender: $gender, dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestDetailsModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.aadharImage, aadharImage) ||
                other.aadharImage == aadharImage) &&
            (identical(other.aadharNumber, aadharNumber) ||
                other.aadharNumber == aadharNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, mobile, aadharImage, aadharNumber, gender, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestDetailsModelImplCopyWith<_$GuestDetailsModelImpl> get copyWith =>
      __$$GuestDetailsModelImplCopyWithImpl<_$GuestDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _GuestDetailsModel implements GuestDetailsModel {
  const factory _GuestDetailsModel(
      {final String? name,
      final int? mobile,
      final String? aadharImage,
      final String? aadharNumber,
      final String? gender,
      final String? dob}) = _$GuestDetailsModelImpl;

  factory _GuestDetailsModel.fromJson(Map<String, dynamic> json) =
      _$GuestDetailsModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get mobile;
  @override
  String? get aadharImage;
  @override
  String? get aadharNumber;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  @JsonKey(ignore: true)
  _$$GuestDetailsModelImplCopyWith<_$GuestDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeUnitBookingDataModel _$HomeUnitBookingDataModelFromJson(
    Map<String, dynamic> json) {
  return _HomeUnitBookingDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeUnitBookingDataModel {
  dynamic get walletBalance => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get walletDeduction => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  List<AmountDetailsModel>? get paymentDetailLogs =>
      throw _privateConstructorUsedError;
  List<BookingModel>? get onGoingBookings => throw _privateConstructorUsedError;
  BookingModel? get bookingResponse => throw _privateConstructorUsedError;
  TransactionDataModel? get transactionResponse =>
      throw _privateConstructorUsedError;
  SubscriptionModel? get subscription => throw _privateConstructorUsedError;
  RazorpaySubscriptionModel? get razorpaySubscription =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUnitBookingDataModelCopyWith<HomeUnitBookingDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUnitBookingDataModelCopyWith<$Res> {
  factory $HomeUnitBookingDataModelCopyWith(HomeUnitBookingDataModel value,
          $Res Function(HomeUnitBookingDataModel) then) =
      _$HomeUnitBookingDataModelCopyWithImpl<$Res, HomeUnitBookingDataModel>;
  @useResult
  $Res call(
      {dynamic walletBalance,
      int? amount,
      int? discount,
      int? walletDeduction,
      int? subTotal,
      List<AmountDetailsModel>? paymentDetailLogs,
      List<BookingModel>? onGoingBookings,
      BookingModel? bookingResponse,
      TransactionDataModel? transactionResponse,
      SubscriptionModel? subscription,
      RazorpaySubscriptionModel? razorpaySubscription});

  $BookingModelCopyWith<$Res>? get bookingResponse;
  $TransactionDataModelCopyWith<$Res>? get transactionResponse;
  $SubscriptionModelCopyWith<$Res>? get subscription;
  $RazorpaySubscriptionModelCopyWith<$Res>? get razorpaySubscription;
}

/// @nodoc
class _$HomeUnitBookingDataModelCopyWithImpl<$Res,
        $Val extends HomeUnitBookingDataModel>
    implements $HomeUnitBookingDataModelCopyWith<$Res> {
  _$HomeUnitBookingDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? paymentDetailLogs = freezed,
    Object? onGoingBookings = freezed,
    Object? bookingResponse = freezed,
    Object? transactionResponse = freezed,
    Object? subscription = freezed,
    Object? razorpaySubscription = freezed,
  }) {
    return _then(_value.copyWith(
      walletBalance: freezed == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDetailLogs: freezed == paymentDetailLogs
          ? _value.paymentDetailLogs
          : paymentDetailLogs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      onGoingBookings: freezed == onGoingBookings
          ? _value.onGoingBookings
          : onGoingBookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
      bookingResponse: freezed == bookingResponse
          ? _value.bookingResponse
          : bookingResponse // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
      transactionResponse: freezed == transactionResponse
          ? _value.transactionResponse
          : transactionResponse // ignore: cast_nullable_to_non_nullable
              as TransactionDataModel?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel?,
      razorpaySubscription: freezed == razorpaySubscription
          ? _value.razorpaySubscription
          : razorpaySubscription // ignore: cast_nullable_to_non_nullable
              as RazorpaySubscriptionModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModelCopyWith<$Res>? get bookingResponse {
    if (_value.bookingResponse == null) {
      return null;
    }

    return $BookingModelCopyWith<$Res>(_value.bookingResponse!, (value) {
      return _then(_value.copyWith(bookingResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDataModelCopyWith<$Res>? get transactionResponse {
    if (_value.transactionResponse == null) {
      return null;
    }

    return $TransactionDataModelCopyWith<$Res>(_value.transactionResponse!,
        (value) {
      return _then(_value.copyWith(transactionResponse: value) as $Val);
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

  @override
  @pragma('vm:prefer-inline')
  $RazorpaySubscriptionModelCopyWith<$Res>? get razorpaySubscription {
    if (_value.razorpaySubscription == null) {
      return null;
    }

    return $RazorpaySubscriptionModelCopyWith<$Res>(
        _value.razorpaySubscription!, (value) {
      return _then(_value.copyWith(razorpaySubscription: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeUnitBookingDataModelImplCopyWith<$Res>
    implements $HomeUnitBookingDataModelCopyWith<$Res> {
  factory _$$HomeUnitBookingDataModelImplCopyWith(
          _$HomeUnitBookingDataModelImpl value,
          $Res Function(_$HomeUnitBookingDataModelImpl) then) =
      __$$HomeUnitBookingDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic walletBalance,
      int? amount,
      int? discount,
      int? walletDeduction,
      int? subTotal,
      List<AmountDetailsModel>? paymentDetailLogs,
      List<BookingModel>? onGoingBookings,
      BookingModel? bookingResponse,
      TransactionDataModel? transactionResponse,
      SubscriptionModel? subscription,
      RazorpaySubscriptionModel? razorpaySubscription});

  @override
  $BookingModelCopyWith<$Res>? get bookingResponse;
  @override
  $TransactionDataModelCopyWith<$Res>? get transactionResponse;
  @override
  $SubscriptionModelCopyWith<$Res>? get subscription;
  @override
  $RazorpaySubscriptionModelCopyWith<$Res>? get razorpaySubscription;
}

/// @nodoc
class __$$HomeUnitBookingDataModelImplCopyWithImpl<$Res>
    extends _$HomeUnitBookingDataModelCopyWithImpl<$Res,
        _$HomeUnitBookingDataModelImpl>
    implements _$$HomeUnitBookingDataModelImplCopyWith<$Res> {
  __$$HomeUnitBookingDataModelImplCopyWithImpl(
      _$HomeUnitBookingDataModelImpl _value,
      $Res Function(_$HomeUnitBookingDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? paymentDetailLogs = freezed,
    Object? onGoingBookings = freezed,
    Object? bookingResponse = freezed,
    Object? transactionResponse = freezed,
    Object? subscription = freezed,
    Object? razorpaySubscription = freezed,
  }) {
    return _then(_$HomeUnitBookingDataModelImpl(
      walletBalance: freezed == walletBalance
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as dynamic,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentDetailLogs: freezed == paymentDetailLogs
          ? _value._paymentDetailLogs
          : paymentDetailLogs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      onGoingBookings: freezed == onGoingBookings
          ? _value._onGoingBookings
          : onGoingBookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
      bookingResponse: freezed == bookingResponse
          ? _value.bookingResponse
          : bookingResponse // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
      transactionResponse: freezed == transactionResponse
          ? _value.transactionResponse
          : transactionResponse // ignore: cast_nullable_to_non_nullable
              as TransactionDataModel?,
      subscription: freezed == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as SubscriptionModel?,
      razorpaySubscription: freezed == razorpaySubscription
          ? _value.razorpaySubscription
          : razorpaySubscription // ignore: cast_nullable_to_non_nullable
              as RazorpaySubscriptionModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeUnitBookingDataModelImpl implements _HomeUnitBookingDataModel {
  const _$HomeUnitBookingDataModelImpl(
      {this.walletBalance,
      this.amount,
      this.discount,
      this.walletDeduction,
      this.subTotal,
      final List<AmountDetailsModel>? paymentDetailLogs,
      final List<BookingModel>? onGoingBookings,
      this.bookingResponse,
      this.transactionResponse,
      this.subscription,
      this.razorpaySubscription})
      : _paymentDetailLogs = paymentDetailLogs,
        _onGoingBookings = onGoingBookings;

  factory _$HomeUnitBookingDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeUnitBookingDataModelImplFromJson(json);

  @override
  final dynamic walletBalance;
  @override
  final int? amount;
  @override
  final int? discount;
  @override
  final int? walletDeduction;
  @override
  final int? subTotal;
  final List<AmountDetailsModel>? _paymentDetailLogs;
  @override
  List<AmountDetailsModel>? get paymentDetailLogs {
    final value = _paymentDetailLogs;
    if (value == null) return null;
    if (_paymentDetailLogs is EqualUnmodifiableListView)
      return _paymentDetailLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookingModel>? _onGoingBookings;
  @override
  List<BookingModel>? get onGoingBookings {
    final value = _onGoingBookings;
    if (value == null) return null;
    if (_onGoingBookings is EqualUnmodifiableListView) return _onGoingBookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BookingModel? bookingResponse;
  @override
  final TransactionDataModel? transactionResponse;
  @override
  final SubscriptionModel? subscription;
  @override
  final RazorpaySubscriptionModel? razorpaySubscription;

  @override
  String toString() {
    return 'HomeUnitBookingDataModel(walletBalance: $walletBalance, amount: $amount, discount: $discount, walletDeduction: $walletDeduction, subTotal: $subTotal, paymentDetailLogs: $paymentDetailLogs, onGoingBookings: $onGoingBookings, bookingResponse: $bookingResponse, transactionResponse: $transactionResponse, subscription: $subscription, razorpaySubscription: $razorpaySubscription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUnitBookingDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other.walletBalance, walletBalance) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.walletDeduction, walletDeduction) ||
                other.walletDeduction == walletDeduction) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality()
                .equals(other._paymentDetailLogs, _paymentDetailLogs) &&
            const DeepCollectionEquality()
                .equals(other._onGoingBookings, _onGoingBookings) &&
            (identical(other.bookingResponse, bookingResponse) ||
                other.bookingResponse == bookingResponse) &&
            (identical(other.transactionResponse, transactionResponse) ||
                other.transactionResponse == transactionResponse) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.razorpaySubscription, razorpaySubscription) ||
                other.razorpaySubscription == razorpaySubscription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(walletBalance),
      amount,
      discount,
      walletDeduction,
      subTotal,
      const DeepCollectionEquality().hash(_paymentDetailLogs),
      const DeepCollectionEquality().hash(_onGoingBookings),
      bookingResponse,
      transactionResponse,
      subscription,
      razorpaySubscription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUnitBookingDataModelImplCopyWith<_$HomeUnitBookingDataModelImpl>
      get copyWith => __$$HomeUnitBookingDataModelImplCopyWithImpl<
          _$HomeUnitBookingDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUnitBookingDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeUnitBookingDataModel implements HomeUnitBookingDataModel {
  const factory _HomeUnitBookingDataModel(
          {final dynamic walletBalance,
          final int? amount,
          final int? discount,
          final int? walletDeduction,
          final int? subTotal,
          final List<AmountDetailsModel>? paymentDetailLogs,
          final List<BookingModel>? onGoingBookings,
          final BookingModel? bookingResponse,
          final TransactionDataModel? transactionResponse,
          final SubscriptionModel? subscription,
          final RazorpaySubscriptionModel? razorpaySubscription}) =
      _$HomeUnitBookingDataModelImpl;

  factory _HomeUnitBookingDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeUnitBookingDataModelImpl.fromJson;

  @override
  dynamic get walletBalance;
  @override
  int? get amount;
  @override
  int? get discount;
  @override
  int? get walletDeduction;
  @override
  int? get subTotal;
  @override
  List<AmountDetailsModel>? get paymentDetailLogs;
  @override
  List<BookingModel>? get onGoingBookings;
  @override
  BookingModel? get bookingResponse;
  @override
  TransactionDataModel? get transactionResponse;
  @override
  SubscriptionModel? get subscription;
  @override
  RazorpaySubscriptionModel? get razorpaySubscription;
  @override
  @JsonKey(ignore: true)
  _$$HomeUnitBookingDataModelImplCopyWith<_$HomeUnitBookingDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RazorpaySubscriptionModel _$RazorpaySubscriptionModelFromJson(
    Map<String, dynamic> json) {
  return _RazorpaySubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$RazorpaySubscriptionModel {
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get currentStart => throw _privateConstructorUsedError;
  int? get currentEnd => throw _privateConstructorUsedError;
  int? get paidCount => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RazorpaySubscriptionModelCopyWith<RazorpaySubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RazorpaySubscriptionModelCopyWith<$Res> {
  factory $RazorpaySubscriptionModelCopyWith(RazorpaySubscriptionModel value,
          $Res Function(RazorpaySubscriptionModel) then) =
      _$RazorpaySubscriptionModelCopyWithImpl<$Res, RazorpaySubscriptionModel>;
  @useResult
  $Res call(
      {String? id,
      String? status,
      int? currentStart,
      int? currentEnd,
      int? paidCount,
      int? totalCount});
}

/// @nodoc
class _$RazorpaySubscriptionModelCopyWithImpl<$Res,
        $Val extends RazorpaySubscriptionModel>
    implements $RazorpaySubscriptionModelCopyWith<$Res> {
  _$RazorpaySubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? currentStart = freezed,
    Object? currentEnd = freezed,
    Object? paidCount = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStart: freezed == currentStart
          ? _value.currentStart
          : currentStart // ignore: cast_nullable_to_non_nullable
              as int?,
      currentEnd: freezed == currentEnd
          ? _value.currentEnd
          : currentEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      paidCount: freezed == paidCount
          ? _value.paidCount
          : paidCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RazorpaySubscriptionModelImplCopyWith<$Res>
    implements $RazorpaySubscriptionModelCopyWith<$Res> {
  factory _$$RazorpaySubscriptionModelImplCopyWith(
          _$RazorpaySubscriptionModelImpl value,
          $Res Function(_$RazorpaySubscriptionModelImpl) then) =
      __$$RazorpaySubscriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? status,
      int? currentStart,
      int? currentEnd,
      int? paidCount,
      int? totalCount});
}

/// @nodoc
class __$$RazorpaySubscriptionModelImplCopyWithImpl<$Res>
    extends _$RazorpaySubscriptionModelCopyWithImpl<$Res,
        _$RazorpaySubscriptionModelImpl>
    implements _$$RazorpaySubscriptionModelImplCopyWith<$Res> {
  __$$RazorpaySubscriptionModelImplCopyWithImpl(
      _$RazorpaySubscriptionModelImpl _value,
      $Res Function(_$RazorpaySubscriptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? currentStart = freezed,
    Object? currentEnd = freezed,
    Object? paidCount = freezed,
    Object? totalCount = freezed,
  }) {
    return _then(_$RazorpaySubscriptionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      currentStart: freezed == currentStart
          ? _value.currentStart
          : currentStart // ignore: cast_nullable_to_non_nullable
              as int?,
      currentEnd: freezed == currentEnd
          ? _value.currentEnd
          : currentEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      paidCount: freezed == paidCount
          ? _value.paidCount
          : paidCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RazorpaySubscriptionModelImpl implements _RazorpaySubscriptionModel {
  const _$RazorpaySubscriptionModelImpl(
      {this.id,
      this.status,
      this.currentStart,
      this.currentEnd,
      this.paidCount,
      this.totalCount});

  factory _$RazorpaySubscriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RazorpaySubscriptionModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? status;
  @override
  final int? currentStart;
  @override
  final int? currentEnd;
  @override
  final int? paidCount;
  @override
  final int? totalCount;

  @override
  String toString() {
    return 'RazorpaySubscriptionModel(id: $id, status: $status, currentStart: $currentStart, currentEnd: $currentEnd, paidCount: $paidCount, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RazorpaySubscriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentStart, currentStart) ||
                other.currentStart == currentStart) &&
            (identical(other.currentEnd, currentEnd) ||
                other.currentEnd == currentEnd) &&
            (identical(other.paidCount, paidCount) ||
                other.paidCount == paidCount) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, status, currentStart, currentEnd, paidCount, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RazorpaySubscriptionModelImplCopyWith<_$RazorpaySubscriptionModelImpl>
      get copyWith => __$$RazorpaySubscriptionModelImplCopyWithImpl<
          _$RazorpaySubscriptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RazorpaySubscriptionModelImplToJson(
      this,
    );
  }
}

abstract class _RazorpaySubscriptionModel implements RazorpaySubscriptionModel {
  const factory _RazorpaySubscriptionModel(
      {final String? id,
      final String? status,
      final int? currentStart,
      final int? currentEnd,
      final int? paidCount,
      final int? totalCount}) = _$RazorpaySubscriptionModelImpl;

  factory _RazorpaySubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$RazorpaySubscriptionModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get status;
  @override
  int? get currentStart;
  @override
  int? get currentEnd;
  @override
  int? get paidCount;
  @override
  int? get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$RazorpaySubscriptionModelImplCopyWith<_$RazorpaySubscriptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchTransactionsResponseModel _$FetchTransactionsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchTransactionsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchTransactionsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<TransactionDataModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchTransactionsResponseModelCopyWith<FetchTransactionsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchTransactionsResponseModelCopyWith<$Res> {
  factory $FetchTransactionsResponseModelCopyWith(
          FetchTransactionsResponseModel value,
          $Res Function(FetchTransactionsResponseModel) then) =
      _$FetchTransactionsResponseModelCopyWithImpl<$Res,
          FetchTransactionsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<TransactionDataModel>? data});
}

/// @nodoc
class _$FetchTransactionsResponseModelCopyWithImpl<$Res,
        $Val extends FetchTransactionsResponseModel>
    implements $FetchTransactionsResponseModelCopyWith<$Res> {
  _$FetchTransactionsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<TransactionDataModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchTransactionsResponseModelImplCopyWith<$Res>
    implements $FetchTransactionsResponseModelCopyWith<$Res> {
  factory _$$FetchTransactionsResponseModelImplCopyWith(
          _$FetchTransactionsResponseModelImpl value,
          $Res Function(_$FetchTransactionsResponseModelImpl) then) =
      __$$FetchTransactionsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<TransactionDataModel>? data});
}

/// @nodoc
class __$$FetchTransactionsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchTransactionsResponseModelCopyWithImpl<$Res,
        _$FetchTransactionsResponseModelImpl>
    implements _$$FetchTransactionsResponseModelImplCopyWith<$Res> {
  __$$FetchTransactionsResponseModelImplCopyWithImpl(
      _$FetchTransactionsResponseModelImpl _value,
      $Res Function(_$FetchTransactionsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchTransactionsResponseModelImpl(
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
              as List<TransactionDataModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchTransactionsResponseModelImpl
    implements _FetchTransactionsResponseModel {
  const _$FetchTransactionsResponseModelImpl(
      {this.status, this.message, final List<TransactionDataModel>? data})
      : _data = data;

  factory _$FetchTransactionsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchTransactionsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<TransactionDataModel>? _data;
  @override
  List<TransactionDataModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchTransactionsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTransactionsResponseModelImpl &&
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
  _$$FetchTransactionsResponseModelImplCopyWith<
          _$FetchTransactionsResponseModelImpl>
      get copyWith => __$$FetchTransactionsResponseModelImplCopyWithImpl<
          _$FetchTransactionsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchTransactionsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchTransactionsResponseModel
    implements FetchTransactionsResponseModel {
  const factory _FetchTransactionsResponseModel(
          {final int? status,
          final String? message,
          final List<TransactionDataModel>? data}) =
      _$FetchTransactionsResponseModelImpl;

  factory _FetchTransactionsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchTransactionsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<TransactionDataModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchTransactionsResponseModelImplCopyWith<
          _$FetchTransactionsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionDataModel _$TransactionDataModelFromJson(Map<String, dynamic> json) {
  return _TransactionDataModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionDataModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get userTitle => throw _privateConstructorUsedError;
  String? get hostTitle => throw _privateConstructorUsedError;
  String? get transactionType => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get hostId => throw _privateConstructorUsedError;
  dynamic get bookingId => throw _privateConstructorUsedError;
  dynamic get withdrawTransactionId => throw _privateConstructorUsedError;
  String? get withdrawStatus => throw _privateConstructorUsedError;
  String? get failedReason => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  dynamic get amount => throw _privateConstructorUsedError;
  List<AmountDetailsModel>? get logs => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  PaymentDetailModel? get paymentDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataModelCopyWith<TransactionDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataModelCopyWith<$Res> {
  factory $TransactionDataModelCopyWith(TransactionDataModel value,
          $Res Function(TransactionDataModel) then) =
      _$TransactionDataModelCopyWithImpl<$Res, TransactionDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userTitle,
      String? hostTitle,
      String? transactionType,
      String? paymentStatus,
      dynamic userId,
      dynamic hostId,
      dynamic bookingId,
      dynamic withdrawTransactionId,
      String? withdrawStatus,
      String? failedReason,
      String? orderId,
      String? paymentId,
      dynamic amount,
      List<AmountDetailsModel>? logs,
      DateTime? createdAt,
      PaymentDetailModel? paymentDetails});

  $PaymentDetailModelCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class _$TransactionDataModelCopyWithImpl<$Res,
        $Val extends TransactionDataModel>
    implements $TransactionDataModelCopyWith<$Res> {
  _$TransactionDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userTitle = freezed,
    Object? hostTitle = freezed,
    Object? transactionType = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
    Object? hostId = freezed,
    Object? bookingId = freezed,
    Object? withdrawTransactionId = freezed,
    Object? withdrawStatus = freezed,
    Object? failedReason = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? logs = freezed,
    Object? createdAt = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userTitle: freezed == userTitle
          ? _value.userTitle
          : userTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      hostTitle: freezed == hostTitle
          ? _value.hostTitle
          : hostTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      withdrawTransactionId: freezed == withdrawTransactionId
          ? _value.withdrawTransactionId
          : withdrawTransactionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      withdrawStatus: freezed == withdrawStatus
          ? _value.withdrawStatus
          : withdrawStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      failedReason: freezed == failedReason
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailModelCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $PaymentDetailModelCopyWith<$Res>(_value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDataModelImplCopyWith<$Res>
    implements $TransactionDataModelCopyWith<$Res> {
  factory _$$TransactionDataModelImplCopyWith(_$TransactionDataModelImpl value,
          $Res Function(_$TransactionDataModelImpl) then) =
      __$$TransactionDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? userTitle,
      String? hostTitle,
      String? transactionType,
      String? paymentStatus,
      dynamic userId,
      dynamic hostId,
      dynamic bookingId,
      dynamic withdrawTransactionId,
      String? withdrawStatus,
      String? failedReason,
      String? orderId,
      String? paymentId,
      dynamic amount,
      List<AmountDetailsModel>? logs,
      DateTime? createdAt,
      PaymentDetailModel? paymentDetails});

  @override
  $PaymentDetailModelCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class __$$TransactionDataModelImplCopyWithImpl<$Res>
    extends _$TransactionDataModelCopyWithImpl<$Res, _$TransactionDataModelImpl>
    implements _$$TransactionDataModelImplCopyWith<$Res> {
  __$$TransactionDataModelImplCopyWithImpl(_$TransactionDataModelImpl _value,
      $Res Function(_$TransactionDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userTitle = freezed,
    Object? hostTitle = freezed,
    Object? transactionType = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
    Object? hostId = freezed,
    Object? bookingId = freezed,
    Object? withdrawTransactionId = freezed,
    Object? withdrawStatus = freezed,
    Object? failedReason = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? amount = freezed,
    Object? logs = freezed,
    Object? createdAt = freezed,
    Object? paymentDetails = freezed,
  }) {
    return _then(_$TransactionDataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userTitle: freezed == userTitle
          ? _value.userTitle
          : userTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      hostTitle: freezed == hostTitle
          ? _value.hostTitle
          : hostTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      withdrawTransactionId: freezed == withdrawTransactionId
          ? _value.withdrawTransactionId
          : withdrawTransactionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      withdrawStatus: freezed == withdrawStatus
          ? _value.withdrawStatus
          : withdrawStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      failedReason: freezed == failedReason
          ? _value.failedReason
          : failedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      logs: freezed == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetailModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataModelImpl implements _TransactionDataModel {
  const _$TransactionDataModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.userTitle,
      this.hostTitle,
      this.transactionType,
      this.paymentStatus,
      this.userId,
      this.hostId,
      this.bookingId,
      this.withdrawTransactionId,
      this.withdrawStatus,
      this.failedReason,
      this.orderId,
      this.paymentId,
      this.amount,
      final List<AmountDetailsModel>? logs,
      this.createdAt,
      this.paymentDetails})
      : _logs = logs;

  factory _$TransactionDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? userTitle;
  @override
  final String? hostTitle;
  @override
  final String? transactionType;
  @override
  final String? paymentStatus;
  @override
  final dynamic userId;
  @override
  final dynamic hostId;
  @override
  final dynamic bookingId;
  @override
  final dynamic withdrawTransactionId;
  @override
  final String? withdrawStatus;
  @override
  final String? failedReason;
  @override
  final String? orderId;
  @override
  final String? paymentId;
  @override
  final dynamic amount;
  final List<AmountDetailsModel>? _logs;
  @override
  List<AmountDetailsModel>? get logs {
    final value = _logs;
    if (value == null) return null;
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final PaymentDetailModel? paymentDetails;

  @override
  String toString() {
    return 'TransactionDataModel(id: $id, userTitle: $userTitle, hostTitle: $hostTitle, transactionType: $transactionType, paymentStatus: $paymentStatus, userId: $userId, hostId: $hostId, bookingId: $bookingId, withdrawTransactionId: $withdrawTransactionId, withdrawStatus: $withdrawStatus, failedReason: $failedReason, orderId: $orderId, paymentId: $paymentId, amount: $amount, logs: $logs, createdAt: $createdAt, paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userTitle, userTitle) ||
                other.userTitle == userTitle) &&
            (identical(other.hostTitle, hostTitle) ||
                other.hostTitle == hostTitle) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.hostId, hostId) &&
            const DeepCollectionEquality().equals(other.bookingId, bookingId) &&
            const DeepCollectionEquality()
                .equals(other.withdrawTransactionId, withdrawTransactionId) &&
            (identical(other.withdrawStatus, withdrawStatus) ||
                other.withdrawStatus == withdrawStatus) &&
            (identical(other.failedReason, failedReason) ||
                other.failedReason == failedReason) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paymentDetails, paymentDetails) ||
                other.paymentDetails == paymentDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userTitle,
      hostTitle,
      transactionType,
      paymentStatus,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(hostId),
      const DeepCollectionEquality().hash(bookingId),
      const DeepCollectionEquality().hash(withdrawTransactionId),
      withdrawStatus,
      failedReason,
      orderId,
      paymentId,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(_logs),
      createdAt,
      paymentDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith =>
          __$$TransactionDataModelImplCopyWithImpl<_$TransactionDataModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionDataModel implements TransactionDataModel {
  const factory _TransactionDataModel(
      {@JsonKey(name: '_id') final String? id,
      final String? userTitle,
      final String? hostTitle,
      final String? transactionType,
      final String? paymentStatus,
      final dynamic userId,
      final dynamic hostId,
      final dynamic bookingId,
      final dynamic withdrawTransactionId,
      final String? withdrawStatus,
      final String? failedReason,
      final String? orderId,
      final String? paymentId,
      final dynamic amount,
      final List<AmountDetailsModel>? logs,
      final DateTime? createdAt,
      final PaymentDetailModel? paymentDetails}) = _$TransactionDataModelImpl;

  factory _TransactionDataModel.fromJson(Map<String, dynamic> json) =
      _$TransactionDataModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get userTitle;
  @override
  String? get hostTitle;
  @override
  String? get transactionType;
  @override
  String? get paymentStatus;
  @override
  dynamic get userId;
  @override
  dynamic get hostId;
  @override
  dynamic get bookingId;
  @override
  dynamic get withdrawTransactionId;
  @override
  String? get withdrawStatus;
  @override
  String? get failedReason;
  @override
  String? get orderId;
  @override
  String? get paymentId;
  @override
  dynamic get amount;
  @override
  List<AmountDetailsModel>? get logs;
  @override
  DateTime? get createdAt;
  @override
  PaymentDetailModel? get paymentDetails;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDataModelImplCopyWith<_$TransactionDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PaymentDetailModel _$PaymentDetailModelFromJson(Map<String, dynamic> json) {
  return _PaymentDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetailModel {
  dynamic get amount => throw _privateConstructorUsedError;
  dynamic get discount => throw _privateConstructorUsedError;
  bool? get discountByAdmin => throw _privateConstructorUsedError;
  dynamic get unitGstPercentage => throw _privateConstructorUsedError;
  dynamic get unitGst => throw _privateConstructorUsedError;
  dynamic get platformCharges => throw _privateConstructorUsedError;
  dynamic get platformGstPercentage => throw _privateConstructorUsedError;
  dynamic get platformChargesBase => throw _privateConstructorUsedError;
  dynamic get platformChargesGst => throw _privateConstructorUsedError;
  dynamic get walletDeduction => throw _privateConstructorUsedError;
  dynamic get subTotal => throw _privateConstructorUsedError;
  dynamic get refundedAmount => throw _privateConstructorUsedError;
  dynamic get chargePercentage => throw _privateConstructorUsedError;
  dynamic get chargeAmount => throw _privateConstructorUsedError;
  dynamic get chargeGst => throw _privateConstructorUsedError;
  dynamic get outwardBaseAmount => throw _privateConstructorUsedError;
  dynamic get outwardGst => throw _privateConstructorUsedError;
  dynamic get outwardAmount => throw _privateConstructorUsedError;
  dynamic get profitExcludingItc => throw _privateConstructorUsedError;
  dynamic get profitIncludingItc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailModelCopyWith<PaymentDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailModelCopyWith<$Res> {
  factory $PaymentDetailModelCopyWith(
          PaymentDetailModel value, $Res Function(PaymentDetailModel) then) =
      _$PaymentDetailModelCopyWithImpl<$Res, PaymentDetailModel>;
  @useResult
  $Res call(
      {dynamic amount,
      dynamic discount,
      bool? discountByAdmin,
      dynamic unitGstPercentage,
      dynamic unitGst,
      dynamic platformCharges,
      dynamic platformGstPercentage,
      dynamic platformChargesBase,
      dynamic platformChargesGst,
      dynamic walletDeduction,
      dynamic subTotal,
      dynamic refundedAmount,
      dynamic chargePercentage,
      dynamic chargeAmount,
      dynamic chargeGst,
      dynamic outwardBaseAmount,
      dynamic outwardGst,
      dynamic outwardAmount,
      dynamic profitExcludingItc,
      dynamic profitIncludingItc});
}

/// @nodoc
class _$PaymentDetailModelCopyWithImpl<$Res, $Val extends PaymentDetailModel>
    implements $PaymentDetailModelCopyWith<$Res> {
  _$PaymentDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? discount = freezed,
    Object? discountByAdmin = freezed,
    Object? unitGstPercentage = freezed,
    Object? unitGst = freezed,
    Object? platformCharges = freezed,
    Object? platformGstPercentage = freezed,
    Object? platformChargesBase = freezed,
    Object? platformChargesGst = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? refundedAmount = freezed,
    Object? chargePercentage = freezed,
    Object? chargeAmount = freezed,
    Object? chargeGst = freezed,
    Object? outwardBaseAmount = freezed,
    Object? outwardGst = freezed,
    Object? outwardAmount = freezed,
    Object? profitExcludingItc = freezed,
    Object? profitIncludingItc = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discountByAdmin: freezed == discountByAdmin
          ? _value.discountByAdmin
          : discountByAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitGstPercentage: freezed == unitGstPercentage
          ? _value.unitGstPercentage
          : unitGstPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      unitGst: freezed == unitGst
          ? _value.unitGst
          : unitGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformCharges: freezed == platformCharges
          ? _value.platformCharges
          : platformCharges // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformGstPercentage: freezed == platformGstPercentage
          ? _value.platformGstPercentage
          : platformGstPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformChargesBase: freezed == platformChargesBase
          ? _value.platformChargesBase
          : platformChargesBase // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformChargesGst: freezed == platformChargesGst
          ? _value.platformChargesGst
          : platformChargesGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refundedAmount: freezed == refundedAmount
          ? _value.refundedAmount
          : refundedAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chargePercentage: freezed == chargePercentage
          ? _value.chargePercentage
          : chargePercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chargeAmount: freezed == chargeAmount
          ? _value.chargeAmount
          : chargeAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chargeGst: freezed == chargeGst
          ? _value.chargeGst
          : chargeGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outwardBaseAmount: freezed == outwardBaseAmount
          ? _value.outwardBaseAmount
          : outwardBaseAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outwardGst: freezed == outwardGst
          ? _value.outwardGst
          : outwardGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outwardAmount: freezed == outwardAmount
          ? _value.outwardAmount
          : outwardAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profitExcludingItc: freezed == profitExcludingItc
          ? _value.profitExcludingItc
          : profitExcludingItc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profitIncludingItc: freezed == profitIncludingItc
          ? _value.profitIncludingItc
          : profitIncludingItc // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDetailModelImplCopyWith<$Res>
    implements $PaymentDetailModelCopyWith<$Res> {
  factory _$$PaymentDetailModelImplCopyWith(_$PaymentDetailModelImpl value,
          $Res Function(_$PaymentDetailModelImpl) then) =
      __$$PaymentDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic amount,
      dynamic discount,
      bool? discountByAdmin,
      dynamic unitGstPercentage,
      dynamic unitGst,
      dynamic platformCharges,
      dynamic platformGstPercentage,
      dynamic platformChargesBase,
      dynamic platformChargesGst,
      dynamic walletDeduction,
      dynamic subTotal,
      dynamic refundedAmount,
      dynamic chargePercentage,
      dynamic chargeAmount,
      dynamic chargeGst,
      dynamic outwardBaseAmount,
      dynamic outwardGst,
      dynamic outwardAmount,
      dynamic profitExcludingItc,
      dynamic profitIncludingItc});
}

/// @nodoc
class __$$PaymentDetailModelImplCopyWithImpl<$Res>
    extends _$PaymentDetailModelCopyWithImpl<$Res, _$PaymentDetailModelImpl>
    implements _$$PaymentDetailModelImplCopyWith<$Res> {
  __$$PaymentDetailModelImplCopyWithImpl(_$PaymentDetailModelImpl _value,
      $Res Function(_$PaymentDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? discount = freezed,
    Object? discountByAdmin = freezed,
    Object? unitGstPercentage = freezed,
    Object? unitGst = freezed,
    Object? platformCharges = freezed,
    Object? platformGstPercentage = freezed,
    Object? platformChargesBase = freezed,
    Object? platformChargesGst = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? refundedAmount = freezed,
    Object? chargePercentage = freezed,
    Object? chargeAmount = freezed,
    Object? chargeGst = freezed,
    Object? outwardBaseAmount = freezed,
    Object? outwardGst = freezed,
    Object? outwardAmount = freezed,
    Object? profitExcludingItc = freezed,
    Object? profitIncludingItc = freezed,
  }) {
    return _then(_$PaymentDetailModelImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      discountByAdmin: freezed == discountByAdmin
          ? _value.discountByAdmin
          : discountByAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      unitGstPercentage: freezed == unitGstPercentage
          ? _value.unitGstPercentage
          : unitGstPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      unitGst: freezed == unitGst
          ? _value.unitGst
          : unitGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformCharges: freezed == platformCharges
          ? _value.platformCharges
          : platformCharges // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformGstPercentage: freezed == platformGstPercentage
          ? _value.platformGstPercentage
          : platformGstPercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformChargesBase: freezed == platformChargesBase
          ? _value.platformChargesBase
          : platformChargesBase // ignore: cast_nullable_to_non_nullable
              as dynamic,
      platformChargesGst: freezed == platformChargesGst
          ? _value.platformChargesGst
          : platformChargesGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refundedAmount: freezed == refundedAmount
          ? _value.refundedAmount
          : refundedAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chargePercentage: freezed == chargePercentage
          ? _value.chargePercentage
          : chargePercentage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chargeAmount: freezed == chargeAmount
          ? _value.chargeAmount
          : chargeAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      chargeGst: freezed == chargeGst
          ? _value.chargeGst
          : chargeGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outwardBaseAmount: freezed == outwardBaseAmount
          ? _value.outwardBaseAmount
          : outwardBaseAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outwardGst: freezed == outwardGst
          ? _value.outwardGst
          : outwardGst // ignore: cast_nullable_to_non_nullable
              as dynamic,
      outwardAmount: freezed == outwardAmount
          ? _value.outwardAmount
          : outwardAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profitExcludingItc: freezed == profitExcludingItc
          ? _value.profitExcludingItc
          : profitExcludingItc // ignore: cast_nullable_to_non_nullable
              as dynamic,
      profitIncludingItc: freezed == profitIncludingItc
          ? _value.profitIncludingItc
          : profitIncludingItc // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDetailModelImpl implements _PaymentDetailModel {
  const _$PaymentDetailModelImpl(
      {this.amount,
      this.discount,
      this.discountByAdmin,
      this.unitGstPercentage,
      this.unitGst,
      this.platformCharges,
      this.platformGstPercentage,
      this.platformChargesBase,
      this.platformChargesGst,
      this.walletDeduction,
      this.subTotal,
      this.refundedAmount,
      this.chargePercentage,
      this.chargeAmount,
      this.chargeGst,
      this.outwardBaseAmount,
      this.outwardGst,
      this.outwardAmount,
      this.profitExcludingItc,
      this.profitIncludingItc});

  factory _$PaymentDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDetailModelImplFromJson(json);

  @override
  final dynamic amount;
  @override
  final dynamic discount;
  @override
  final bool? discountByAdmin;
  @override
  final dynamic unitGstPercentage;
  @override
  final dynamic unitGst;
  @override
  final dynamic platformCharges;
  @override
  final dynamic platformGstPercentage;
  @override
  final dynamic platformChargesBase;
  @override
  final dynamic platformChargesGst;
  @override
  final dynamic walletDeduction;
  @override
  final dynamic subTotal;
  @override
  final dynamic refundedAmount;
  @override
  final dynamic chargePercentage;
  @override
  final dynamic chargeAmount;
  @override
  final dynamic chargeGst;
  @override
  final dynamic outwardBaseAmount;
  @override
  final dynamic outwardGst;
  @override
  final dynamic outwardAmount;
  @override
  final dynamic profitExcludingItc;
  @override
  final dynamic profitIncludingItc;

  @override
  String toString() {
    return 'PaymentDetailModel(amount: $amount, discount: $discount, discountByAdmin: $discountByAdmin, unitGstPercentage: $unitGstPercentage, unitGst: $unitGst, platformCharges: $platformCharges, platformGstPercentage: $platformGstPercentage, platformChargesBase: $platformChargesBase, platformChargesGst: $platformChargesGst, walletDeduction: $walletDeduction, subTotal: $subTotal, refundedAmount: $refundedAmount, chargePercentage: $chargePercentage, chargeAmount: $chargeAmount, chargeGst: $chargeGst, outwardBaseAmount: $outwardBaseAmount, outwardGst: $outwardGst, outwardAmount: $outwardAmount, profitExcludingItc: $profitExcludingItc, profitIncludingItc: $profitIncludingItc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailModelImpl &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            (identical(other.discountByAdmin, discountByAdmin) ||
                other.discountByAdmin == discountByAdmin) &&
            const DeepCollectionEquality()
                .equals(other.unitGstPercentage, unitGstPercentage) &&
            const DeepCollectionEquality().equals(other.unitGst, unitGst) &&
            const DeepCollectionEquality()
                .equals(other.platformCharges, platformCharges) &&
            const DeepCollectionEquality()
                .equals(other.platformGstPercentage, platformGstPercentage) &&
            const DeepCollectionEquality()
                .equals(other.platformChargesBase, platformChargesBase) &&
            const DeepCollectionEquality()
                .equals(other.platformChargesGst, platformChargesGst) &&
            const DeepCollectionEquality()
                .equals(other.walletDeduction, walletDeduction) &&
            const DeepCollectionEquality().equals(other.subTotal, subTotal) &&
            const DeepCollectionEquality()
                .equals(other.refundedAmount, refundedAmount) &&
            const DeepCollectionEquality()
                .equals(other.chargePercentage, chargePercentage) &&
            const DeepCollectionEquality()
                .equals(other.chargeAmount, chargeAmount) &&
            const DeepCollectionEquality().equals(other.chargeGst, chargeGst) &&
            const DeepCollectionEquality()
                .equals(other.outwardBaseAmount, outwardBaseAmount) &&
            const DeepCollectionEquality()
                .equals(other.outwardGst, outwardGst) &&
            const DeepCollectionEquality()
                .equals(other.outwardAmount, outwardAmount) &&
            const DeepCollectionEquality()
                .equals(other.profitExcludingItc, profitExcludingItc) &&
            const DeepCollectionEquality()
                .equals(other.profitIncludingItc, profitIncludingItc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(amount),
        const DeepCollectionEquality().hash(discount),
        discountByAdmin,
        const DeepCollectionEquality().hash(unitGstPercentage),
        const DeepCollectionEquality().hash(unitGst),
        const DeepCollectionEquality().hash(platformCharges),
        const DeepCollectionEquality().hash(platformGstPercentage),
        const DeepCollectionEquality().hash(platformChargesBase),
        const DeepCollectionEquality().hash(platformChargesGst),
        const DeepCollectionEquality().hash(walletDeduction),
        const DeepCollectionEquality().hash(subTotal),
        const DeepCollectionEquality().hash(refundedAmount),
        const DeepCollectionEquality().hash(chargePercentage),
        const DeepCollectionEquality().hash(chargeAmount),
        const DeepCollectionEquality().hash(chargeGst),
        const DeepCollectionEquality().hash(outwardBaseAmount),
        const DeepCollectionEquality().hash(outwardGst),
        const DeepCollectionEquality().hash(outwardAmount),
        const DeepCollectionEquality().hash(profitExcludingItc),
        const DeepCollectionEquality().hash(profitIncludingItc)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDetailModelImplCopyWith<_$PaymentDetailModelImpl> get copyWith =>
      __$$PaymentDetailModelImplCopyWithImpl<_$PaymentDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetailModel implements PaymentDetailModel {
  const factory _PaymentDetailModel(
      {final dynamic amount,
      final dynamic discount,
      final bool? discountByAdmin,
      final dynamic unitGstPercentage,
      final dynamic unitGst,
      final dynamic platformCharges,
      final dynamic platformGstPercentage,
      final dynamic platformChargesBase,
      final dynamic platformChargesGst,
      final dynamic walletDeduction,
      final dynamic subTotal,
      final dynamic refundedAmount,
      final dynamic chargePercentage,
      final dynamic chargeAmount,
      final dynamic chargeGst,
      final dynamic outwardBaseAmount,
      final dynamic outwardGst,
      final dynamic outwardAmount,
      final dynamic profitExcludingItc,
      final dynamic profitIncludingItc}) = _$PaymentDetailModelImpl;

  factory _PaymentDetailModel.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailModelImpl.fromJson;

  @override
  dynamic get amount;
  @override
  dynamic get discount;
  @override
  bool? get discountByAdmin;
  @override
  dynamic get unitGstPercentage;
  @override
  dynamic get unitGst;
  @override
  dynamic get platformCharges;
  @override
  dynamic get platformGstPercentage;
  @override
  dynamic get platformChargesBase;
  @override
  dynamic get platformChargesGst;
  @override
  dynamic get walletDeduction;
  @override
  dynamic get subTotal;
  @override
  dynamic get refundedAmount;
  @override
  dynamic get chargePercentage;
  @override
  dynamic get chargeAmount;
  @override
  dynamic get chargeGst;
  @override
  dynamic get outwardBaseAmount;
  @override
  dynamic get outwardGst;
  @override
  dynamic get outwardAmount;
  @override
  dynamic get profitExcludingItc;
  @override
  dynamic get profitIncludingItc;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDetailModelImplCopyWith<_$PaymentDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountDetailsModel _$AmountDetailsModelFromJson(Map<String, dynamic> json) {
  return _AmountDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AmountDetailsModel {
  String? get message => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountDetailsModelCopyWith<AmountDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountDetailsModelCopyWith<$Res> {
  factory $AmountDetailsModelCopyWith(
          AmountDetailsModel value, $Res Function(AmountDetailsModel) then) =
      _$AmountDetailsModelCopyWithImpl<$Res, AmountDetailsModel>;
  @useResult
  $Res call({String? message, String? amount});
}

/// @nodoc
class _$AmountDetailsModelCopyWithImpl<$Res, $Val extends AmountDetailsModel>
    implements $AmountDetailsModelCopyWith<$Res> {
  _$AmountDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountDetailsModelImplCopyWith<$Res>
    implements $AmountDetailsModelCopyWith<$Res> {
  factory _$$AmountDetailsModelImplCopyWith(_$AmountDetailsModelImpl value,
          $Res Function(_$AmountDetailsModelImpl) then) =
      __$$AmountDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? amount});
}

/// @nodoc
class __$$AmountDetailsModelImplCopyWithImpl<$Res>
    extends _$AmountDetailsModelCopyWithImpl<$Res, _$AmountDetailsModelImpl>
    implements _$$AmountDetailsModelImplCopyWith<$Res> {
  __$$AmountDetailsModelImplCopyWithImpl(_$AmountDetailsModelImpl _value,
      $Res Function(_$AmountDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$AmountDetailsModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountDetailsModelImpl implements _AmountDetailsModel {
  const _$AmountDetailsModelImpl({this.message, this.amount});

  factory _$AmountDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountDetailsModelImplFromJson(json);

  @override
  final String? message;
  @override
  final String? amount;

  @override
  String toString() {
    return 'AmountDetailsModel(message: $message, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountDetailsModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountDetailsModelImplCopyWith<_$AmountDetailsModelImpl> get copyWith =>
      __$$AmountDetailsModelImplCopyWithImpl<_$AmountDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AmountDetailsModel implements AmountDetailsModel {
  const factory _AmountDetailsModel(
      {final String? message, final String? amount}) = _$AmountDetailsModelImpl;

  factory _AmountDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AmountDetailsModelImpl.fromJson;

  @override
  String? get message;
  @override
  String? get amount;
  @override
  @JsonKey(ignore: true)
  _$$AmountDetailsModelImplCopyWith<_$AmountDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FetchBookingsResponseModel _$FetchBookingsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchBookingsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchBookingsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<BookingModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchBookingsResponseModelCopyWith<FetchBookingsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBookingsResponseModelCopyWith<$Res> {
  factory $FetchBookingsResponseModelCopyWith(FetchBookingsResponseModel value,
          $Res Function(FetchBookingsResponseModel) then) =
      _$FetchBookingsResponseModelCopyWithImpl<$Res,
          FetchBookingsResponseModel>;
  @useResult
  $Res call({int? status, String? message, List<BookingModel>? data});
}

/// @nodoc
class _$FetchBookingsResponseModelCopyWithImpl<$Res,
        $Val extends FetchBookingsResponseModel>
    implements $FetchBookingsResponseModelCopyWith<$Res> {
  _$FetchBookingsResponseModelCopyWithImpl(this._value, this._then);

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
              as List<BookingModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchBookingsResponseModelImplCopyWith<$Res>
    implements $FetchBookingsResponseModelCopyWith<$Res> {
  factory _$$FetchBookingsResponseModelImplCopyWith(
          _$FetchBookingsResponseModelImpl value,
          $Res Function(_$FetchBookingsResponseModelImpl) then) =
      __$$FetchBookingsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<BookingModel>? data});
}

/// @nodoc
class __$$FetchBookingsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchBookingsResponseModelCopyWithImpl<$Res,
        _$FetchBookingsResponseModelImpl>
    implements _$$FetchBookingsResponseModelImplCopyWith<$Res> {
  __$$FetchBookingsResponseModelImplCopyWithImpl(
      _$FetchBookingsResponseModelImpl _value,
      $Res Function(_$FetchBookingsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchBookingsResponseModelImpl(
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
              as List<BookingModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchBookingsResponseModelImpl implements _FetchBookingsResponseModel {
  const _$FetchBookingsResponseModelImpl(
      {this.status, this.message, final List<BookingModel>? data})
      : _data = data;

  factory _$FetchBookingsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchBookingsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<BookingModel>? _data;
  @override
  List<BookingModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FetchBookingsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBookingsResponseModelImpl &&
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
  _$$FetchBookingsResponseModelImplCopyWith<_$FetchBookingsResponseModelImpl>
      get copyWith => __$$FetchBookingsResponseModelImplCopyWithImpl<
          _$FetchBookingsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchBookingsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchBookingsResponseModel
    implements FetchBookingsResponseModel {
  const factory _FetchBookingsResponseModel(
      {final int? status,
      final String? message,
      final List<BookingModel>? data}) = _$FetchBookingsResponseModelImpl;

  factory _FetchBookingsResponseModel.fromJson(Map<String, dynamic> json) =
      _$FetchBookingsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<BookingModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchBookingsResponseModelImplCopyWith<_$FetchBookingsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FetchBookingDetailsResponseModel _$FetchBookingDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FetchBookingDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FetchBookingDetailsResponseModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BookingModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchBookingDetailsResponseModelCopyWith<FetchBookingDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchBookingDetailsResponseModelCopyWith<$Res> {
  factory $FetchBookingDetailsResponseModelCopyWith(
          FetchBookingDetailsResponseModel value,
          $Res Function(FetchBookingDetailsResponseModel) then) =
      _$FetchBookingDetailsResponseModelCopyWithImpl<$Res,
          FetchBookingDetailsResponseModel>;
  @useResult
  $Res call({int? status, String? message, BookingModel? data});

  $BookingModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FetchBookingDetailsResponseModelCopyWithImpl<$Res,
        $Val extends FetchBookingDetailsResponseModel>
    implements $FetchBookingDetailsResponseModelCopyWith<$Res> {
  _$FetchBookingDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as BookingModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FetchBookingDetailsResponseModelImplCopyWith<$Res>
    implements $FetchBookingDetailsResponseModelCopyWith<$Res> {
  factory _$$FetchBookingDetailsResponseModelImplCopyWith(
          _$FetchBookingDetailsResponseModelImpl value,
          $Res Function(_$FetchBookingDetailsResponseModelImpl) then) =
      __$$FetchBookingDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, BookingModel? data});

  @override
  $BookingModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FetchBookingDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$FetchBookingDetailsResponseModelCopyWithImpl<$Res,
        _$FetchBookingDetailsResponseModelImpl>
    implements _$$FetchBookingDetailsResponseModelImplCopyWith<$Res> {
  __$$FetchBookingDetailsResponseModelImplCopyWithImpl(
      _$FetchBookingDetailsResponseModelImpl _value,
      $Res Function(_$FetchBookingDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FetchBookingDetailsResponseModelImpl(
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
              as BookingModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FetchBookingDetailsResponseModelImpl
    implements _FetchBookingDetailsResponseModel {
  const _$FetchBookingDetailsResponseModelImpl(
      {this.status, this.message, this.data});

  factory _$FetchBookingDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FetchBookingDetailsResponseModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final BookingModel? data;

  @override
  String toString() {
    return 'FetchBookingDetailsResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchBookingDetailsResponseModelImpl &&
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
  _$$FetchBookingDetailsResponseModelImplCopyWith<
          _$FetchBookingDetailsResponseModelImpl>
      get copyWith => __$$FetchBookingDetailsResponseModelImplCopyWithImpl<
          _$FetchBookingDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FetchBookingDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FetchBookingDetailsResponseModel
    implements FetchBookingDetailsResponseModel {
  const factory _FetchBookingDetailsResponseModel(
      {final int? status,
      final String? message,
      final BookingModel? data}) = _$FetchBookingDetailsResponseModelImpl;

  factory _FetchBookingDetailsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$FetchBookingDetailsResponseModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  BookingModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FetchBookingDetailsResponseModelImplCopyWith<
          _$FetchBookingDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get bookedBy => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get hostId => throw _privateConstructorUsedError;
  dynamic get homeId => throw _privateConstructorUsedError;
  dynamic get unitId => throw _privateConstructorUsedError;
  dynamic get transactionId => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  DateTime? get checkInDate => throw _privateConstructorUsedError;
  DateTime? get checkOutDate => throw _privateConstructorUsedError;
  int? get guestCount => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get walletDeduction => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  List<GuestDetailsModel>? get guestDetailsList =>
      throw _privateConstructorUsedError;
  List<AmountDetailsModel>? get logs => throw _privateConstructorUsedError;
  String? get bookingStatus => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? bookedBy,
      dynamic userId,
      dynamic hostId,
      dynamic homeId,
      dynamic unitId,
      dynamic transactionId,
      String? orderId,
      String? paymentId,
      String? paymentStatus,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount,
      int? amount,
      int? discount,
      int? walletDeduction,
      int? subTotal,
      List<GuestDetailsModel>? guestDetailsList,
      List<AmountDetailsModel>? logs,
      String? bookingStatus,
      DateTime? createdAt});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookedBy = freezed,
    Object? userId = freezed,
    Object? hostId = freezed,
    Object? homeId = freezed,
    Object? unitId = freezed,
    Object? transactionId = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? guestDetailsList = freezed,
    Object? logs = freezed,
    Object? bookingStatus = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedBy: freezed == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      guestDetailsList: freezed == guestDetailsList
          ? _value.guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as List<GuestDetailsModel>?,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      bookingStatus: freezed == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? bookedBy,
      dynamic userId,
      dynamic hostId,
      dynamic homeId,
      dynamic unitId,
      dynamic transactionId,
      String? orderId,
      String? paymentId,
      String? paymentStatus,
      DateTime? checkInDate,
      DateTime? checkOutDate,
      int? guestCount,
      int? amount,
      int? discount,
      int? walletDeduction,
      int? subTotal,
      List<GuestDetailsModel>? guestDetailsList,
      List<AmountDetailsModel>? logs,
      String? bookingStatus,
      DateTime? createdAt});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookedBy = freezed,
    Object? userId = freezed,
    Object? hostId = freezed,
    Object? homeId = freezed,
    Object? unitId = freezed,
    Object? transactionId = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? paymentStatus = freezed,
    Object? checkInDate = freezed,
    Object? checkOutDate = freezed,
    Object? guestCount = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? walletDeduction = freezed,
    Object? subTotal = freezed,
    Object? guestDetailsList = freezed,
    Object? logs = freezed,
    Object? bookingStatus = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$BookingModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedBy: freezed == bookedBy
          ? _value.bookedBy
          : bookedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hostId: freezed == hostId
          ? _value.hostId
          : hostId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      homeId: freezed == homeId
          ? _value.homeId
          : homeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      unitId: freezed == unitId
          ? _value.unitId
          : unitId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      walletDeduction: freezed == walletDeduction
          ? _value.walletDeduction
          : walletDeduction // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      guestDetailsList: freezed == guestDetailsList
          ? _value._guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as List<GuestDetailsModel>?,
      logs: freezed == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<AmountDetailsModel>?,
      bookingStatus: freezed == bookingStatus
          ? _value.bookingStatus
          : bookingStatus // ignore: cast_nullable_to_non_nullable
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
class _$BookingModelImpl implements _BookingModel {
  const _$BookingModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.bookedBy,
      this.userId,
      this.hostId,
      this.homeId,
      this.unitId,
      this.transactionId,
      this.orderId,
      this.paymentId,
      this.paymentStatus,
      this.checkInDate,
      this.checkOutDate,
      this.guestCount,
      this.amount,
      this.discount,
      this.walletDeduction,
      this.subTotal,
      final List<GuestDetailsModel>? guestDetailsList,
      final List<AmountDetailsModel>? logs,
      this.bookingStatus,
      this.createdAt})
      : _guestDetailsList = guestDetailsList,
        _logs = logs;

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? bookedBy;
  @override
  final dynamic userId;
  @override
  final dynamic hostId;
  @override
  final dynamic homeId;
  @override
  final dynamic unitId;
  @override
  final dynamic transactionId;
  @override
  final String? orderId;
  @override
  final String? paymentId;
  @override
  final String? paymentStatus;
  @override
  final DateTime? checkInDate;
  @override
  final DateTime? checkOutDate;
  @override
  final int? guestCount;
  @override
  final int? amount;
  @override
  final int? discount;
  @override
  final int? walletDeduction;
  @override
  final int? subTotal;
  final List<GuestDetailsModel>? _guestDetailsList;
  @override
  List<GuestDetailsModel>? get guestDetailsList {
    final value = _guestDetailsList;
    if (value == null) return null;
    if (_guestDetailsList is EqualUnmodifiableListView)
      return _guestDetailsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AmountDetailsModel>? _logs;
  @override
  List<AmountDetailsModel>? get logs {
    final value = _logs;
    if (value == null) return null;
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? bookingStatus;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'BookingModel(id: $id, bookedBy: $bookedBy, userId: $userId, hostId: $hostId, homeId: $homeId, unitId: $unitId, transactionId: $transactionId, orderId: $orderId, paymentId: $paymentId, paymentStatus: $paymentStatus, checkInDate: $checkInDate, checkOutDate: $checkOutDate, guestCount: $guestCount, amount: $amount, discount: $discount, walletDeduction: $walletDeduction, subTotal: $subTotal, guestDetailsList: $guestDetailsList, logs: $logs, bookingStatus: $bookingStatus, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookedBy, bookedBy) ||
                other.bookedBy == bookedBy) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.hostId, hostId) &&
            const DeepCollectionEquality().equals(other.homeId, homeId) &&
            const DeepCollectionEquality().equals(other.unitId, unitId) &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.walletDeduction, walletDeduction) ||
                other.walletDeduction == walletDeduction) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality()
                .equals(other._guestDetailsList, _guestDetailsList) &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.bookingStatus, bookingStatus) ||
                other.bookingStatus == bookingStatus) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        bookedBy,
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(hostId),
        const DeepCollectionEquality().hash(homeId),
        const DeepCollectionEquality().hash(unitId),
        const DeepCollectionEquality().hash(transactionId),
        orderId,
        paymentId,
        paymentStatus,
        checkInDate,
        checkOutDate,
        guestCount,
        amount,
        discount,
        walletDeduction,
        subTotal,
        const DeepCollectionEquality().hash(_guestDetailsList),
        const DeepCollectionEquality().hash(_logs),
        bookingStatus,
        createdAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {@JsonKey(name: '_id') final String? id,
      final String? bookedBy,
      final dynamic userId,
      final dynamic hostId,
      final dynamic homeId,
      final dynamic unitId,
      final dynamic transactionId,
      final String? orderId,
      final String? paymentId,
      final String? paymentStatus,
      final DateTime? checkInDate,
      final DateTime? checkOutDate,
      final int? guestCount,
      final int? amount,
      final int? discount,
      final int? walletDeduction,
      final int? subTotal,
      final List<GuestDetailsModel>? guestDetailsList,
      final List<AmountDetailsModel>? logs,
      final String? bookingStatus,
      final DateTime? createdAt}) = _$BookingModelImpl;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get bookedBy;
  @override
  dynamic get userId;
  @override
  dynamic get hostId;
  @override
  dynamic get homeId;
  @override
  dynamic get unitId;
  @override
  dynamic get transactionId;
  @override
  String? get orderId;
  @override
  String? get paymentId;
  @override
  String? get paymentStatus;
  @override
  DateTime? get checkInDate;
  @override
  DateTime? get checkOutDate;
  @override
  int? get guestCount;
  @override
  int? get amount;
  @override
  int? get discount;
  @override
  int? get walletDeduction;
  @override
  int? get subTotal;
  @override
  List<GuestDetailsModel>? get guestDetailsList;
  @override
  List<AmountDetailsModel>? get logs;
  @override
  String? get bookingStatus;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
