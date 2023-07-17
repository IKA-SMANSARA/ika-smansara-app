// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_transaction_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTransactionStatusResponse _$PaymentTransactionStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentTransactionStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentTransactionStatusResponse {
  @JsonKey(name: 'merchantOrderId')
  String? get merchantOrderId => throw _privateConstructorUsedError;

  @JsonKey(name: 'reference')
  String? get reference => throw _privateConstructorUsedError;

  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;

  @JsonKey(name: 'fee')
  String? get fee => throw _privateConstructorUsedError;

  @JsonKey(name: 'statusCode')
  String? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(name: 'statusMessage')
  String? get statusMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentTransactionStatusResponseCopyWith<PaymentTransactionStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTransactionStatusResponseCopyWith<$Res> {
  factory $PaymentTransactionStatusResponseCopyWith(
          PaymentTransactionStatusResponse value,
          $Res Function(PaymentTransactionStatusResponse) then) =
      _$PaymentTransactionStatusResponseCopyWithImpl<$Res,
          PaymentTransactionStatusResponse>;

  @useResult
  $Res call(
      {@JsonKey(name: 'merchantOrderId') String? merchantOrderId,
      @JsonKey(name: 'reference') String? reference,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'fee') String? fee,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'statusMessage') String? statusMessage});
}

/// @nodoc
class _$PaymentTransactionStatusResponseCopyWithImpl<$Res,
        $Val extends PaymentTransactionStatusResponse>
    implements $PaymentTransactionStatusResponseCopyWith<$Res> {
  _$PaymentTransactionStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantOrderId = freezed,
    Object? reference = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_value.copyWith(
      merchantOrderId: freezed == merchantOrderId
          ? _value.merchantOrderId
          : merchantOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTransactionStatusResponseCopyWith<$Res>
    implements $PaymentTransactionStatusResponseCopyWith<$Res> {
  factory _$$_PaymentTransactionStatusResponseCopyWith(
          _$_PaymentTransactionStatusResponse value,
          $Res Function(_$_PaymentTransactionStatusResponse) then) =
      __$$_PaymentTransactionStatusResponseCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'merchantOrderId') String? merchantOrderId,
      @JsonKey(name: 'reference') String? reference,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'fee') String? fee,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'statusMessage') String? statusMessage});
}

/// @nodoc
class __$$_PaymentTransactionStatusResponseCopyWithImpl<$Res>
    extends _$PaymentTransactionStatusResponseCopyWithImpl<$Res,
        _$_PaymentTransactionStatusResponse>
    implements _$$_PaymentTransactionStatusResponseCopyWith<$Res> {
  __$$_PaymentTransactionStatusResponseCopyWithImpl(
      _$_PaymentTransactionStatusResponse _value,
      $Res Function(_$_PaymentTransactionStatusResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantOrderId = freezed,
    Object? reference = freezed,
    Object? amount = freezed,
    Object? fee = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
  }) {
    return _then(_$_PaymentTransactionStatusResponse(
      merchantOrderId: freezed == merchantOrderId
          ? _value.merchantOrderId
          : merchantOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTransactionStatusResponse
    implements _PaymentTransactionStatusResponse {
  const _$_PaymentTransactionStatusResponse(
      {@JsonKey(name: 'merchantOrderId') this.merchantOrderId,
      @JsonKey(name: 'reference') this.reference,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'statusCode') this.statusCode,
      @JsonKey(name: 'statusMessage') this.statusMessage});

  factory _$_PaymentTransactionStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_PaymentTransactionStatusResponseFromJson(json);

  @override
  @JsonKey(name: 'merchantOrderId')
  final String? merchantOrderId;
  @override
  @JsonKey(name: 'reference')
  final String? reference;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'fee')
  final String? fee;
  @override
  @JsonKey(name: 'statusCode')
  final String? statusCode;
  @override
  @JsonKey(name: 'statusMessage')
  final String? statusMessage;

  @override
  String toString() {
    return 'PaymentTransactionStatusResponse(merchantOrderId: $merchantOrderId, reference: $reference, amount: $amount, fee: $fee, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTransactionStatusResponse &&
            (identical(other.merchantOrderId, merchantOrderId) ||
                other.merchantOrderId == merchantOrderId) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantOrderId, reference,
      amount, fee, statusCode, statusMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTransactionStatusResponseCopyWith<
          _$_PaymentTransactionStatusResponse>
      get copyWith => __$$_PaymentTransactionStatusResponseCopyWithImpl<
          _$_PaymentTransactionStatusResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTransactionStatusResponseToJson(
      this,
    );
  }
}

abstract class _PaymentTransactionStatusResponse
    implements PaymentTransactionStatusResponse {
  const factory _PaymentTransactionStatusResponse(
          {@JsonKey(name: 'merchantOrderId') final String? merchantOrderId,
          @JsonKey(name: 'reference') final String? reference,
          @JsonKey(name: 'amount') final String? amount,
          @JsonKey(name: 'fee') final String? fee,
          @JsonKey(name: 'statusCode') final String? statusCode,
          @JsonKey(name: 'statusMessage') final String? statusMessage}) =
      _$_PaymentTransactionStatusResponse;

  factory _PaymentTransactionStatusResponse.fromJson(
      Map<String, dynamic> json) = _$_PaymentTransactionStatusResponse.fromJson;

  @override
  @JsonKey(name: 'merchantOrderId')
  String? get merchantOrderId;

  @override
  @JsonKey(name: 'reference')
  String? get reference;

  @override
  @JsonKey(name: 'amount')
  String? get amount;

  @override
  @JsonKey(name: 'fee')
  String? get fee;

  @override
  @JsonKey(name: 'statusCode')
  String? get statusCode;

  @override
  @JsonKey(name: 'statusMessage')
  String? get statusMessage;

  @override
  @JsonKey(ignore: true)
  _$$_PaymentTransactionStatusResponseCopyWith<
          _$_PaymentTransactionStatusResponse>
      get copyWith => throw _privateConstructorUsedError;
}
