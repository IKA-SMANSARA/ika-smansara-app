// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionResponseDTO _$TransactionResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _TransactionResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionResponseDTO {
  @JsonKey(name: 'merchantCode')
  String? get merchantCode => throw _privateConstructorUsedError;

  @JsonKey(name: 'reference')
  String? get reference => throw _privateConstructorUsedError;

  @JsonKey(name: 'paymentUrl')
  String? get paymentUrl => throw _privateConstructorUsedError;

  @JsonKey(name: 'statusCode')
  String? get statusCode => throw _privateConstructorUsedError;

  @JsonKey(name: 'statusMessage')
  String? get statusMessage => throw _privateConstructorUsedError;

  @JsonKey(name: 'Message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionResponseDTOCopyWith<TransactionResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionResponseDTOCopyWith<$Res> {
  factory $TransactionResponseDTOCopyWith(TransactionResponseDTO value,
          $Res Function(TransactionResponseDTO) then) =
      _$TransactionResponseDTOCopyWithImpl<$Res, TransactionResponseDTO>;

  @useResult
  $Res call(
      {@JsonKey(name: 'merchantCode') String? merchantCode,
      @JsonKey(name: 'reference') String? reference,
      @JsonKey(name: 'paymentUrl') String? paymentUrl,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'statusMessage') String? statusMessage,
      @JsonKey(name: 'Message') String? message});
}

/// @nodoc
class _$TransactionResponseDTOCopyWithImpl<$Res,
        $Val extends TransactionResponseDTO>
    implements $TransactionResponseDTOCopyWith<$Res> {
  _$TransactionResponseDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_TransactionResponseDTOCopyWith<$Res>
    implements $TransactionResponseDTOCopyWith<$Res> {
  factory _$$_TransactionResponseDTOCopyWith(_$_TransactionResponseDTO value,
          $Res Function(_$_TransactionResponseDTO) then) =
      __$$_TransactionResponseDTOCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'merchantCode') String? merchantCode,
      @JsonKey(name: 'reference') String? reference,
      @JsonKey(name: 'paymentUrl') String? paymentUrl,
      @JsonKey(name: 'statusCode') String? statusCode,
      @JsonKey(name: 'statusMessage') String? statusMessage,
      @JsonKey(name: 'Message') String? message});
}

/// @nodoc
class __$$_TransactionResponseDTOCopyWithImpl<$Res>
    extends _$TransactionResponseDTOCopyWithImpl<$Res,
        _$_TransactionResponseDTO>
    implements _$$_TransactionResponseDTOCopyWith<$Res> {
  __$$_TransactionResponseDTOCopyWithImpl(_$_TransactionResponseDTO _value,
      $Res Function(_$_TransactionResponseDTO) _then)
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
    return _then(_$_TransactionResponseDTO(
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
class _$_TransactionResponseDTO implements _TransactionResponseDTO {
  const _$_TransactionResponseDTO(
      {@JsonKey(name: 'merchantCode') this.merchantCode,
      @JsonKey(name: 'reference') this.reference,
      @JsonKey(name: 'paymentUrl') this.paymentUrl,
      @JsonKey(name: 'statusCode') this.statusCode,
      @JsonKey(name: 'statusMessage') this.statusMessage,
      @JsonKey(name: 'Message') this.message});

  factory _$_TransactionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'merchantCode')
  final String? merchantCode;
  @override
  @JsonKey(name: 'reference')
  final String? reference;
  @override
  @JsonKey(name: 'paymentUrl')
  final String? paymentUrl;
  @override
  @JsonKey(name: 'statusCode')
  final String? statusCode;
  @override
  @JsonKey(name: 'statusMessage')
  final String? statusMessage;
  @override
  @JsonKey(name: 'Message')
  final String? message;

  @override
  String toString() {
    return 'TransactionResponseDTO(merchantCode: $merchantCode, reference: $reference, paymentUrl: $paymentUrl, statusCode: $statusCode, statusMessage: $statusMessage, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionResponseDTO &&
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
  _$$_TransactionResponseDTOCopyWith<_$_TransactionResponseDTO> get copyWith =>
      __$$_TransactionResponseDTOCopyWithImpl<_$_TransactionResponseDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionResponseDTOToJson(
      this,
    );
  }
}

abstract class _TransactionResponseDTO implements TransactionResponseDTO {
  const factory _TransactionResponseDTO(
          {@JsonKey(name: 'merchantCode') final String? merchantCode,
          @JsonKey(name: 'reference') final String? reference,
          @JsonKey(name: 'paymentUrl') final String? paymentUrl,
          @JsonKey(name: 'statusCode') final String? statusCode,
          @JsonKey(name: 'statusMessage') final String? statusMessage,
          @JsonKey(name: 'Message') final String? message}) =
      _$_TransactionResponseDTO;

  factory _TransactionResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_TransactionResponseDTO.fromJson;

  @override
  @JsonKey(name: 'merchantCode')
  String? get merchantCode;

  @override
  @JsonKey(name: 'reference')
  String? get reference;

  @override
  @JsonKey(name: 'paymentUrl')
  String? get paymentUrl;

  @override
  @JsonKey(name: 'statusCode')
  String? get statusCode;

  @override
  @JsonKey(name: 'statusMessage')
  String? get statusMessage;

  @override
  @JsonKey(name: 'Message')
  String? get message;

  @override
  @JsonKey(ignore: true)
  _$$_TransactionResponseDTOCopyWith<_$_TransactionResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
