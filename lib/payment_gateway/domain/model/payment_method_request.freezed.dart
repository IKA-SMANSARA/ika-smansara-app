// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodRequest _$PaymentMethodRequestFromJson(Map<String, dynamic> json) {
  return _PaymentMethodRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodRequest {
  String? get merchantCode => throw _privateConstructorUsedError;

  int? get amount => throw _privateConstructorUsedError;

  String? get datetime => throw _privateConstructorUsedError;

  String? get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodRequestCopyWith<PaymentMethodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodRequestCopyWith<$Res> {
  factory $PaymentMethodRequestCopyWith(PaymentMethodRequest value,
          $Res Function(PaymentMethodRequest) then) =
      _$PaymentMethodRequestCopyWithImpl<$Res, PaymentMethodRequest>;

  @useResult
  $Res call(
      {String? merchantCode, int? amount, String? datetime, String? signature});
}

/// @nodoc
class _$PaymentMethodRequestCopyWithImpl<$Res,
        $Val extends PaymentMethodRequest>
    implements $PaymentMethodRequestCopyWith<$Res> {
  _$PaymentMethodRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? amount = freezed,
    Object? datetime = freezed,
    Object? signature = freezed,
  }) {
    return _then(_value.copyWith(
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodRequestCopyWith<$Res>
    implements $PaymentMethodRequestCopyWith<$Res> {
  factory _$$_PaymentMethodRequestCopyWith(_$_PaymentMethodRequest value,
          $Res Function(_$_PaymentMethodRequest) then) =
      __$$_PaymentMethodRequestCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? merchantCode, int? amount, String? datetime, String? signature});
}

/// @nodoc
class __$$_PaymentMethodRequestCopyWithImpl<$Res>
    extends _$PaymentMethodRequestCopyWithImpl<$Res, _$_PaymentMethodRequest>
    implements _$$_PaymentMethodRequestCopyWith<$Res> {
  __$$_PaymentMethodRequestCopyWithImpl(_$_PaymentMethodRequest _value,
      $Res Function(_$_PaymentMethodRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? amount = freezed,
    Object? datetime = freezed,
    Object? signature = freezed,
  }) {
    return _then(_$_PaymentMethodRequest(
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      datetime: freezed == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodRequest implements _PaymentMethodRequest {
  const _$_PaymentMethodRequest(
      {this.merchantCode, this.amount, this.datetime, this.signature});

  factory _$_PaymentMethodRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodRequestFromJson(json);

  @override
  final String? merchantCode;
  @override
  final int? amount;
  @override
  final String? datetime;
  @override
  final String? signature;

  @override
  String toString() {
    return 'PaymentMethodRequest(merchantCode: $merchantCode, amount: $amount, datetime: $datetime, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodRequest &&
            (identical(other.merchantCode, merchantCode) ||
                other.merchantCode == merchantCode) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, merchantCode, amount, datetime, signature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodRequestCopyWith<_$_PaymentMethodRequest> get copyWith =>
      __$$_PaymentMethodRequestCopyWithImpl<_$_PaymentMethodRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodRequestToJson(
      this,
    );
  }
}

abstract class _PaymentMethodRequest implements PaymentMethodRequest {
  const factory _PaymentMethodRequest(
      {final String? merchantCode,
      final int? amount,
      final String? datetime,
      final String? signature}) = _$_PaymentMethodRequest;

  factory _PaymentMethodRequest.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodRequest.fromJson;

  @override
  String? get merchantCode;

  @override
  int? get amount;

  @override
  String? get datetime;

  @override
  String? get signature;

  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodRequestCopyWith<_$_PaymentMethodRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
