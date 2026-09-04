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
  dynamic get userId => throw _privateConstructorUsedError;
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
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;

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
      dynamic userId,
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
      String? paymentLink,
      String? orderId,
      String? paymentId});
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
    Object? orderId = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
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
      dynamic userId,
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
      String? paymentLink,
      String? orderId,
      String? paymentId});
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
    Object? orderId = freezed,
    Object? paymentId = freezed,
  }) {
    return _then(_$ConfirmBookingDataImpl(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
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
      this.paymentLink,
      this.orderId,
      this.paymentId});

  factory _$ConfirmBookingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmBookingDataImplFromJson(json);

  @override
  final String? bookingId;
  @override
  final dynamic userId;
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
  final String? orderId;
  @override
  final String? paymentId;

  @override
  String toString() {
    return 'ConfirmBookingData(bookingId: $bookingId, userId: $userId, outletId: $outletId, tableId: $tableId, seatId: $seatId, bookingOTP: $bookingOTP, checkIn: $checkIn, checkOut: $checkOut, duration: $duration, subTotal: $subTotal, discount: $discount, amount: $amount, bookingType: $bookingType, paymentType: $paymentType, status: $status, paymentLink: $paymentLink, orderId: $orderId, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmBookingDataImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
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
                other.paymentLink == paymentLink) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookingId,
      const DeepCollectionEquality().hash(userId),
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
      paymentLink,
      orderId,
      paymentId);

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
      final dynamic userId,
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
      final String? paymentLink,
      final String? orderId,
      final String? paymentId}) = _$ConfirmBookingDataImpl;

  factory _ConfirmBookingData.fromJson(Map<String, dynamic> json) =
      _$ConfirmBookingDataImpl.fromJson;

  @override
  String? get bookingId;
  @override
  dynamic get userId;
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
  String? get orderId;
  @override
  String? get paymentId;
  @override
  @JsonKey(ignore: true)
  _$$ConfirmBookingDataImplCopyWith<_$ConfirmBookingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  OutletModel? get outletId => throw _privateConstructorUsedError;
  TableModel? get tableId => throw _privateConstructorUsedError;
  String? get seatId => throw _privateConstructorUsedError;
  String? get bookingType => throw _privateConstructorUsedError;
  int? get bookingOTP => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get charges => throw _privateConstructorUsedError;
  int? get subTotal => throw _privateConstructorUsedError;
  int? get refundedAmount => throw _privateConstructorUsedError;
  List<BookingLog>? get logs => throw _privateConstructorUsedError;
  String? get couponId => throw _privateConstructorUsedError;
  List<dynamic>? get paymentLogs => throw _privateConstructorUsedError;
  dynamic get guestDetailsList => throw _privateConstructorUsedError;
  bool? get userVisited => throw _privateConstructorUsedError;
  dynamic get cancellationDetails => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

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
      String? status,
      OutletModel? outletId,
      TableModel? tableId,
      String? seatId,
      String? bookingType,
      int? bookingOTP,
      String? paymentType,
      String? orderId,
      String? paymentId,
      String? checkIn,
      String? checkOut,
      int? amount,
      int? discount,
      int? charges,
      int? subTotal,
      int? refundedAmount,
      List<BookingLog>? logs,
      String? couponId,
      List<dynamic>? paymentLogs,
      dynamic guestDetailsList,
      bool? userVisited,
      dynamic cancellationDetails,
      String? createdAt,
      String? updatedAt});

  $OutletModelCopyWith<$Res>? get outletId;
  $TableModelCopyWith<$Res>? get tableId;
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
    Object? status = freezed,
    Object? outletId = freezed,
    Object? tableId = freezed,
    Object? seatId = freezed,
    Object? bookingType = freezed,
    Object? bookingOTP = freezed,
    Object? paymentType = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? charges = freezed,
    Object? subTotal = freezed,
    Object? refundedAmount = freezed,
    Object? logs = freezed,
    Object? couponId = freezed,
    Object? paymentLogs = freezed,
    Object? guestDetailsList = freezed,
    Object? userVisited = freezed,
    Object? cancellationDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as OutletModel?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as TableModel?,
      seatId: freezed == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingType: freezed == bookingType
          ? _value.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingOTP: freezed == bookingOTP
          ? _value.bookingOTP
          : bookingOTP // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      refundedAmount: freezed == refundedAmount
          ? _value.refundedAmount
          : refundedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      logs: freezed == logs
          ? _value.logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<BookingLog>?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLogs: freezed == paymentLogs
          ? _value.paymentLogs
          : paymentLogs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      guestDetailsList: freezed == guestDetailsList
          ? _value.guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userVisited: freezed == userVisited
          ? _value.userVisited
          : userVisited // ignore: cast_nullable_to_non_nullable
              as bool?,
      cancellationDetails: freezed == cancellationDetails
          ? _value.cancellationDetails
          : cancellationDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  $OutletModelCopyWith<$Res>? get outletId {
    if (_value.outletId == null) {
      return null;
    }

    return $OutletModelCopyWith<$Res>(_value.outletId!, (value) {
      return _then(_value.copyWith(outletId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TableModelCopyWith<$Res>? get tableId {
    if (_value.tableId == null) {
      return null;
    }

    return $TableModelCopyWith<$Res>(_value.tableId!, (value) {
      return _then(_value.copyWith(tableId: value) as $Val);
    });
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
      String? status,
      OutletModel? outletId,
      TableModel? tableId,
      String? seatId,
      String? bookingType,
      int? bookingOTP,
      String? paymentType,
      String? orderId,
      String? paymentId,
      String? checkIn,
      String? checkOut,
      int? amount,
      int? discount,
      int? charges,
      int? subTotal,
      int? refundedAmount,
      List<BookingLog>? logs,
      String? couponId,
      List<dynamic>? paymentLogs,
      dynamic guestDetailsList,
      bool? userVisited,
      dynamic cancellationDetails,
      String? createdAt,
      String? updatedAt});

  @override
  $OutletModelCopyWith<$Res>? get outletId;
  @override
  $TableModelCopyWith<$Res>? get tableId;
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
    Object? status = freezed,
    Object? outletId = freezed,
    Object? tableId = freezed,
    Object? seatId = freezed,
    Object? bookingType = freezed,
    Object? bookingOTP = freezed,
    Object? paymentType = freezed,
    Object? orderId = freezed,
    Object? paymentId = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? amount = freezed,
    Object? discount = freezed,
    Object? charges = freezed,
    Object? subTotal = freezed,
    Object? refundedAmount = freezed,
    Object? logs = freezed,
    Object? couponId = freezed,
    Object? paymentLogs = freezed,
    Object? guestDetailsList = freezed,
    Object? userVisited = freezed,
    Object? cancellationDetails = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BookingModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      outletId: freezed == outletId
          ? _value.outletId
          : outletId // ignore: cast_nullable_to_non_nullable
              as OutletModel?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as TableModel?,
      seatId: freezed == seatId
          ? _value.seatId
          : seatId // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingType: freezed == bookingType
          ? _value.bookingType
          : bookingType // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingOTP: freezed == bookingOTP
          ? _value.bookingOTP
          : bookingOTP // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      charges: freezed == charges
          ? _value.charges
          : charges // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      refundedAmount: freezed == refundedAmount
          ? _value.refundedAmount
          : refundedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      logs: freezed == logs
          ? _value._logs
          : logs // ignore: cast_nullable_to_non_nullable
              as List<BookingLog>?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentLogs: freezed == paymentLogs
          ? _value._paymentLogs
          : paymentLogs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      guestDetailsList: freezed == guestDetailsList
          ? _value.guestDetailsList
          : guestDetailsList // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userVisited: freezed == userVisited
          ? _value.userVisited
          : userVisited // ignore: cast_nullable_to_non_nullable
              as bool?,
      cancellationDetails: freezed == cancellationDetails
          ? _value.cancellationDetails
          : cancellationDetails // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$BookingModelImpl implements _BookingModel {
  const _$BookingModelImpl(
      {@JsonKey(name: '_id') this.id,
      this.status,
      this.outletId,
      this.tableId,
      this.seatId,
      this.bookingType,
      this.bookingOTP,
      this.paymentType,
      this.orderId,
      this.paymentId,
      this.checkIn,
      this.checkOut,
      this.amount,
      this.discount,
      this.charges,
      this.subTotal,
      this.refundedAmount,
      final List<BookingLog>? logs,
      this.couponId,
      final List<dynamic>? paymentLogs,
      this.guestDetailsList,
      this.userVisited,
      this.cancellationDetails,
      this.createdAt,
      this.updatedAt})
      : _logs = logs,
        _paymentLogs = paymentLogs;

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? status;
  @override
  final OutletModel? outletId;
  @override
  final TableModel? tableId;
  @override
  final String? seatId;
  @override
  final String? bookingType;
  @override
  final int? bookingOTP;
  @override
  final String? paymentType;
  @override
  final String? orderId;
  @override
  final String? paymentId;
  @override
  final String? checkIn;
  @override
  final String? checkOut;
  @override
  final int? amount;
  @override
  final int? discount;
  @override
  final int? charges;
  @override
  final int? subTotal;
  @override
  final int? refundedAmount;
  final List<BookingLog>? _logs;
  @override
  List<BookingLog>? get logs {
    final value = _logs;
    if (value == null) return null;
    if (_logs is EqualUnmodifiableListView) return _logs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? couponId;
  final List<dynamic>? _paymentLogs;
  @override
  List<dynamic>? get paymentLogs {
    final value = _paymentLogs;
    if (value == null) return null;
    if (_paymentLogs is EqualUnmodifiableListView) return _paymentLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic guestDetailsList;
  @override
  final bool? userVisited;
  @override
  final dynamic cancellationDetails;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'BookingModel(id: $id, status: $status, outletId: $outletId, tableId: $tableId, seatId: $seatId, bookingType: $bookingType, bookingOTP: $bookingOTP, paymentType: $paymentType, orderId: $orderId, paymentId: $paymentId, checkIn: $checkIn, checkOut: $checkOut, amount: $amount, discount: $discount, charges: $charges, subTotal: $subTotal, refundedAmount: $refundedAmount, logs: $logs, couponId: $couponId, paymentLogs: $paymentLogs, guestDetailsList: $guestDetailsList, userVisited: $userVisited, cancellationDetails: $cancellationDetails, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.outletId, outletId) ||
                other.outletId == outletId) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.bookingOTP, bookingOTP) ||
                other.bookingOTP == bookingOTP) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.charges, charges) || other.charges == charges) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.refundedAmount, refundedAmount) ||
                other.refundedAmount == refundedAmount) &&
            const DeepCollectionEquality().equals(other._logs, _logs) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            const DeepCollectionEquality()
                .equals(other._paymentLogs, _paymentLogs) &&
            const DeepCollectionEquality()
                .equals(other.guestDetailsList, guestDetailsList) &&
            (identical(other.userVisited, userVisited) ||
                other.userVisited == userVisited) &&
            const DeepCollectionEquality()
                .equals(other.cancellationDetails, cancellationDetails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        status,
        outletId,
        tableId,
        seatId,
        bookingType,
        bookingOTP,
        paymentType,
        orderId,
        paymentId,
        checkIn,
        checkOut,
        amount,
        discount,
        charges,
        subTotal,
        refundedAmount,
        const DeepCollectionEquality().hash(_logs),
        couponId,
        const DeepCollectionEquality().hash(_paymentLogs),
        const DeepCollectionEquality().hash(guestDetailsList),
        userVisited,
        const DeepCollectionEquality().hash(cancellationDetails),
        createdAt,
        updatedAt
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
      final String? status,
      final OutletModel? outletId,
      final TableModel? tableId,
      final String? seatId,
      final String? bookingType,
      final int? bookingOTP,
      final String? paymentType,
      final String? orderId,
      final String? paymentId,
      final String? checkIn,
      final String? checkOut,
      final int? amount,
      final int? discount,
      final int? charges,
      final int? subTotal,
      final int? refundedAmount,
      final List<BookingLog>? logs,
      final String? couponId,
      final List<dynamic>? paymentLogs,
      final dynamic guestDetailsList,
      final bool? userVisited,
      final dynamic cancellationDetails,
      final String? createdAt,
      final String? updatedAt}) = _$BookingModelImpl;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get status;
  @override
  OutletModel? get outletId;
  @override
  TableModel? get tableId;
  @override
  String? get seatId;
  @override
  String? get bookingType;
  @override
  int? get bookingOTP;
  @override
  String? get paymentType;
  @override
  String? get orderId;
  @override
  String? get paymentId;
  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  int? get amount;
  @override
  int? get discount;
  @override
  int? get charges;
  @override
  int? get subTotal;
  @override
  int? get refundedAmount;
  @override
  List<BookingLog>? get logs;
  @override
  String? get couponId;
  @override
  List<dynamic>? get paymentLogs;
  @override
  dynamic get guestDetailsList;
  @override
  bool? get userVisited;
  @override
  dynamic get cancellationDetails;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingLog _$BookingLogFromJson(Map<String, dynamic> json) {
  return _BookingLog.fromJson(json);
}

/// @nodoc
mixin _$BookingLog {
  String? get action => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingLogCopyWith<BookingLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingLogCopyWith<$Res> {
  factory $BookingLogCopyWith(
          BookingLog value, $Res Function(BookingLog) then) =
      _$BookingLogCopyWithImpl<$Res, BookingLog>;
  @useResult
  $Res call({String? action, String? timestamp, String? details});
}

/// @nodoc
class _$BookingLogCopyWithImpl<$Res, $Val extends BookingLog>
    implements $BookingLogCopyWith<$Res> {
  _$BookingLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingLogImplCopyWith<$Res>
    implements $BookingLogCopyWith<$Res> {
  factory _$$BookingLogImplCopyWith(
          _$BookingLogImpl value, $Res Function(_$BookingLogImpl) then) =
      __$$BookingLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? action, String? timestamp, String? details});
}

/// @nodoc
class __$$BookingLogImplCopyWithImpl<$Res>
    extends _$BookingLogCopyWithImpl<$Res, _$BookingLogImpl>
    implements _$$BookingLogImplCopyWith<$Res> {
  __$$BookingLogImplCopyWithImpl(
      _$BookingLogImpl _value, $Res Function(_$BookingLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? timestamp = freezed,
    Object? details = freezed,
  }) {
    return _then(_$BookingLogImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingLogImpl implements _BookingLog {
  const _$BookingLogImpl({this.action, this.timestamp, this.details});

  factory _$BookingLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingLogImplFromJson(json);

  @override
  final String? action;
  @override
  final String? timestamp;
  @override
  final String? details;

  @override
  String toString() {
    return 'BookingLog(action: $action, timestamp: $timestamp, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingLogImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.details, details) || other.details == details));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, timestamp, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingLogImplCopyWith<_$BookingLogImpl> get copyWith =>
      __$$BookingLogImplCopyWithImpl<_$BookingLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingLogImplToJson(
      this,
    );
  }
}

abstract class _BookingLog implements BookingLog {
  const factory _BookingLog(
      {final String? action,
      final String? timestamp,
      final String? details}) = _$BookingLogImpl;

  factory _BookingLog.fromJson(Map<String, dynamic> json) =
      _$BookingLogImpl.fromJson;

  @override
  String? get action;
  @override
  String? get timestamp;
  @override
  String? get details;
  @override
  @JsonKey(ignore: true)
  _$$BookingLogImplCopyWith<_$BookingLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingPagination _$BookingPaginationFromJson(Map<String, dynamic> json) {
  return _BookingPagination.fromJson(json);
}

/// @nodoc
mixin _$BookingPagination {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingPaginationCopyWith<BookingPagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingPaginationCopyWith<$Res> {
  factory $BookingPaginationCopyWith(
          BookingPagination value, $Res Function(BookingPagination) then) =
      _$BookingPaginationCopyWithImpl<$Res, BookingPagination>;
  @useResult
  $Res call({int? currentPage, int? totalPages, int? totalCount, int? limit});
}

/// @nodoc
class _$BookingPaginationCopyWithImpl<$Res, $Val extends BookingPagination>
    implements $BookingPaginationCopyWith<$Res> {
  _$BookingPaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? totalCount = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingPaginationImplCopyWith<$Res>
    implements $BookingPaginationCopyWith<$Res> {
  factory _$$BookingPaginationImplCopyWith(_$BookingPaginationImpl value,
          $Res Function(_$BookingPaginationImpl) then) =
      __$$BookingPaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentPage, int? totalPages, int? totalCount, int? limit});
}

/// @nodoc
class __$$BookingPaginationImplCopyWithImpl<$Res>
    extends _$BookingPaginationCopyWithImpl<$Res, _$BookingPaginationImpl>
    implements _$$BookingPaginationImplCopyWith<$Res> {
  __$$BookingPaginationImplCopyWithImpl(_$BookingPaginationImpl _value,
      $Res Function(_$BookingPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? totalCount = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$BookingPaginationImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingPaginationImpl implements _BookingPagination {
  const _$BookingPaginationImpl(
      {this.currentPage, this.totalPages, this.totalCount, this.limit});

  factory _$BookingPaginationImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingPaginationImplFromJson(json);

  @override
  final int? currentPage;
  @override
  final int? totalPages;
  @override
  final int? totalCount;
  @override
  final int? limit;

  @override
  String toString() {
    return 'BookingPagination(currentPage: $currentPage, totalPages: $totalPages, totalCount: $totalCount, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingPaginationImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentPage, totalPages, totalCount, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingPaginationImplCopyWith<_$BookingPaginationImpl> get copyWith =>
      __$$BookingPaginationImplCopyWithImpl<_$BookingPaginationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingPaginationImplToJson(
      this,
    );
  }
}

abstract class _BookingPagination implements BookingPagination {
  const factory _BookingPagination(
      {final int? currentPage,
      final int? totalPages,
      final int? totalCount,
      final int? limit}) = _$BookingPaginationImpl;

  factory _BookingPagination.fromJson(Map<String, dynamic> json) =
      _$BookingPaginationImpl.fromJson;

  @override
  int? get currentPage;
  @override
  int? get totalPages;
  @override
  int? get totalCount;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$BookingPaginationImplCopyWith<_$BookingPaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingListData _$BookingListDataFromJson(Map<String, dynamic> json) {
  return _BookingListData.fromJson(json);
}

/// @nodoc
mixin _$BookingListData {
  List<BookingModel>? get bookings => throw _privateConstructorUsedError;
  BookingPagination? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingListDataCopyWith<BookingListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingListDataCopyWith<$Res> {
  factory $BookingListDataCopyWith(
          BookingListData value, $Res Function(BookingListData) then) =
      _$BookingListDataCopyWithImpl<$Res, BookingListData>;
  @useResult
  $Res call({List<BookingModel>? bookings, BookingPagination? pagination});

  $BookingPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$BookingListDataCopyWithImpl<$Res, $Val extends BookingListData>
    implements $BookingListDataCopyWith<$Res> {
  _$BookingListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      bookings: freezed == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as BookingPagination?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingPaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $BookingPaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingListDataImplCopyWith<$Res>
    implements $BookingListDataCopyWith<$Res> {
  factory _$$BookingListDataImplCopyWith(_$BookingListDataImpl value,
          $Res Function(_$BookingListDataImpl) then) =
      __$$BookingListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookingModel>? bookings, BookingPagination? pagination});

  @override
  $BookingPaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$BookingListDataImplCopyWithImpl<$Res>
    extends _$BookingListDataCopyWithImpl<$Res, _$BookingListDataImpl>
    implements _$$BookingListDataImplCopyWith<$Res> {
  __$$BookingListDataImplCopyWithImpl(
      _$BookingListDataImpl _value, $Res Function(_$BookingListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$BookingListDataImpl(
      bookings: freezed == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as BookingPagination?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingListDataImpl implements _BookingListData {
  const _$BookingListDataImpl(
      {final List<BookingModel>? bookings, this.pagination})
      : _bookings = bookings;

  factory _$BookingListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingListDataImplFromJson(json);

  final List<BookingModel>? _bookings;
  @override
  List<BookingModel>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BookingPagination? pagination;

  @override
  String toString() {
    return 'BookingListData(bookings: $bookings, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingListDataImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bookings), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingListDataImplCopyWith<_$BookingListDataImpl> get copyWith =>
      __$$BookingListDataImplCopyWithImpl<_$BookingListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingListDataImplToJson(
      this,
    );
  }
}

abstract class _BookingListData implements BookingListData {
  const factory _BookingListData(
      {final List<BookingModel>? bookings,
      final BookingPagination? pagination}) = _$BookingListDataImpl;

  factory _BookingListData.fromJson(Map<String, dynamic> json) =
      _$BookingListDataImpl.fromJson;

  @override
  List<BookingModel>? get bookings;
  @override
  BookingPagination? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$BookingListDataImplCopyWith<_$BookingListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingListResponse _$BookingListResponseFromJson(Map<String, dynamic> json) {
  return _BookingListResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingListResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BookingListData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingListResponseCopyWith<BookingListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingListResponseCopyWith<$Res> {
  factory $BookingListResponseCopyWith(
          BookingListResponse value, $Res Function(BookingListResponse) then) =
      _$BookingListResponseCopyWithImpl<$Res, BookingListResponse>;
  @useResult
  $Res call({int? status, String? message, BookingListData? data});

  $BookingListDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookingListResponseCopyWithImpl<$Res, $Val extends BookingListResponse>
    implements $BookingListResponseCopyWith<$Res> {
  _$BookingListResponseCopyWithImpl(this._value, this._then);

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
              as BookingListData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingListDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingListDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingListResponseImplCopyWith<$Res>
    implements $BookingListResponseCopyWith<$Res> {
  factory _$$BookingListResponseImplCopyWith(_$BookingListResponseImpl value,
          $Res Function(_$BookingListResponseImpl) then) =
      __$$BookingListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, BookingListData? data});

  @override
  $BookingListDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BookingListResponseImplCopyWithImpl<$Res>
    extends _$BookingListResponseCopyWithImpl<$Res, _$BookingListResponseImpl>
    implements _$$BookingListResponseImplCopyWith<$Res> {
  __$$BookingListResponseImplCopyWithImpl(_$BookingListResponseImpl _value,
      $Res Function(_$BookingListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BookingListResponseImpl(
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
              as BookingListData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingListResponseImpl implements _BookingListResponse {
  const _$BookingListResponseImpl({this.status, this.message, this.data});

  factory _$BookingListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingListResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final BookingListData? data;

  @override
  String toString() {
    return 'BookingListResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingListResponseImpl &&
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
  _$$BookingListResponseImplCopyWith<_$BookingListResponseImpl> get copyWith =>
      __$$BookingListResponseImplCopyWithImpl<_$BookingListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingListResponseImplToJson(
      this,
    );
  }
}

abstract class _BookingListResponse implements BookingListResponse {
  const factory _BookingListResponse(
      {final int? status,
      final String? message,
      final BookingListData? data}) = _$BookingListResponseImpl;

  factory _BookingListResponse.fromJson(Map<String, dynamic> json) =
      _$BookingListResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  BookingListData? get data;
  @override
  @JsonKey(ignore: true)
  _$$BookingListResponseImplCopyWith<_$BookingListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDetailsResponse _$BookingDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _BookingDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$BookingDetailsResponse {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BookingModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDetailsResponseCopyWith<BookingDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsResponseCopyWith<$Res> {
  factory $BookingDetailsResponseCopyWith(BookingDetailsResponse value,
          $Res Function(BookingDetailsResponse) then) =
      _$BookingDetailsResponseCopyWithImpl<$Res, BookingDetailsResponse>;
  @useResult
  $Res call({int? status, String? message, BookingModel? data});

  $BookingModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookingDetailsResponseCopyWithImpl<$Res,
        $Val extends BookingDetailsResponse>
    implements $BookingDetailsResponseCopyWith<$Res> {
  _$BookingDetailsResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$BookingDetailsResponseImplCopyWith<$Res>
    implements $BookingDetailsResponseCopyWith<$Res> {
  factory _$$BookingDetailsResponseImplCopyWith(
          _$BookingDetailsResponseImpl value,
          $Res Function(_$BookingDetailsResponseImpl) then) =
      __$$BookingDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, BookingModel? data});

  @override
  $BookingModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BookingDetailsResponseImplCopyWithImpl<$Res>
    extends _$BookingDetailsResponseCopyWithImpl<$Res,
        _$BookingDetailsResponseImpl>
    implements _$$BookingDetailsResponseImplCopyWith<$Res> {
  __$$BookingDetailsResponseImplCopyWithImpl(
      _$BookingDetailsResponseImpl _value,
      $Res Function(_$BookingDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BookingDetailsResponseImpl(
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
class _$BookingDetailsResponseImpl implements _BookingDetailsResponse {
  const _$BookingDetailsResponseImpl({this.status, this.message, this.data});

  factory _$BookingDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDetailsResponseImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final BookingModel? data;

  @override
  String toString() {
    return 'BookingDetailsResponse(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsResponseImpl &&
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
  _$$BookingDetailsResponseImplCopyWith<_$BookingDetailsResponseImpl>
      get copyWith => __$$BookingDetailsResponseImplCopyWithImpl<
          _$BookingDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _BookingDetailsResponse implements BookingDetailsResponse {
  const factory _BookingDetailsResponse(
      {final int? status,
      final String? message,
      final BookingModel? data}) = _$BookingDetailsResponseImpl;

  factory _BookingDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$BookingDetailsResponseImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  BookingModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BookingDetailsResponseImplCopyWith<_$BookingDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
