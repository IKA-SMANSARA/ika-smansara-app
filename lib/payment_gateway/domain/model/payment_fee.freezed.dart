// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_fee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentFee _$PaymentFeeFromJson(Map<String, dynamic> json) {
  return _PaymentFee.fromJson(json);
}

/// @nodoc
mixin _$PaymentFee {
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
  $PaymentFeeCopyWith<PaymentFee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFeeCopyWith<$Res> {
  factory $PaymentFeeCopyWith(
          PaymentFee value, $Res Function(PaymentFee) then) =
      _$PaymentFeeCopyWithImpl<$Res, PaymentFee>;

  @useResult
  $Res call(
      {@JsonKey(name: 'paymentMethod') String? paymentMethod,
      @JsonKey(name: 'paymentName') String? paymentName,
      @JsonKey(name: 'paymentImage') String? paymentImage,
      @JsonKey(name: 'totalFee') String? totalFee});
}

/// @nodoc
class _$PaymentFeeCopyWithImpl<$Res, $Val extends PaymentFee>
    implements $PaymentFeeCopyWith<$Res> {
  _$PaymentFeeCopyWithImpl(this._value, this._then);

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
abstract class _$$_PaymentFeeCopyWith<$Res>
    implements $PaymentFeeCopyWith<$Res> {
  factory _$$_PaymentFeeCopyWith(
          _$_PaymentFee value, $Res Function(_$_PaymentFee) then) =
      __$$_PaymentFeeCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'paymentMethod') String? paymentMethod,
      @JsonKey(name: 'paymentName') String? paymentName,
      @JsonKey(name: 'paymentImage') String? paymentImage,
      @JsonKey(name: 'totalFee') String? totalFee});
}

/// @nodoc
class __$$_PaymentFeeCopyWithImpl<$Res>
    extends _$PaymentFeeCopyWithImpl<$Res, _$_PaymentFee>
    implements _$$_PaymentFeeCopyWith<$Res> {
  __$$_PaymentFeeCopyWithImpl(
      _$_PaymentFee _value, $Res Function(_$_PaymentFee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? paymentName = freezed,
    Object? paymentImage = freezed,
    Object? totalFee = freezed,
  }) {
    return _then(_$_PaymentFee(
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
class _$_PaymentFee implements _PaymentFee {
  const _$_PaymentFee(
      {@JsonKey(name: 'paymentMethod') this.paymentMethod,
      @JsonKey(name: 'paymentName') this.paymentName,
      @JsonKey(name: 'paymentImage') this.paymentImage,
      @JsonKey(name: 'totalFee') this.totalFee});

  factory _$_PaymentFee.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentFeeFromJson(json);

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
    return 'PaymentFee(paymentMethod: $paymentMethod, paymentName: $paymentName, paymentImage: $paymentImage, totalFee: $totalFee)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentFee &&
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
  _$$_PaymentFeeCopyWith<_$_PaymentFee> get copyWith =>
      __$$_PaymentFeeCopyWithImpl<_$_PaymentFee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentFeeToJson(
      this,
    );
  }
}

abstract class _PaymentFee implements PaymentFee {
  const factory _PaymentFee(
      {@JsonKey(name: 'paymentMethod') final String? paymentMethod,
      @JsonKey(name: 'paymentName') final String? paymentName,
      @JsonKey(name: 'paymentImage') final String? paymentImage,
      @JsonKey(name: 'totalFee') final String? totalFee}) = _$_PaymentFee;

  factory _PaymentFee.fromJson(Map<String, dynamic> json) =
      _$_PaymentFee.fromJson;

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
  _$$_PaymentFeeCopyWith<_$_PaymentFee> get copyWith =>
      throw _privateConstructorUsedError;
}
