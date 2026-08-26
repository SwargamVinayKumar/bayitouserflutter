// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_hour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OpeningHoursResponseModel _$OpeningHoursResponseModelFromJson(
    Map<String, dynamic> json) {
  return _OpeningHoursResponseModel.fromJson(json);
}

/// @nodoc
mixin _$OpeningHoursResponseModel {
  int? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OpeningHoursDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursResponseModelCopyWith<OpeningHoursResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursResponseModelCopyWith<$Res> {
  factory $OpeningHoursResponseModelCopyWith(OpeningHoursResponseModel value,
          $Res Function(OpeningHoursResponseModel) then) =
      _$OpeningHoursResponseModelCopyWithImpl<$Res, OpeningHoursResponseModel>;
  @useResult
  $Res call({int? success, String? message, OpeningHoursDataModel? data});

  $OpeningHoursDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$OpeningHoursResponseModelCopyWithImpl<$Res,
        $Val extends OpeningHoursResponseModel>
    implements $OpeningHoursResponseModelCopyWith<$Res> {
  _$OpeningHoursResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OpeningHoursDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OpeningHoursDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpeningHoursResponseModelImplCopyWith<$Res>
    implements $OpeningHoursResponseModelCopyWith<$Res> {
  factory _$$OpeningHoursResponseModelImplCopyWith(
          _$OpeningHoursResponseModelImpl value,
          $Res Function(_$OpeningHoursResponseModelImpl) then) =
      __$$OpeningHoursResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? success, String? message, OpeningHoursDataModel? data});

  @override
  $OpeningHoursDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$OpeningHoursResponseModelImplCopyWithImpl<$Res>
    extends _$OpeningHoursResponseModelCopyWithImpl<$Res,
        _$OpeningHoursResponseModelImpl>
    implements _$$OpeningHoursResponseModelImplCopyWith<$Res> {
  __$$OpeningHoursResponseModelImplCopyWithImpl(
      _$OpeningHoursResponseModelImpl _value,
      $Res Function(_$OpeningHoursResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$OpeningHoursResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OpeningHoursDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHoursResponseModelImpl implements _OpeningHoursResponseModel {
  const _$OpeningHoursResponseModelImpl(
      {this.success, this.message, this.data});

  factory _$OpeningHoursResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursResponseModelImplFromJson(json);

  @override
  final int? success;
  @override
  final String? message;
  @override
  final OpeningHoursDataModel? data;

  @override
  String toString() {
    return 'OpeningHoursResponseModel(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursResponseModelImplCopyWith<_$OpeningHoursResponseModelImpl>
      get copyWith => __$$OpeningHoursResponseModelImplCopyWithImpl<
          _$OpeningHoursResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursResponseModelImplToJson(
      this,
    );
  }
}

abstract class _OpeningHoursResponseModel implements OpeningHoursResponseModel {
  const factory _OpeningHoursResponseModel(
      {final int? success,
      final String? message,
      final OpeningHoursDataModel? data}) = _$OpeningHoursResponseModelImpl;

  factory _OpeningHoursResponseModel.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursResponseModelImpl.fromJson;

  @override
  int? get success;
  @override
  String? get message;
  @override
  OpeningHoursDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$OpeningHoursResponseModelImplCopyWith<_$OpeningHoursResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpeningHoursDataModel _$OpeningHoursDataModelFromJson(
    Map<String, dynamic> json) {
  return _OpeningHoursDataModel.fromJson(json);
}

/// @nodoc
mixin _$OpeningHoursDataModel {
  String? get outletId => throw _privateConstructorUsedError;
  List<DaySlotModel>? get daySlots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpeningHoursDataModelCopyWith<OpeningHoursDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpeningHoursDataModelCopyWith<$Res> {
  factory $OpeningHoursDataModelCopyWith(OpeningHoursDataModel value,
          $Res Function(OpeningHoursDataModel) then) =
      _$OpeningHoursDataModelCopyWithImpl<$Res, OpeningHoursDataModel>;
  @useResult
  $Res call({String? outletId, List<DaySlotModel>? daySlots});
}

/// @nodoc
class _$OpeningHoursDataModelCopyWithImpl<$Res,
        $Val extends OpeningHoursDataModel>
    implements $OpeningHoursDataModelCopyWith<$Res> {
  _$OpeningHoursDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outletId = freezed,
    Object? daySlots = freezed,
  }) {
    return _then(_value.copyWith(
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      daySlots: freezed == daySlots
          ? _value.daySlots
          : daySlots // ignore: cast_nullable_to_non_nullable
              as List<DaySlotModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpeningHoursDataModelImplCopyWith<$Res>
    implements $OpeningHoursDataModelCopyWith<$Res> {
  factory _$$OpeningHoursDataModelImplCopyWith(
          _$OpeningHoursDataModelImpl value,
          $Res Function(_$OpeningHoursDataModelImpl) then) =
      __$$OpeningHoursDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? outletId, List<DaySlotModel>? daySlots});
}

/// @nodoc
class __$$OpeningHoursDataModelImplCopyWithImpl<$Res>
    extends _$OpeningHoursDataModelCopyWithImpl<$Res,
        _$OpeningHoursDataModelImpl>
    implements _$$OpeningHoursDataModelImplCopyWith<$Res> {
  __$$OpeningHoursDataModelImplCopyWithImpl(_$OpeningHoursDataModelImpl _value,
      $Res Function(_$OpeningHoursDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outletId = freezed,
    Object? daySlots = freezed,
  }) {
    return _then(_$OpeningHoursDataModelImpl(
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      daySlots: freezed == daySlots
          ? _value._daySlots
          : daySlots // ignore: cast_nullable_to_non_nullable
              as List<DaySlotModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpeningHoursDataModelImpl implements _OpeningHoursDataModel {
  const _$OpeningHoursDataModelImpl(
      {this.outletId, final List<DaySlotModel>? daySlots})
      : _daySlots = daySlots;

  factory _$OpeningHoursDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpeningHoursDataModelImplFromJson(json);

  @override
  final String? outletId;
  final List<DaySlotModel>? _daySlots;
  @override
  List<DaySlotModel>? get daySlots {
    final value = _daySlots;
    if (value == null) return null;
    if (_daySlots is EqualUnmodifiableListView) return _daySlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OpeningHoursDataModel(outletId: $outletId, daySlots: $daySlots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpeningHoursDataModelImpl &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            const DeepCollectionEquality().equals(other._daySlots, _daySlots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, outletId, const DeepCollectionEquality().hash(_daySlots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpeningHoursDataModelImplCopyWith<_$OpeningHoursDataModelImpl>
      get copyWith => __$$OpeningHoursDataModelImplCopyWithImpl<
          _$OpeningHoursDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpeningHoursDataModelImplToJson(
      this,
    );
  }
}

abstract class _OpeningHoursDataModel implements OpeningHoursDataModel {
  const factory _OpeningHoursDataModel(
      {final String? outletId,
      final List<DaySlotModel>? daySlots}) = _$OpeningHoursDataModelImpl;

  factory _OpeningHoursDataModel.fromJson(Map<String, dynamic> json) =
      _$OpeningHoursDataModelImpl.fromJson;

  @override
  String? get outletId;
  @override
  List<DaySlotModel>? get daySlots;
  @override
  @JsonKey(ignore: true)
  _$$OpeningHoursDataModelImplCopyWith<_$OpeningHoursDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DaySlotModel _$DaySlotModelFromJson(Map<String, dynamic> json) {
  return _DaySlotModel.fromJson(json);
}

/// @nodoc
mixin _$DaySlotModel {
  String? get day => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaySlotModelCopyWith<DaySlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaySlotModelCopyWith<$Res> {
  factory $DaySlotModelCopyWith(
          DaySlotModel value, $Res Function(DaySlotModel) then) =
      _$DaySlotModelCopyWithImpl<$Res, DaySlotModel>;
  @useResult
  $Res call({String? day, bool? status, String? startTime, String? endTime});
}

/// @nodoc
class _$DaySlotModelCopyWithImpl<$Res, $Val extends DaySlotModel>
    implements $DaySlotModelCopyWith<$Res> {
  _$DaySlotModelCopyWithImpl(this._value, this._then);

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
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DaySlotModelImplCopyWith<$Res>
    implements $DaySlotModelCopyWith<$Res> {
  factory _$$DaySlotModelImplCopyWith(
          _$DaySlotModelImpl value, $Res Function(_$DaySlotModelImpl) then) =
      __$$DaySlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? day, bool? status, String? startTime, String? endTime});
}

/// @nodoc
class __$$DaySlotModelImplCopyWithImpl<$Res>
    extends _$DaySlotModelCopyWithImpl<$Res, _$DaySlotModelImpl>
    implements _$$DaySlotModelImplCopyWith<$Res> {
  __$$DaySlotModelImplCopyWithImpl(
      _$DaySlotModelImpl _value, $Res Function(_$DaySlotModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? status = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$DaySlotModelImpl(
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
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DaySlotModelImpl implements _DaySlotModel {
  const _$DaySlotModelImpl(
      {this.day, this.status, this.startTime, this.endTime});

  factory _$DaySlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DaySlotModelImplFromJson(json);

  @override
  final String? day;
  @override
  final bool? status;
  @override
  final String? startTime;
  @override
  final String? endTime;

  @override
  String toString() {
    return 'DaySlotModel(day: $day, status: $status, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaySlotModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, status, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DaySlotModelImplCopyWith<_$DaySlotModelImpl> get copyWith =>
      __$$DaySlotModelImplCopyWithImpl<_$DaySlotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DaySlotModelImplToJson(
      this,
    );
  }
}

abstract class _DaySlotModel implements DaySlotModel {
  const factory _DaySlotModel(
      {final String? day,
      final bool? status,
      final String? startTime,
      final String? endTime}) = _$DaySlotModelImpl;

  factory _DaySlotModel.fromJson(Map<String, dynamic> json) =
      _$DaySlotModelImpl.fromJson;

  @override
  String? get day;
  @override
  bool? get status;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$DaySlotModelImplCopyWith<_$DaySlotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
