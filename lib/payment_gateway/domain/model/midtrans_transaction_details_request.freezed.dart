// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_transaction_details_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransTransactionDetailsRequest _$MidtransTransactionDetailsRequestFromJson(
    Map<String, dynamic> json) {
  return _MidtransTransactionDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$MidtransTransactionDetailsRequest {
  String? get orderId => throw _privateConstructorUsedError;

  String? get grossAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MidtransTransactionDetailsRequestCopyWith<MidtransTransactionDetailsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransTransactionDetailsRequestCopyWith<$Res> {
  factory $MidtransTransactionDetailsRequestCopyWith(
          MidtransTransactionDetailsRequest value,
          $Res Function(MidtransTransactionDetailsRequest) then) =
      _$MidtransTransactionDetailsRequestCopyWithImpl<$Res,
          MidtransTransactionDetailsRequest>;

  @useResult
  $Res call({String? orderId, String? grossAmount});
}

/// @nodoc
class _$MidtransTransactionDetailsRequestCopyWithImpl<$Res,
        $Val extends MidtransTransactionDetailsRequest>
    implements $MidtransTransactionDetailsRequestCopyWith<$Res> {
  _$MidtransTransactionDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? grossAmount = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MidtransTransactionDetailsRequestCopyWith<$Res>
    implements $MidtransTransactionDetailsRequestCopyWith<$Res> {
  factory _$$_MidtransTransactionDetailsRequestCopyWith(
          _$_MidtransTransactionDetailsRequest value,
          $Res Function(_$_MidtransTransactionDetailsRequest) then) =
      __$$_MidtransTransactionDetailsRequestCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? orderId, String? grossAmount});
}

/// @nodoc
class __$$_MidtransTransactionDetailsRequestCopyWithImpl<$Res>
    extends _$MidtransTransactionDetailsRequestCopyWithImpl<$Res,
        _$_MidtransTransactionDetailsRequest>
    implements _$$_MidtransTransactionDetailsRequestCopyWith<$Res> {
  __$$_MidtransTransactionDetailsRequestCopyWithImpl(
      _$_MidtransTransactionDetailsRequest _value,
      $Res Function(_$_MidtransTransactionDetailsRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? grossAmount = freezed,
  }) {
    return _then(_$_MidtransTransactionDetailsRequest(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MidtransTransactionDetailsRequest
    implements _MidtransTransactionDetailsRequest {
  const _$_MidtransTransactionDetailsRequest({this.orderId, this.grossAmount});

  factory _$_MidtransTransactionDetailsRequest.fromJson(
          Map<String, dynamic> json) =>
      _$$_MidtransTransactionDetailsRequestFromJson(json);

  @override
  final String? orderId;
  @override
  final String? grossAmount;

  @override
  String toString() {
    return 'MidtransTransactionDetailsRequest(orderId: $orderId, grossAmount: $grossAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MidtransTransactionDetailsRequest &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, grossAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MidtransTransactionDetailsRequestCopyWith<
          _$_MidtransTransactionDetailsRequest>
      get copyWith => __$$_MidtransTransactionDetailsRequestCopyWithImpl<
          _$_MidtransTransactionDetailsRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MidtransTransactionDetailsRequestToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionDetailsRequest
    implements MidtransTransactionDetailsRequest {
  const factory _MidtransTransactionDetailsRequest(
      {final String? orderId,
      final String? grossAmount}) = _$_MidtransTransactionDetailsRequest;

  factory _MidtransTransactionDetailsRequest.fromJson(
          Map<String, dynamic> json) =
      _$_MidtransTransactionDetailsRequest.fromJson;

  @override
  String? get orderId;

  @override
  String? get grossAmount;

  @override
  @JsonKey(ignore: true)
  _$$_MidtransTransactionDetailsRequestCopyWith<
          _$_MidtransTransactionDetailsRequest>
      get copyWith => throw _privateConstructorUsedError;
}
