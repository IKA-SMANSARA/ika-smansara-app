// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'billing_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillingAddress _$BillingAddressFromJson(Map<String, dynamic> json) {
  return _BillingAddress.fromJson(json);
}

/// @nodoc
mixin _$BillingAddress {
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillingAddressCopyWith<BillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillingAddressCopyWith<$Res> {
  factory $BillingAddressCopyWith(
          BillingAddress value, $Res Function(BillingAddress) then) =
      _$BillingAddressCopyWithImpl<$Res, BillingAddress>;
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? address,
      String? city,
      String? postalCode,
      String? phone,
      String? countryCode});
}

/// @nodoc
class _$BillingAddressCopyWithImpl<$Res, $Val extends BillingAddress>
    implements $BillingAddressCopyWith<$Res> {
  _$BillingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillingAddressCopyWith<$Res>
    implements $BillingAddressCopyWith<$Res> {
  factory _$$_BillingAddressCopyWith(
          _$_BillingAddress value, $Res Function(_$_BillingAddress) then) =
      __$$_BillingAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? firstName,
      String? lastName,
      String? address,
      String? city,
      String? postalCode,
      String? phone,
      String? countryCode});
}

/// @nodoc
class __$$_BillingAddressCopyWithImpl<$Res>
    extends _$BillingAddressCopyWithImpl<$Res, _$_BillingAddress>
    implements _$$_BillingAddressCopyWith<$Res> {
  __$$_BillingAddressCopyWithImpl(
      _$_BillingAddress _value, $Res Function(_$_BillingAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? phone = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_$_BillingAddress(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillingAddress implements _BillingAddress {
  const _$_BillingAddress(
      {this.firstName,
      this.lastName,
      this.address,
      this.city,
      this.postalCode,
      this.phone,
      this.countryCode});

  factory _$_BillingAddress.fromJson(Map<String, dynamic> json) =>
      _$$_BillingAddressFromJson(json);

  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? postalCode;
  @override
  final String? phone;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'BillingAddress(firstName: $firstName, lastName: $lastName, address: $address, city: $city, postalCode: $postalCode, phone: $phone, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillingAddress &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, address,
      city, postalCode, phone, countryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillingAddressCopyWith<_$_BillingAddress> get copyWith =>
      __$$_BillingAddressCopyWithImpl<_$_BillingAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillingAddressToJson(
      this,
    );
  }
}

abstract class _BillingAddress implements BillingAddress {
  const factory _BillingAddress(
      {final String? firstName,
      final String? lastName,
      final String? address,
      final String? city,
      final String? postalCode,
      final String? phone,
      final String? countryCode}) = _$_BillingAddress;

  factory _BillingAddress.fromJson(Map<String, dynamic> json) =
      _$_BillingAddress.fromJson;

  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get postalCode;
  @override
  String? get phone;
  @override
  String? get countryCode;
  @override
  @JsonKey(ignore: true)
  _$$_BillingAddressCopyWith<_$_BillingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
