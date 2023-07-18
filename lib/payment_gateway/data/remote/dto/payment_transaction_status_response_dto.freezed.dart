// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_transaction_status_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTransactionStatusResponseDTO
    _$PaymentTransactionStatusResponseDTOFromJson(Map<String, dynamic> json) {
  return _PaymentTransactionStatusResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentTransactionStatusResponseDTO {
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
  $PaymentTransactionStatusResponseDTOCopyWith<
          PaymentTransactionStatusResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTransactionStatusResponseDTOCopyWith<$Res> {
  factory $PaymentTransactionStatusResponseDTOCopyWith(
          PaymentTransactionStatusResponseDTO value,
          $Res Function(PaymentTransactionStatusResponseDTO) then) =
      _$PaymentTransactionStatusResponseDTOCopyWithImpl<$Res,
          PaymentTransactionStatusResponseDTO>;
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
class _$PaymentTransactionStatusResponseDTOCopyWithImpl<$Res,
        $Val extends PaymentTransactionStatusResponseDTO>
    implements $PaymentTransactionStatusResponseDTOCopyWith<$Res> {
  _$PaymentTransactionStatusResponseDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentTransactionStatusResponseDTOCopyWith<$Res>
    implements $PaymentTransactionStatusResponseDTOCopyWith<$Res> {
  factory _$$_PaymentTransactionStatusResponseDTOCopyWith(
          _$_PaymentTransactionStatusResponseDTO value,
          $Res Function(_$_PaymentTransactionStatusResponseDTO) then) =
      __$$_PaymentTransactionStatusResponseDTOCopyWithImpl<$Res>;
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
class __$$_PaymentTransactionStatusResponseDTOCopyWithImpl<$Res>
    extends _$PaymentTransactionStatusResponseDTOCopyWithImpl<$Res,
        _$_PaymentTransactionStatusResponseDTO>
    implements _$$_PaymentTransactionStatusResponseDTOCopyWith<$Res> {
  __$$_PaymentTransactionStatusResponseDTOCopyWithImpl(
      _$_PaymentTransactionStatusResponseDTO _value,
      $Res Function(_$_PaymentTransactionStatusResponseDTO) _then)
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
    return _then(_$_PaymentTransactionStatusResponseDTO(
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
class _$_PaymentTransactionStatusResponseDTO
    implements _PaymentTransactionStatusResponseDTO {
  const _$_PaymentTransactionStatusResponseDTO(
      {@JsonKey(name: 'merchantOrderId') this.merchantOrderId,
      @JsonKey(name: 'reference') this.reference,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'fee') this.fee,
      @JsonKey(name: 'statusCode') this.statusCode,
      @JsonKey(name: 'statusMessage') this.statusMessage});

  factory _$_PaymentTransactionStatusResponseDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_PaymentTransactionStatusResponseDTOFromJson(json);

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
    return 'PaymentTransactionStatusResponseDTO(merchantOrderId: $merchantOrderId, reference: $reference, amount: $amount, fee: $fee, statusCode: $statusCode, statusMessage: $statusMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTransactionStatusResponseDTO &&
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
  _$$_PaymentTransactionStatusResponseDTOCopyWith<
          _$_PaymentTransactionStatusResponseDTO>
      get copyWith => __$$_PaymentTransactionStatusResponseDTOCopyWithImpl<
          _$_PaymentTransactionStatusResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTransactionStatusResponseDTOToJson(
      this,
    );
  }
}

abstract class _PaymentTransactionStatusResponseDTO
    implements PaymentTransactionStatusResponseDTO {
  const factory _PaymentTransactionStatusResponseDTO(
          {@JsonKey(name: 'merchantOrderId') final String? merchantOrderId,
          @JsonKey(name: 'reference') final String? reference,
          @JsonKey(name: 'amount') final String? amount,
          @JsonKey(name: 'fee') final String? fee,
          @JsonKey(name: 'statusCode') final String? statusCode,
          @JsonKey(name: 'statusMessage') final String? statusMessage}) =
      _$_PaymentTransactionStatusResponseDTO;

  factory _PaymentTransactionStatusResponseDTO.fromJson(
          Map<String, dynamic> json) =
      _$_PaymentTransactionStatusResponseDTO.fromJson;

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
  _$$_PaymentTransactionStatusResponseDTOCopyWith<
          _$_PaymentTransactionStatusResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
