// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_data_document_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDataDocumentRequestDTO _$TransactionDataDocumentRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _TransactionDataDocumentRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionDataDocumentRequestDTO {
  @JsonKey(name: 'orderId')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignId')
  String? get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentStatus')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataDocumentRequestDTOCopyWith<TransactionDataDocumentRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataDocumentRequestDTOCopyWith<$Res> {
  factory $TransactionDataDocumentRequestDTOCopyWith(
          TransactionDataDocumentRequestDTO value,
          $Res Function(TransactionDataDocumentRequestDTO) then) =
      _$TransactionDataDocumentRequestDTOCopyWithImpl<$Res,
          TransactionDataDocumentRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'orderId') String? orderId,
      @JsonKey(name: 'campaignId') String? campaignId,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'paymentStatus') String? paymentStatus,
      @JsonKey(name: 'userId') String? userId});
}

/// @nodoc
class _$TransactionDataDocumentRequestDTOCopyWithImpl<$Res,
        $Val extends TransactionDataDocumentRequestDTO>
    implements $TransactionDataDocumentRequestDTOCopyWith<$Res> {
  _$TransactionDataDocumentRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? campaignId = freezed,
    Object? amount = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDataDocumentRequestDTOImplCopyWith<$Res>
    implements $TransactionDataDocumentRequestDTOCopyWith<$Res> {
  factory _$$TransactionDataDocumentRequestDTOImplCopyWith(
          _$TransactionDataDocumentRequestDTOImpl value,
          $Res Function(_$TransactionDataDocumentRequestDTOImpl) then) =
      __$$TransactionDataDocumentRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'orderId') String? orderId,
      @JsonKey(name: 'campaignId') String? campaignId,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'paymentStatus') String? paymentStatus,
      @JsonKey(name: 'userId') String? userId});
}

/// @nodoc
class __$$TransactionDataDocumentRequestDTOImplCopyWithImpl<$Res>
    extends _$TransactionDataDocumentRequestDTOCopyWithImpl<$Res,
        _$TransactionDataDocumentRequestDTOImpl>
    implements _$$TransactionDataDocumentRequestDTOImplCopyWith<$Res> {
  __$$TransactionDataDocumentRequestDTOImplCopyWithImpl(
      _$TransactionDataDocumentRequestDTOImpl _value,
      $Res Function(_$TransactionDataDocumentRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? campaignId = freezed,
    Object? amount = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$TransactionDataDocumentRequestDTOImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataDocumentRequestDTOImpl
    implements _TransactionDataDocumentRequestDTO {
  _$TransactionDataDocumentRequestDTOImpl(
      {@JsonKey(name: 'orderId') this.orderId,
      @JsonKey(name: 'campaignId') this.campaignId,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'paymentStatus') this.paymentStatus,
      @JsonKey(name: 'userId') this.userId});

  factory _$TransactionDataDocumentRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionDataDocumentRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'orderId')
  final String? orderId;
  @override
  @JsonKey(name: 'campaignId')
  final String? campaignId;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'userId')
  final String? userId;

  @override
  String toString() {
    return 'TransactionDataDocumentRequestDTO(orderId: $orderId, campaignId: $campaignId, amount: $amount, paymentStatus: $paymentStatus, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataDocumentRequestDTOImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, campaignId, amount, paymentStatus, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataDocumentRequestDTOImplCopyWith<
          _$TransactionDataDocumentRequestDTOImpl>
      get copyWith => __$$TransactionDataDocumentRequestDTOImplCopyWithImpl<
          _$TransactionDataDocumentRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataDocumentRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _TransactionDataDocumentRequestDTO
    implements TransactionDataDocumentRequestDTO {
  factory _TransactionDataDocumentRequestDTO(
          {@JsonKey(name: 'orderId') final String? orderId,
          @JsonKey(name: 'campaignId') final String? campaignId,
          @JsonKey(name: 'amount') final int? amount,
          @JsonKey(name: 'paymentStatus') final String? paymentStatus,
          @JsonKey(name: 'userId') final String? userId}) =
      _$TransactionDataDocumentRequestDTOImpl;

  factory _TransactionDataDocumentRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$TransactionDataDocumentRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'orderId')
  String? get orderId;
  @override
  @JsonKey(name: 'campaignId')
  String? get campaignId;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'paymentStatus')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDataDocumentRequestDTOImplCopyWith<
          _$TransactionDataDocumentRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
