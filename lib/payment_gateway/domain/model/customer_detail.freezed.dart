// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDetail _$CustomerDetailFromJson(Map<String, dynamic> json) {
  return _CustomerDetail.fromJson(json);
}

/// @nodoc
mixin _$CustomerDetail {
  String? get firstName => throw _privateConstructorUsedError;

  String? get lastName => throw _privateConstructorUsedError;

  String? get email => throw _privateConstructorUsedError;

  String? get phoneNumber => throw _privateConstructorUsedError;

  BillingAddress? get billingAddress => throw _privateConstructorUsedError;

  ShippingAddress? get shippingAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerDetailCopyWith<CustomerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailCopyWith<$Res> {
  factory $CustomerDetailCopyWith(
          CustomerDetail value, $Res Function(CustomerDetail) then) =
      _$CustomerDetailCopyWithImpl<$Res, CustomerDetail>;

  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? phoneNumber,
      BillingAddress? billingAddress,
      ShippingAddress? shippingAddress});

  $BillingAddressCopyWith<$Res>? get billingAddress;

  $ShippingAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$CustomerDetailCopyWithImpl<$Res, $Val extends CustomerDetail>
    implements $CustomerDetailCopyWith<$Res> {
  _$CustomerDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingAddressCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $BillingAddressCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerDetailCopyWith<$Res>
    implements $CustomerDetailCopyWith<$Res> {
  factory _$$_CustomerDetailCopyWith(
          _$_CustomerDetail value, $Res Function(_$_CustomerDetail) then) =
      __$$_CustomerDetailCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? email,
      String? phoneNumber,
      BillingAddress? billingAddress,
      ShippingAddress? shippingAddress});

  @override
  $BillingAddressCopyWith<$Res>? get billingAddress;

  @override
  $ShippingAddressCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$$_CustomerDetailCopyWithImpl<$Res>
    extends _$CustomerDetailCopyWithImpl<$Res, _$_CustomerDetail>
    implements _$$_CustomerDetailCopyWith<$Res> {
  __$$_CustomerDetailCopyWithImpl(
      _$_CustomerDetail _value, $Res Function(_$_CustomerDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? billingAddress = freezed,
    Object? shippingAddress = freezed,
  }) {
    return _then(_$_CustomerDetail(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billingAddress: freezed == billingAddress
          ? _value.billingAddress
          : billingAddress // ignore: cast_nullable_to_non_nullable
              as BillingAddress?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddress?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerDetail implements _CustomerDetail {
  const _$_CustomerDetail(
      {this.firstName,
      this.lastName,
      this.email,
      this.phoneNumber,
      this.billingAddress,
      this.shippingAddress});

  factory _$_CustomerDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDetailFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final BillingAddress? billingAddress;
  @override
  final ShippingAddress? shippingAddress;

  @override
  String toString() {
    return 'CustomerDetail(firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, billingAddress: $billingAddress, shippingAddress: $shippingAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDetail &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.billingAddress, billingAddress) ||
                other.billingAddress == billingAddress) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, email,
      phoneNumber, billingAddress, shippingAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDetailCopyWith<_$_CustomerDetail> get copyWith =>
      __$$_CustomerDetailCopyWithImpl<_$_CustomerDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDetailToJson(
      this,
    );
  }
}

abstract class _CustomerDetail implements CustomerDetail {
  const factory _CustomerDetail(
      {final String? firstName,
      final String? lastName,
      final String? email,
      final String? phoneNumber,
      final BillingAddress? billingAddress,
      final ShippingAddress? shippingAddress}) = _$_CustomerDetail;

  factory _CustomerDetail.fromJson(Map<String, dynamic> json) =
      _$_CustomerDetail.fromJson;

  @override
  String? get firstName;

  @override
  String? get lastName;

  @override
  String? get email;

  @override
  String? get phoneNumber;

  @override
  BillingAddress? get billingAddress;

  @override
  ShippingAddress? get shippingAddress;

  @override
  @JsonKey(ignore: true)
  _$$_CustomerDetailCopyWith<_$_CustomerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
