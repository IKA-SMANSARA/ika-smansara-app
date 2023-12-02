// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_data_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDataDocumentRequest _$TransactionDataDocumentRequestFromJson(
    Map<String, dynamic> json) {
  return _TransactionDataDocumentRequest.fromJson(json);
}

/// @nodoc
mixin _$TransactionDataDocumentRequest {
  String? get orderId => throw _privateConstructorUsedError;
  String? get campaignId => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get paymentStatus => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataDocumentRequestCopyWith<TransactionDataDocumentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataDocumentRequestCopyWith<$Res> {
  factory $TransactionDataDocumentRequestCopyWith(
          TransactionDataDocumentRequest value,
          $Res Function(TransactionDataDocumentRequest) then) =
      _$TransactionDataDocumentRequestCopyWithImpl<$Res,
          TransactionDataDocumentRequest>;
  @useResult
  $Res call(
      {String? orderId,
      String? campaignId,
      int? amount,
      String? paymentStatus,
      String? userId});
}

/// @nodoc
class _$TransactionDataDocumentRequestCopyWithImpl<$Res,
        $Val extends TransactionDataDocumentRequest>
    implements $TransactionDataDocumentRequestCopyWith<$Res> {
  _$TransactionDataDocumentRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$TransactionDataDocumentRequestImplCopyWith<$Res>
    implements $TransactionDataDocumentRequestCopyWith<$Res> {
  factory _$$TransactionDataDocumentRequestImplCopyWith(
          _$TransactionDataDocumentRequestImpl value,
          $Res Function(_$TransactionDataDocumentRequestImpl) then) =
      __$$TransactionDataDocumentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? orderId,
      String? campaignId,
      int? amount,
      String? paymentStatus,
      String? userId});
}

/// @nodoc
class __$$TransactionDataDocumentRequestImplCopyWithImpl<$Res>
    extends _$TransactionDataDocumentRequestCopyWithImpl<$Res,
        _$TransactionDataDocumentRequestImpl>
    implements _$$TransactionDataDocumentRequestImplCopyWith<$Res> {
  __$$TransactionDataDocumentRequestImplCopyWithImpl(
      _$TransactionDataDocumentRequestImpl _value,
      $Res Function(_$TransactionDataDocumentRequestImpl) _then)
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
    return _then(_$TransactionDataDocumentRequestImpl(
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
class _$TransactionDataDocumentRequestImpl
    implements _TransactionDataDocumentRequest {
  _$TransactionDataDocumentRequestImpl(
      {this.orderId,
      this.campaignId,
      this.amount,
      this.paymentStatus,
      this.userId});

  factory _$TransactionDataDocumentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionDataDocumentRequestImplFromJson(json);

  @override
  final String? orderId;
  @override
  final String? campaignId;
  @override
  final int? amount;
  @override
  final String? paymentStatus;
  @override
  final String? userId;

  @override
  String toString() {
    return 'TransactionDataDocumentRequest(orderId: $orderId, campaignId: $campaignId, amount: $amount, paymentStatus: $paymentStatus, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataDocumentRequestImpl &&
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
  _$$TransactionDataDocumentRequestImplCopyWith<
          _$TransactionDataDocumentRequestImpl>
      get copyWith => __$$TransactionDataDocumentRequestImplCopyWithImpl<
          _$TransactionDataDocumentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataDocumentRequestImplToJson(
      this,
    );
  }
}

abstract class _TransactionDataDocumentRequest
    implements TransactionDataDocumentRequest {
  factory _TransactionDataDocumentRequest(
      {final String? orderId,
      final String? campaignId,
      final int? amount,
      final String? paymentStatus,
      final String? userId}) = _$TransactionDataDocumentRequestImpl;

  factory _TransactionDataDocumentRequest.fromJson(Map<String, dynamic> json) =
      _$TransactionDataDocumentRequestImpl.fromJson;

  @override
  String? get orderId;
  @override
  String? get campaignId;
  @override
  int? get amount;
  @override
  String? get paymentStatus;
  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDataDocumentRequestImplCopyWith<
          _$TransactionDataDocumentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
