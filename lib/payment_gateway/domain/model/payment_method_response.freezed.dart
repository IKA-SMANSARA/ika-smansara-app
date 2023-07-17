// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodResponse _$PaymentMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodResponse {
  List<PaymentFee?>? get paymentFee => throw _privateConstructorUsedError;

  String? get responseCode => throw _privateConstructorUsedError;

  String? get responseMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodResponseCopyWith<PaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodResponseCopyWith<$Res> {
  factory $PaymentMethodResponseCopyWith(PaymentMethodResponse value,
          $Res Function(PaymentMethodResponse) then) =
      _$PaymentMethodResponseCopyWithImpl<$Res, PaymentMethodResponse>;

  @useResult
  $Res call(
      {List<PaymentFee?>? paymentFee,
      String? responseCode,
      String? responseMessage});
}

/// @nodoc
class _$PaymentMethodResponseCopyWithImpl<$Res,
        $Val extends PaymentMethodResponse>
    implements $PaymentMethodResponseCopyWith<$Res> {
  _$PaymentMethodResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentFee = freezed,
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
  }) {
    return _then(_value.copyWith(
      paymentFee: freezed == paymentFee
          ? _value.paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as List<PaymentFee?>?,
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodResponseCopyWith<$Res>
    implements $PaymentMethodResponseCopyWith<$Res> {
  factory _$$_PaymentMethodResponseCopyWith(_$_PaymentMethodResponse value,
          $Res Function(_$_PaymentMethodResponse) then) =
      __$$_PaymentMethodResponseCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {List<PaymentFee?>? paymentFee,
      String? responseCode,
      String? responseMessage});
}

/// @nodoc
class __$$_PaymentMethodResponseCopyWithImpl<$Res>
    extends _$PaymentMethodResponseCopyWithImpl<$Res, _$_PaymentMethodResponse>
    implements _$$_PaymentMethodResponseCopyWith<$Res> {
  __$$_PaymentMethodResponseCopyWithImpl(_$_PaymentMethodResponse _value,
      $Res Function(_$_PaymentMethodResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentFee = freezed,
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
  }) {
    return _then(_$_PaymentMethodResponse(
      paymentFee: freezed == paymentFee
          ? _value._paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as List<PaymentFee?>?,
      responseCode: freezed == responseCode
          ? _value.responseCode
          : responseCode // ignore: cast_nullable_to_non_nullable
              as String?,
      responseMessage: freezed == responseMessage
          ? _value.responseMessage
          : responseMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentMethodResponse implements _PaymentMethodResponse {
  const _$_PaymentMethodResponse(
      {final List<PaymentFee?>? paymentFee,
      this.responseCode,
      this.responseMessage})
      : _paymentFee = paymentFee;

  factory _$_PaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodResponseFromJson(json);

  final List<PaymentFee?>? _paymentFee;

  @override
  List<PaymentFee?>? get paymentFee {
    final value = _paymentFee;
    if (value == null) return null;
    if (_paymentFee is EqualUnmodifiableListView) return _paymentFee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? responseCode;
  @override
  final String? responseMessage;

  @override
  String toString() {
    return 'PaymentMethodResponse(paymentFee: $paymentFee, responseCode: $responseCode, responseMessage: $responseMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodResponse &&
            const DeepCollectionEquality()
                .equals(other._paymentFee, _paymentFee) &&
            (identical(other.responseCode, responseCode) ||
                other.responseCode == responseCode) &&
            (identical(other.responseMessage, responseMessage) ||
                other.responseMessage == responseMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_paymentFee),
      responseCode,
      responseMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodResponseCopyWith<_$_PaymentMethodResponse> get copyWith =>
      __$$_PaymentMethodResponseCopyWithImpl<_$_PaymentMethodResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodResponseToJson(
      this,
    );
  }
}

abstract class _PaymentMethodResponse implements PaymentMethodResponse {
  const factory _PaymentMethodResponse(
      {final List<PaymentFee?>? paymentFee,
      final String? responseCode,
      final String? responseMessage}) = _$_PaymentMethodResponse;

  factory _PaymentMethodResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodResponse.fromJson;

  @override
  List<PaymentFee?>? get paymentFee;

  @override
  String? get responseCode;

  @override
  String? get responseMessage;

  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodResponseCopyWith<_$_PaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
