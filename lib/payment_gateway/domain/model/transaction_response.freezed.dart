// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) {
  return _TransactionResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionResponse {
  String? get merchantCode => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  String? get paymentUrl => throw _privateConstructorUsedError;
  String? get statusCode => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionResponseCopyWith<TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResponseCopyWith<$Res> {
  factory $TransactionResponseCopyWith(
          TransactionResponse value, $Res Function(TransactionResponse) then) =
      _$TransactionResponseCopyWithImpl<$Res, TransactionResponse>;
  @useResult
  $Res call(
      {String? merchantCode,
      String? reference,
      String? paymentUrl,
      String? statusCode,
      String? statusMessage,
      String? message});
}

/// @nodoc
class _$TransactionResponseCopyWithImpl<$Res, $Val extends TransactionResponse>
    implements $TransactionResponseCopyWith<$Res> {
  _$TransactionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? reference = freezed,
    Object? paymentUrl = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionResponseCopyWith<$Res>
    implements $TransactionResponseCopyWith<$Res> {
  factory _$$_TransactionResponseCopyWith(_$_TransactionResponse value,
          $Res Function(_$_TransactionResponse) then) =
      __$$_TransactionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? merchantCode,
      String? reference,
      String? paymentUrl,
      String? statusCode,
      String? statusMessage,
      String? message});
}

/// @nodoc
class __$$_TransactionResponseCopyWithImpl<$Res>
    extends _$TransactionResponseCopyWithImpl<$Res, _$_TransactionResponse>
    implements _$$_TransactionResponseCopyWith<$Res> {
  __$$_TransactionResponseCopyWithImpl(_$_TransactionResponse _value,
      $Res Function(_$_TransactionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? reference = freezed,
    Object? paymentUrl = freezed,
    Object? statusCode = freezed,
    Object? statusMessage = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_TransactionResponse(
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as String?,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionResponse implements _TransactionResponse {
  const _$_TransactionResponse(
      {this.merchantCode,
      this.reference,
      this.paymentUrl,
      this.statusCode,
      this.statusMessage,
      this.message});

  factory _$_TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResponseFromJson(json);

  @override
  final String? merchantCode;
  @override
  final String? reference;
  @override
  final String? paymentUrl;
  @override
  final String? statusCode;
  @override
  final String? statusMessage;
  @override
  final String? message;

  @override
  String toString() {
    return 'TransactionResponse(merchantCode: $merchantCode, reference: $reference, paymentUrl: $paymentUrl, statusCode: $statusCode, statusMessage: $statusMessage, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionResponse &&
            (identical(other.merchantCode, merchantCode) ||
                other.merchantCode == merchantCode) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantCode, reference,
      paymentUrl, statusCode, statusMessage, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionResponseCopyWith<_$_TransactionResponse> get copyWith =>
      __$$_TransactionResponseCopyWithImpl<_$_TransactionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResponseToJson(
      this,
    );
  }
}

abstract class _TransactionResponse implements TransactionResponse {
  const factory _TransactionResponse(
      {final String? merchantCode,
      final String? reference,
      final String? paymentUrl,
      final String? statusCode,
      final String? statusMessage,
      final String? message}) = _$_TransactionResponse;

  factory _TransactionResponse.fromJson(Map<String, dynamic> json) =
      _$_TransactionResponse.fromJson;

  @override
  String? get merchantCode;
  @override
  String? get reference;
  @override
  String? get paymentUrl;
  @override
  String? get statusCode;
  @override
  String? get statusMessage;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionResponseCopyWith<_$_TransactionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
