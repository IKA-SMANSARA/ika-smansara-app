// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentMethodResponseDTO _$PaymentMethodResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodResponseDTO {
  @JsonKey(name: 'paymentFee')
  List<PaymentFeeDTO?>? get paymentFee => throw _privateConstructorUsedError;

  @JsonKey(name: 'responseCode')
  String? get responseCode => throw _privateConstructorUsedError;

  @JsonKey(name: 'responseMessage')
  String? get responseMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodResponseDTOCopyWith<PaymentMethodResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodResponseDTOCopyWith<$Res> {
  factory $PaymentMethodResponseDTOCopyWith(PaymentMethodResponseDTO value,
          $Res Function(PaymentMethodResponseDTO) then) =
      _$PaymentMethodResponseDTOCopyWithImpl<$Res, PaymentMethodResponseDTO>;

  @useResult
  $Res call(
      {@JsonKey(name: 'paymentFee') List<PaymentFeeDTO?>? paymentFee,
      @JsonKey(name: 'responseCode') String? responseCode,
      @JsonKey(name: 'responseMessage') String? responseMessage});
}

/// @nodoc
class _$PaymentMethodResponseDTOCopyWithImpl<$Res,
        $Val extends PaymentMethodResponseDTO>
    implements $PaymentMethodResponseDTOCopyWith<$Res> {
  _$PaymentMethodResponseDTOCopyWithImpl(this._value, this._then);

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
              as List<PaymentFeeDTO?>?,
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
abstract class _$$_PaymentMethodResponseDTOCopyWith<$Res>
    implements $PaymentMethodResponseDTOCopyWith<$Res> {
  factory _$$_PaymentMethodResponseDTOCopyWith(
          _$_PaymentMethodResponseDTO value,
          $Res Function(_$_PaymentMethodResponseDTO) then) =
      __$$_PaymentMethodResponseDTOCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentFee') List<PaymentFeeDTO?>? paymentFee,
      @JsonKey(name: 'responseCode') String? responseCode,
      @JsonKey(name: 'responseMessage') String? responseMessage});
}

/// @nodoc
class __$$_PaymentMethodResponseDTOCopyWithImpl<$Res>
    extends _$PaymentMethodResponseDTOCopyWithImpl<$Res,
        _$_PaymentMethodResponseDTO>
    implements _$$_PaymentMethodResponseDTOCopyWith<$Res> {
  __$$_PaymentMethodResponseDTOCopyWithImpl(_$_PaymentMethodResponseDTO _value,
      $Res Function(_$_PaymentMethodResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentFee = freezed,
    Object? responseCode = freezed,
    Object? responseMessage = freezed,
  }) {
    return _then(_$_PaymentMethodResponseDTO(
      paymentFee: freezed == paymentFee
          ? _value._paymentFee
          : paymentFee // ignore: cast_nullable_to_non_nullable
              as List<PaymentFeeDTO?>?,
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
class _$_PaymentMethodResponseDTO implements _PaymentMethodResponseDTO {
  const _$_PaymentMethodResponseDTO(
      {@JsonKey(name: 'paymentFee') final List<PaymentFeeDTO?>? paymentFee,
      @JsonKey(name: 'responseCode') this.responseCode,
      @JsonKey(name: 'responseMessage') this.responseMessage})
      : _paymentFee = paymentFee;

  factory _$_PaymentMethodResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentMethodResponseDTOFromJson(json);

  final List<PaymentFeeDTO?>? _paymentFee;

  @override
  @JsonKey(name: 'paymentFee')
  List<PaymentFeeDTO?>? get paymentFee {
    final value = _paymentFee;
    if (value == null) return null;
    if (_paymentFee is EqualUnmodifiableListView) return _paymentFee;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'responseCode')
  final String? responseCode;
  @override
  @JsonKey(name: 'responseMessage')
  final String? responseMessage;

  @override
  String toString() {
    return 'PaymentMethodResponseDTO(paymentFee: $paymentFee, responseCode: $responseCode, responseMessage: $responseMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodResponseDTO &&
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
  _$$_PaymentMethodResponseDTOCopyWith<_$_PaymentMethodResponseDTO>
      get copyWith => __$$_PaymentMethodResponseDTOCopyWithImpl<
          _$_PaymentMethodResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentMethodResponseDTOToJson(
      this,
    );
  }
}

abstract class _PaymentMethodResponseDTO implements PaymentMethodResponseDTO {
  const factory _PaymentMethodResponseDTO(
          {@JsonKey(name: 'paymentFee') final List<PaymentFeeDTO?>? paymentFee,
          @JsonKey(name: 'responseCode') final String? responseCode,
          @JsonKey(name: 'responseMessage') final String? responseMessage}) =
      _$_PaymentMethodResponseDTO;

  factory _PaymentMethodResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentMethodResponseDTO.fromJson;

  @override
  @JsonKey(name: 'paymentFee')
  List<PaymentFeeDTO?>? get paymentFee;

  @override
  @JsonKey(name: 'responseCode')
  String? get responseCode;

  @override
  @JsonKey(name: 'responseMessage')
  String? get responseMessage;

  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodResponseDTOCopyWith<_$_PaymentMethodResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
