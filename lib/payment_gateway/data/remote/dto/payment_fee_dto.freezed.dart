// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_fee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentFeeDTO _$PaymentFeeDTOFromJson(Map<String, dynamic> json) {
  return _PaymentFeeDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentFeeDTO {
  @JsonKey(name: 'paymentMethod')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentName')
  String? get paymentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentImage')
  String? get paymentImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalFee')
  String? get totalFee => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentFeeDTOCopyWith<PaymentFeeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFeeDTOCopyWith<$Res> {
  factory $PaymentFeeDTOCopyWith(
          PaymentFeeDTO value, $Res Function(PaymentFeeDTO) then) =
      _$PaymentFeeDTOCopyWithImpl<$Res, PaymentFeeDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentMethod') String? paymentMethod,
      @JsonKey(name: 'paymentName') String? paymentName,
      @JsonKey(name: 'paymentImage') String? paymentImage,
      @JsonKey(name: 'totalFee') String? totalFee});
}

/// @nodoc
class _$PaymentFeeDTOCopyWithImpl<$Res, $Val extends PaymentFeeDTO>
    implements $PaymentFeeDTOCopyWith<$Res> {
  _$PaymentFeeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? paymentName = freezed,
    Object? paymentImage = freezed,
    Object? totalFee = freezed,
  }) {
    return _then(_value.copyWith(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentName: freezed == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentImage: freezed == paymentImage
          ? _value.paymentImage
          : paymentImage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentFeeDTOCopyWith<$Res>
    implements $PaymentFeeDTOCopyWith<$Res> {
  factory _$$_PaymentFeeDTOCopyWith(
          _$_PaymentFeeDTO value, $Res Function(_$_PaymentFeeDTO) then) =
      __$$_PaymentFeeDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentMethod') String? paymentMethod,
      @JsonKey(name: 'paymentName') String? paymentName,
      @JsonKey(name: 'paymentImage') String? paymentImage,
      @JsonKey(name: 'totalFee') String? totalFee});
}

/// @nodoc
class __$$_PaymentFeeDTOCopyWithImpl<$Res>
    extends _$PaymentFeeDTOCopyWithImpl<$Res, _$_PaymentFeeDTO>
    implements _$$_PaymentFeeDTOCopyWith<$Res> {
  __$$_PaymentFeeDTOCopyWithImpl(
      _$_PaymentFeeDTO _value, $Res Function(_$_PaymentFeeDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? paymentName = freezed,
    Object? paymentImage = freezed,
    Object? totalFee = freezed,
  }) {
    return _then(_$_PaymentFeeDTO(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentName: freezed == paymentName
          ? _value.paymentName
          : paymentName // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentImage: freezed == paymentImage
          ? _value.paymentImage
          : paymentImage // ignore: cast_nullable_to_non_nullable
              as String?,
      totalFee: freezed == totalFee
          ? _value.totalFee
          : totalFee // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentFeeDTO implements _PaymentFeeDTO {
  const _$_PaymentFeeDTO(
      {@JsonKey(name: 'paymentMethod') this.paymentMethod,
      @JsonKey(name: 'paymentName') this.paymentName,
      @JsonKey(name: 'paymentImage') this.paymentImage,
      @JsonKey(name: 'totalFee') this.totalFee});

  factory _$_PaymentFeeDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFeeDTOFromJson(json);

  @override
  @JsonKey(name: 'paymentMethod')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'paymentName')
  final String? paymentName;
  @override
  @JsonKey(name: 'paymentImage')
  final String? paymentImage;
  @override
  @JsonKey(name: 'totalFee')
  final String? totalFee;

  @override
  String toString() {
    return 'PaymentFeeDTO(paymentMethod: $paymentMethod, paymentName: $paymentName, paymentImage: $paymentImage, totalFee: $totalFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentFeeDTO &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentName, paymentName) ||
                other.paymentName == paymentName) &&
            (identical(other.paymentImage, paymentImage) ||
                other.paymentImage == paymentImage) &&
            (identical(other.totalFee, totalFee) ||
                other.totalFee == totalFee));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, paymentMethod, paymentName, paymentImage, totalFee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentFeeDTOCopyWith<_$_PaymentFeeDTO> get copyWith =>
      __$$_PaymentFeeDTOCopyWithImpl<_$_PaymentFeeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentFeeDTOToJson(
      this,
    );
  }
}

abstract class _PaymentFeeDTO implements PaymentFeeDTO {
  const factory _PaymentFeeDTO(
      {@JsonKey(name: 'paymentMethod') final String? paymentMethod,
      @JsonKey(name: 'paymentName') final String? paymentName,
      @JsonKey(name: 'paymentImage') final String? paymentImage,
      @JsonKey(name: 'totalFee') final String? totalFee}) = _$_PaymentFeeDTO;

  factory _PaymentFeeDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentFeeDTO.fromJson;

  @override
  @JsonKey(name: 'paymentMethod')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'paymentName')
  String? get paymentName;
  @override
  @JsonKey(name: 'paymentImage')
  String? get paymentImage;
  @override
  @JsonKey(name: 'totalFee')
  String? get totalFee;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentFeeDTOCopyWith<_$_PaymentFeeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
