// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingAvailabilityResponse _$BookingAvailabilityResponseFromJson(
    Map<String, dynamic> json) {
  return _BookingAvailabilityResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingAvailabilityResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  BookingAvailabilityData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingAvailabilityResponseCopyWith<BookingAvailabilityResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingAvailabilityResponseCopyWith<$Res> {
  factory $BookingAvailabilityResponseCopyWith(
          BookingAvailabilityResponse value,
          $Res Function(BookingAvailabilityResponse) then) =
      _$BookingAvailabilityResponseCopyWithImpl<$Res,
          BookingAvailabilityResponse>;
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? code,
      BookingAvailabilityData? data});

  $BookingAvailabilityDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookingAvailabilityResponseCopyWithImpl<$Res,
        $Val extends BookingAvailabilityResponse>
    implements $BookingAvailabilityResponseCopyWith<$Res> {
  _$BookingAvailabilityResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? code = freezed,
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
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingAvailabilityData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingAvailabilityDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingAvailabilityDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingAvailabilityResponseImplCopyWith<$Res>
    implements $BookingAvailabilityResponseCopyWith<$Res> {
  factory _$$BookingAvailabilityResponseImplCopyWith(
          _$BookingAvailabilityResponseImpl value,
          $Res Function(_$BookingAvailabilityResponseImpl) then) =
      __$$BookingAvailabilityResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      String? message,
      String? code,
      BookingAvailabilityData? data});

  @override
  $BookingAvailabilityDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BookingAvailabilityResponseImplCopyWithImpl<$Res>
    extends _$BookingAvailabilityResponseCopyWithImpl<$Res,
        _$BookingAvailabilityResponseImpl>
    implements _$$BookingAvailabilityResponseImplCopyWith<$Res> {
  __$$BookingAvailabilityResponseImplCopyWithImpl(
      _$BookingAvailabilityResponseImpl _value,
      $Res Function(_$BookingAvailabilityResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BookingAvailabilityResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingAvailabilityData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingAvailabilityResponseImpl
    implements _BookingAvailabilityResponse {
  const _$BookingAvailabilityResponseImpl(
      {this.status, this.message, this.code, this.data});

  factory _$BookingAvailabilityResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BookingAvailabilityResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final BookingAvailabilityData? data;

  @override
  String toString() {
    return 'BookingAvailabilityResponse(status: $status, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAvailabilityResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingAvailabilityResponseImplCopyWith<_$BookingAvailabilityResponseImpl>
      get copyWith => __$$BookingAvailabilityResponseImplCopyWithImpl<
          _$BookingAvailabilityResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingAvailabilityResponseImplToJson(
      this,
    );
  }
}

abstract class _BookingAvailabilityResponse
    implements BookingAvailabilityResponse {
  const factory _BookingAvailabilityResponse(
      {final int? status,
      final String? message,
      final String? code,
      final BookingAvailabilityData? data}) = _$BookingAvailabilityResponseImpl;

  factory _BookingAvailabilityResponse.fromJson(Map<String, dynamic> json) =
      _$BookingAvailabilityResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  String? get code;
  @override
  BookingAvailabilityData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BookingAvailabilityResponseImplCopyWith<_$BookingAvailabilityResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookingAvailabilityData _$BookingAvailabilityDataFromJson(
    Map<String, dynamic> json) {
  return _BookingAvailabilityData.fromJson(json);
}

/// @nodoc
mixin _$BookingAvailabilityData {
  bool? get available => throw _privateConstructorUsedError;
  AvailabilityBookingDetails? get bookingDetails =>
      throw _privateConstructorUsedError;
  List<BookingConflict>? get conflicts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingAvailabilityDataCopyWith<BookingAvailabilityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingAvailabilityDataCopyWith<$Res> {
  factory $BookingAvailabilityDataCopyWith(BookingAvailabilityData value,
          $Res Function(BookingAvailabilityData) then) =
      _$BookingAvailabilityDataCopyWithImpl<$Res, BookingAvailabilityData>;
  @useResult
  $Res call(
      {bool? available,
      AvailabilityBookingDetails? bookingDetails,
      List<BookingConflict>? conflicts});

  $AvailabilityBookingDetailsCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$BookingAvailabilityDataCopyWithImpl<$Res,
        $Val extends BookingAvailabilityData>
    implements $BookingAvailabilityDataCopyWith<$Res> {
  _$BookingAvailabilityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? bookingDetails = freezed,
    Object? conflicts = freezed,
  }) {
    return _then(_value.copyWith(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookingDetails: freezed == bookingDetails
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as AvailabilityBookingDetails?,
      conflicts: freezed == conflicts
          ? _value.conflicts
          : conflicts // ignore: cast_nullable_to_non_nullable
              as List<BookingConflict>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityBookingDetailsCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $AvailabilityBookingDetailsCopyWith<$Res>(_value.bookingDetails!,
        (value) {
      return _then(_value.copyWith(bookingDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingAvailabilityDataImplCopyWith<$Res>
    implements $BookingAvailabilityDataCopyWith<$Res> {
  factory _$$BookingAvailabilityDataImplCopyWith(
          _$BookingAvailabilityDataImpl value,
          $Res Function(_$BookingAvailabilityDataImpl) then) =
      __$$BookingAvailabilityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? available,
      AvailabilityBookingDetails? bookingDetails,
      List<BookingConflict>? conflicts});

  @override
  $AvailabilityBookingDetailsCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$$BookingAvailabilityDataImplCopyWithImpl<$Res>
    extends _$BookingAvailabilityDataCopyWithImpl<$Res,
        _$BookingAvailabilityDataImpl>
    implements _$$BookingAvailabilityDataImplCopyWith<$Res> {
  __$$BookingAvailabilityDataImplCopyWithImpl(
      _$BookingAvailabilityDataImpl _value,
      $Res Function(_$BookingAvailabilityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = freezed,
    Object? bookingDetails = freezed,
    Object? conflicts = freezed,
  }) {
    return _then(_$BookingAvailabilityDataImpl(
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      bookingDetails: freezed == bookingDetails
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as AvailabilityBookingDetails?,
      conflicts: freezed == conflicts
          ? _value._conflicts
          : conflicts // ignore: cast_nullable_to_non_nullable
              as List<BookingConflict>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingAvailabilityDataImpl implements _BookingAvailabilityData {
  const _$BookingAvailabilityDataImpl(
      {this.available,
      this.bookingDetails,
      final List<BookingConflict>? conflicts})
      : _conflicts = conflicts;

  factory _$BookingAvailabilityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingAvailabilityDataImplFromJson(json);

  @override
  final bool? available;
  @override
  final AvailabilityBookingDetails? bookingDetails;
  final List<BookingConflict>? _conflicts;
  @override
  List<BookingConflict>? get conflicts {
    final value = _conflicts;
    if (value == null) return null;
    if (_conflicts is EqualUnmodifiableListView) return _conflicts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingAvailabilityData(available: $available, bookingDetails: $bookingDetails, conflicts: $conflicts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAvailabilityDataImpl &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.bookingDetails, bookingDetails) ||
                other.bookingDetails == bookingDetails) &&
            const DeepCollectionEquality()
                .equals(other._conflicts, _conflicts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, available, bookingDetails,
      const DeepCollectionEquality().hash(_conflicts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingAvailabilityDataImplCopyWith<_$BookingAvailabilityDataImpl>
      get copyWith => __$$BookingAvailabilityDataImplCopyWithImpl<
          _$BookingAvailabilityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingAvailabilityDataImplToJson(
      this,
    );
  }
}

abstract class _BookingAvailabilityData implements BookingAvailabilityData {
  const factory _BookingAvailabilityData(
      {final bool? available,
      final AvailabilityBookingDetails? bookingDetails,
      final List<BookingConflict>? conflicts}) = _$BookingAvailabilityDataImpl;

  factory _BookingAvailabilityData.fromJson(Map<String, dynamic> json) =
      _$BookingAvailabilityDataImpl.fromJson;

  @override
  bool? get available;
  @override
  AvailabilityBookingDetails? get bookingDetails;
  @override
  List<BookingConflict>? get conflicts;
  @override
  @JsonKey(ignore: true)
  _$$BookingAvailabilityDataImplCopyWith<_$BookingAvailabilityDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AvailabilityBookingDetails _$AvailabilityBookingDetailsFromJson(
    Map<String, dynamic> json) {
  return _AvailabilityBookingDetails.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityBookingDetails {
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get perHourCharge => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  String? get maxAdvanceBooking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityBookingDetailsCopyWith<AvailabilityBookingDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityBookingDetailsCopyWith<$Res> {
  factory $AvailabilityBookingDetailsCopyWith(AvailabilityBookingDetails value,
          $Res Function(AvailabilityBookingDetails) then) =
      _$AvailabilityBookingDetailsCopyWithImpl<$Res,
          AvailabilityBookingDetails>;
  @useResult
  $Res call(
      {String? checkIn,
      String? checkOut,
      int? duration,
      int? perHourCharge,
      int? subTotal,
      int? totalAmount,
      String? maxAdvanceBooking});
}

/// @nodoc
class _$AvailabilityBookingDetailsCopyWithImpl<$Res,
        $Val extends AvailabilityBookingDetails>
    implements $AvailabilityBookingDetailsCopyWith<$Res> {
  _$AvailabilityBookingDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? duration = freezed,
    Object? perHourCharge = freezed,
    Object? subTotal = freezed,
    Object? totalAmount = freezed,
    Object? maxAdvanceBooking = freezed,
  }) {
    return _then(_value.copyWith(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      perHourCharge: freezed == perHourCharge
          ? _value.perHourCharge
          : perHourCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdvanceBooking: freezed == maxAdvanceBooking
          ? _value.maxAdvanceBooking
          : maxAdvanceBooking // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityBookingDetailsImplCopyWith<$Res>
    implements $AvailabilityBookingDetailsCopyWith<$Res> {
  factory _$$AvailabilityBookingDetailsImplCopyWith(
          _$AvailabilityBookingDetailsImpl value,
          $Res Function(_$AvailabilityBookingDetailsImpl) then) =
      __$$AvailabilityBookingDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? checkIn,
      String? checkOut,
      int? duration,
      int? perHourCharge,
      int? subTotal,
      int? totalAmount,
      String? maxAdvanceBooking});
}

/// @nodoc
class __$$AvailabilityBookingDetailsImplCopyWithImpl<$Res>
    extends _$AvailabilityBookingDetailsCopyWithImpl<$Res,
        _$AvailabilityBookingDetailsImpl>
    implements _$$AvailabilityBookingDetailsImplCopyWith<$Res> {
  __$$AvailabilityBookingDetailsImplCopyWithImpl(
      _$AvailabilityBookingDetailsImpl _value,
      $Res Function(_$AvailabilityBookingDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? duration = freezed,
    Object? perHourCharge = freezed,
    Object? subTotal = freezed,
    Object? totalAmount = freezed,
    Object? maxAdvanceBooking = freezed,
  }) {
    return _then(_$AvailabilityBookingDetailsImpl(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      perHourCharge: freezed == perHourCharge
          ? _value.perHourCharge
          : perHourCharge // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdvanceBooking: freezed == maxAdvanceBooking
          ? _value.maxAdvanceBooking
          : maxAdvanceBooking // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityBookingDetailsImpl implements _AvailabilityBookingDetails {
  const _$AvailabilityBookingDetailsImpl(
      {this.checkIn,
      this.checkOut,
      this.duration,
      this.perHourCharge,
      this.subTotal,
      this.totalAmount,
      this.maxAdvanceBooking});

  factory _$AvailabilityBookingDetailsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AvailabilityBookingDetailsImplFromJson(json);

  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final int? duration;
  @override
  final int? perHourCharge;
  @override
  final int? subTotal;
  @override
  final int? totalAmount;
  @override
  final String? maxAdvanceBooking;

  @override
  String toString() {
    return 'AvailabilityBookingDetails(checkIn: $checkIn, checkOut: $checkOut, duration: $duration, perHourCharge: $perHourCharge, subTotal: $subTotal, totalAmount: $totalAmount, maxAdvanceBooking: $maxAdvanceBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityBookingDetailsImpl &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.perHourCharge, perHourCharge) ||
                other.perHourCharge == perHourCharge) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.maxAdvanceBooking, maxAdvanceBooking) ||
                other.maxAdvanceBooking == maxAdvanceBooking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, checkIn, checkOut, duration,
      perHourCharge, subTotal, totalAmount, maxAdvanceBooking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityBookingDetailsImplCopyWith<_$AvailabilityBookingDetailsImpl>
      get copyWith => __$$AvailabilityBookingDetailsImplCopyWithImpl<
          _$AvailabilityBookingDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityBookingDetailsImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityBookingDetails
    implements AvailabilityBookingDetails {
  const factory _AvailabilityBookingDetails(
      {final String? checkIn,
      final String? checkOut,
      final int? duration,
      final int? perHourCharge,
      final int? subTotal,
      final int? totalAmount,
      final String? maxAdvanceBooking}) = _$AvailabilityBookingDetailsImpl;

  factory _AvailabilityBookingDetails.fromJson(Map<String, dynamic> json) =
      _$AvailabilityBookingDetailsImpl.fromJson;

  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  int? get duration;
  @override
  int? get perHourCharge;
  @override
  int? get subTotal;
  @override
  int? get totalAmount;
  @override
  String? get maxAdvanceBooking;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityBookingDetailsImplCopyWith<_$AvailabilityBookingDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookingConflict _$BookingConflictFromJson(Map<String, dynamic> json) {
  return _BookingConflict.fromJson(json);
}

/// @nodoc
mixin _$BookingConflict {
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;
  String? get bookingId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingConflictCopyWith<BookingConflict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingConflictCopyWith<$Res> {
  factory $BookingConflictCopyWith(
          BookingConflict value, $Res Function(BookingConflict) then) =
      _$BookingConflictCopyWithImpl<$Res, BookingConflict>;
  @useResult
  $Res call(
      {String? checkIn, String? checkOut, String? bookingId, String? status});
}

/// @nodoc
class _$BookingConflictCopyWithImpl<$Res, $Val extends BookingConflict>
    implements $BookingConflictCopyWith<$Res> {
  _$BookingConflictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? bookingId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingConflictImplCopyWith<$Res>
    implements $BookingConflictCopyWith<$Res> {
  factory _$$BookingConflictImplCopyWith(_$BookingConflictImpl value,
          $Res Function(_$BookingConflictImpl) then) =
      __$$BookingConflictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? checkIn, String? checkOut, String? bookingId, String? status});
}

/// @nodoc
class __$$BookingConflictImplCopyWithImpl<$Res>
    extends _$BookingConflictCopyWithImpl<$Res, _$BookingConflictImpl>
    implements _$$BookingConflictImplCopyWith<$Res> {
  __$$BookingConflictImplCopyWithImpl(
      _$BookingConflictImpl _value, $Res Function(_$BookingConflictImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? bookingId = freezed,
    Object? status = freezed,
  }) {
    return _then(_$BookingConflictImpl(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
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
class _$BookingConflictImpl implements _BookingConflict {
  const _$BookingConflictImpl(
      {this.checkIn, this.checkOut, this.bookingId, this.status});

  factory _$BookingConflictImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingConflictImplFromJson(json);

  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final String? bookingId;
  @override
  final String? status;

  @override
  String toString() {
    return 'BookingConflict(checkIn: $checkIn, checkOut: $checkOut, bookingId: $bookingId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingConflictImpl &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, checkIn, checkOut, bookingId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingConflictImplCopyWith<_$BookingConflictImpl> get copyWith =>
      __$$BookingConflictImplCopyWithImpl<_$BookingConflictImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingConflictImplToJson(
      this,
    );
  }
}

abstract class _BookingConflict implements BookingConflict {
  const factory _BookingConflict(
      {final String? checkIn,
      final String? checkOut,
      final String? bookingId,
      final String? status}) = _$BookingConflictImpl;

  factory _BookingConflict.fromJson(Map<String, dynamic> json) =
      _$BookingConflictImpl.fromJson;

  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  String? get bookingId;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$BookingConflictImplCopyWith<_$BookingConflictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfirmBookingResponse _$ConfirmBookingResponseFromJson(
    Map<String, dynamic> json) {
  return _ConfirmBookingResponse.fromJson(json);
}

/// @nodoc
mixin _$ConfirmBookingResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ConfirmBookingData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmBookingResponseCopyWith<ConfirmBookingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmBookingResponseCopyWith<$Res> {
  factory $ConfirmBookingResponseCopyWith(ConfirmBookingResponse value,
          $Res Function(ConfirmBookingResponse) then) =
      _$ConfirmBookingResponseCopyWithImpl<$Res, ConfirmBookingResponse>;
  @useResult
  $Res call({int? status, String? message, ConfirmBookingData? data});

  $ConfirmBookingDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConfirmBookingResponseCopyWithImpl<$Res,
        $Val extends ConfirmBookingResponse>
    implements $ConfirmBookingResponseCopyWith<$Res> {
  _$ConfirmBookingResponseCopyWithImpl(this._value, this._then);

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
              as ConfirmBookingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfirmBookingDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ConfirmBookingDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfirmBookingResponseImplCopyWith<$Res>
    implements $ConfirmBookingResponseCopyWith<$Res> {
  factory _$$ConfirmBookingResponseImplCopyWith(
          _$ConfirmBookingResponseImpl value,
          $Res Function(_$ConfirmBookingResponseImpl) then) =
      __$$ConfirmBookingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, ConfirmBookingData? data});

  @override
  $ConfirmBookingDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ConfirmBookingResponseImplCopyWithImpl<$Res>
    extends _$ConfirmBookingResponseCopyWithImpl<$Res,
        _$ConfirmBookingResponseImpl>
    implements _$$ConfirmBookingResponseImplCopyWith<$Res> {
  __$$ConfirmBookingResponseImplCopyWithImpl(
      _$ConfirmBookingResponseImpl _value,
      $Res Function(_$ConfirmBookingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ConfirmBookingResponseImpl(
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
              as ConfirmBookingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmBookingResponseImpl implements _ConfirmBookingResponse {
  const _$ConfirmBookingResponseImpl({this.status, this.message, this.data});

  factory _$ConfirmBookingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmBookingResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final ConfirmBookingData? data;

  @override
  String toString() {
    return 'ConfirmBookingResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmBookingResponseImpl &&
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
  _$$ConfirmBookingResponseImplCopyWith<_$ConfirmBookingResponseImpl>
      get copyWith => __$$ConfirmBookingResponseImplCopyWithImpl<
          _$ConfirmBookingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmBookingResponseImplToJson(
      this,
    );
  }
}

abstract class _ConfirmBookingResponse implements ConfirmBookingResponse {
  const factory _ConfirmBookingResponse(
      {final int? status,
      final String? message,
      final ConfirmBookingData? data}) = _$ConfirmBookingResponseImpl;

  factory _ConfirmBookingResponse.fromJson(Map<String, dynamic> json) =
      _$ConfirmBookingResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  ConfirmBookingData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmBookingResponseImplCopyWith<_$ConfirmBookingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConfirmBookingData _$ConfirmBookingDataFromJson(Map<String, dynamic> json) {
  return _ConfirmBookingData.fromJson(json);
}

/// @nodoc
mixin _$ConfirmBookingData {
  String? get bookingId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get outletId => throw _privateConstructorUsedError;
  String? get tableId => throw _privateConstructorUsedError;
  String? get seatId => throw _privateConstructorUsedError;
  int? get bookingOTP => throw _privateConstructorUsedError;
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get bookingType => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get paymentLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmBookingDataCopyWith<ConfirmBookingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmBookingDataCopyWith<$Res> {
  factory $ConfirmBookingDataCopyWith(
          ConfirmBookingData value, $Res Function(ConfirmBookingData) then) =
      _$ConfirmBookingDataCopyWithImpl<$Res, ConfirmBookingData>;
  @useResult
  $Res call(
      {String? bookingId,
      String? userId,
      String? outletId,
      String? tableId,
      String? seatId,
      int? bookingOTP,
      String? checkIn,
      String? checkOut,
      int? duration,
      int? subTotal,
      int? discount,
      int? amount,
      String? bookingType,
      String? paymentType,
      String? status,
      String? paymentLink});
}

/// @nodoc
class _$ConfirmBookingDataCopyWithImpl<$Res, $Val extends ConfirmBookingData>
    implements $ConfirmBookingDataCopyWith<$Res> {
  _$ConfirmBookingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? userId = freezed,
    Object? outletId = freezed,
    Object? tableId = freezed,
    Object? seatId = freezed,
    Object? bookingOTP = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? duration = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? bookingType = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? paymentLink = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String?,
      seatId: freezed == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingOTP: freezed == bookingOTP
          ? _value.bookingOTP
          : bookingOTP // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingType: freezed == bookingType
          ? _value.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLink: freezed == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmBookingDataImplCopyWith<$Res>
    implements $ConfirmBookingDataCopyWith<$Res> {
  factory _$$ConfirmBookingDataImplCopyWith(_$ConfirmBookingDataImpl value,
          $Res Function(_$ConfirmBookingDataImpl) then) =
      __$$ConfirmBookingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? bookingId,
      String? userId,
      String? outletId,
      String? tableId,
      String? seatId,
      int? bookingOTP,
      String? checkIn,
      String? checkOut,
      int? duration,
      int? subTotal,
      int? discount,
      int? amount,
      String? bookingType,
      String? paymentType,
      String? status,
      String? paymentLink});
}

/// @nodoc
class __$$ConfirmBookingDataImplCopyWithImpl<$Res>
    extends _$ConfirmBookingDataCopyWithImpl<$Res, _$ConfirmBookingDataImpl>
    implements _$$ConfirmBookingDataImplCopyWith<$Res> {
  __$$ConfirmBookingDataImplCopyWithImpl(_$ConfirmBookingDataImpl _value,
      $Res Function(_$ConfirmBookingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? userId = freezed,
    Object? outletId = freezed,
    Object? tableId = freezed,
    Object? seatId = freezed,
    Object? bookingOTP = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? duration = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? amount = freezed,
    Object? bookingType = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? paymentLink = freezed,
  }) {
    return _then(_$ConfirmBookingDataImpl(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as String?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as String?,
      seatId: freezed == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingOTP: freezed == bookingOTP
          ? _value.bookingOTP
          : bookingOTP // ignore: cast_nullable_to_non_nullable
              as int?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingType: freezed == bookingType
          ? _value.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLink: freezed == paymentLink
          ? _value.paymentLink
          : paymentLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmBookingDataImpl implements _ConfirmBookingData {
  const _$ConfirmBookingDataImpl(
      {this.bookingId,
      this.userId,
      this.outletId,
      this.tableId,
      this.seatId,
      this.bookingOTP,
      this.checkIn,
      this.checkOut,
      this.duration,
      this.subTotal,
      this.discount,
      this.amount,
      this.bookingType,
      this.paymentType,
      this.status,
      this.paymentLink});

  factory _$ConfirmBookingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmBookingDataImplFromJson(json);

  @override
  final String? bookingId;
  @override
  final String? userId;
  @override
  final String? outletId;
  @override
  final String? tableId;
  @override
  final String? seatId;
  @override
  final int? bookingOTP;
  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final int? duration;
  @override
  final int? subTotal;
  @override
  final int? discount;
  @override
  final int? amount;
  @override
  final String? bookingType;
  @override
  final String? paymentType;
  @override
  final String? status;
  @override
  final String? paymentLink;

  @override
  String toString() {
    return 'ConfirmBookingData(bookingId: $bookingId, userId: $userId, outletId: $outletId, tableId: $tableId, seatId: $seatId, bookingOTP: $bookingOTP, checkIn: $checkIn, checkOut: $checkOut, duration: $duration, subTotal: $subTotal, discount: $discount, amount: $amount, bookingType: $bookingType, paymentType: $paymentType, status: $status, paymentLink: $paymentLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmBookingDataImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.bookingOTP, bookingOTP) ||
                other.bookingOTP == bookingOTP) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentLink, paymentLink) ||
                other.paymentLink == paymentLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookingId,
      userId,
      outletId,
      tableId,
      seatId,
      bookingOTP,
      checkIn,
      checkOut,
      duration,
      subTotal,
      discount,
      amount,
      bookingType,
      paymentType,
      status,
      paymentLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmBookingDataImplCopyWith<_$ConfirmBookingDataImpl> get copyWith =>
      __$$ConfirmBookingDataImplCopyWithImpl<_$ConfirmBookingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmBookingDataImplToJson(
      this,
    );
  }
}

abstract class _ConfirmBookingData implements ConfirmBookingData {
  const factory _ConfirmBookingData(
      {final String? bookingId,
      final String? userId,
      final String? outletId,
      final String? tableId,
      final String? seatId,
      final int? bookingOTP,
      final String? checkIn,
      final String? checkOut,
      final int? duration,
      final int? subTotal,
      final int? discount,
      final int? amount,
      final String? bookingType,
      final String? paymentType,
      final String? status,
      final String? paymentLink}) = _$ConfirmBookingDataImpl;

  factory _ConfirmBookingData.fromJson(Map<String, dynamic> json) =
      _$ConfirmBookingDataImpl.fromJson;

  @override
  String? get bookingId;
  @override
  String? get userId;
  @override
  String? get outletId;
  @override
  String? get tableId;
  @override
  String? get seatId;
  @override
  int? get bookingOTP;
  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  int? get duration;
  @override
  int? get subTotal;
  @override
  int? get discount;
  @override
  int? get amount;
  @override
  String? get bookingType;
  @override
  String? get paymentType;
  @override
  String? get status;
  @override
  String? get paymentLink;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmBookingDataImplCopyWith<_$ConfirmBookingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
