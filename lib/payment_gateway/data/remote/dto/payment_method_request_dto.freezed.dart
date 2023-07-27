// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodRequestDTO _$PaymentMethodRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodRequestDTO {
  @JsonKey(name: 'merchantCode')
  String? get merchantCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime')
  String? get datetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature')
  String? get signature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodRequestDTOCopyWith<PaymentMethodRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodRequestDTOCopyWith<$Res> {
  factory $PaymentMethodRequestDTOCopyWith(PaymentMethodRequestDTO value,
          $Res Function(PaymentMethodRequestDTO) then) =
      _$PaymentMethodRequestDTOCopyWithImpl<$Res, PaymentMethodRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'merchantCode') String? merchantCode,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'datetime') String? datetime,
      @JsonKey(name: 'signature') String? signature});
}

/// @nodoc
class _$PaymentMethodRequestDTOCopyWithImpl<$Res,
        $Val extends PaymentMethodRequestDTO>
    implements $PaymentMethodRequestDTOCopyWith<$Res> {
  _$PaymentMethodRequestDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentMethodRequestDTOCopyWith<$Res>
    implements $PaymentMethodRequestDTOCopyWith<$Res> {
  factory _$$_PaymentMethodRequestDTOCopyWith(_$_PaymentMethodRequestDTO value,
          $Res Function(_$_PaymentMethodRequestDTO) then) =
      __$$_PaymentMethodRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'merchantCode') String? merchantCode,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'datetime') String? datetime,
      @JsonKey(name: 'signature') String? signature});
}

/// @nodoc
class __$$_PaymentMethodRequestDTOCopyWithImpl<$Res>
    extends _$PaymentMethodRequestDTOCopyWithImpl<$Res,
        _$_PaymentMethodRequestDTO>
    implements _$$_PaymentMethodRequestDTOCopyWith<$Res> {
  __$$_PaymentMethodRequestDTOCopyWithImpl(_$_PaymentMethodRequestDTO _value,
      $Res Function(_$_PaymentMethodRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? amount = freezed,
    Object? datetime = freezed,
    Object? signature = freezed,
  }) {
    return _then(_$_PaymentMethodRequestDTO(
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
class _$_PaymentMethodRequestDTO implements _PaymentMethodRequestDTO {
  const _$_PaymentMethodRequestDTO(
      {@JsonKey(name: 'merchantCode') this.merchantCode,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'datetime') this.datetime,
      @JsonKey(name: 'signature') this.signature});

  factory _$_PaymentMethodRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodRequestDTOFromJson(json);

  @override
  @JsonKey(name: 'merchantCode')
  final String? merchantCode;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'datetime')
  final String? datetime;
  @override
  @JsonKey(name: 'signature')
  final String? signature;

  @override
  String toString() {
    return 'PaymentMethodRequestDTO(merchantCode: $merchantCode, amount: $amount, datetime: $datetime, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodRequestDTO &&
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
  _$$_PaymentMethodRequestDTOCopyWith<_$_PaymentMethodRequestDTO>
      get copyWith =>
          __$$_PaymentMethodRequestDTOCopyWithImpl<_$_PaymentMethodRequestDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodRequestDTOToJson(
      this,
    );
  }
}

abstract class _PaymentMethodRequestDTO implements PaymentMethodRequestDTO {
  const factory _PaymentMethodRequestDTO(
          {@JsonKey(name: 'merchantCode') final String? merchantCode,
          @JsonKey(name: 'amount') final int? amount,
          @JsonKey(name: 'datetime') final String? datetime,
          @JsonKey(name: 'signature') final String? signature}) =
      _$_PaymentMethodRequestDTO;

  factory _PaymentMethodRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodRequestDTO.fromJson;

  @override
  @JsonKey(name: 'merchantCode')
  String? get merchantCode;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'datetime')
  String? get datetime;
  @override
  @JsonKey(name: 'signature')
  String? get signature;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodRequestDTOCopyWith<_$_PaymentMethodRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}
