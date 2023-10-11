// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDetailDTO _$CustomerDetailDTOFromJson(Map<String, dynamic> json) {
  return _CustomerDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerDetailDTO {
  @JsonKey(name: 'firstName')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastName')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'billingAddress')
  BillingAddressDTO? get billingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'shippingAddress')
  ShippingAddressDTO? get shippingAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDetailDTOCopyWith<CustomerDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDetailDTOCopyWith<$Res> {
  factory $CustomerDetailDTOCopyWith(
          CustomerDetailDTO value, $Res Function(CustomerDetailDTO) then) =
      _$CustomerDetailDTOCopyWithImpl<$Res, CustomerDetailDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'billingAddress') BillingAddressDTO? billingAddress,
      @JsonKey(name: 'shippingAddress') ShippingAddressDTO? shippingAddress});

  $BillingAddressDTOCopyWith<$Res>? get billingAddress;
  $ShippingAddressDTOCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class _$CustomerDetailDTOCopyWithImpl<$Res, $Val extends CustomerDetailDTO>
    implements $CustomerDetailDTOCopyWith<$Res> {
  _$CustomerDetailDTOCopyWithImpl(this._value, this._then);

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
              as BillingAddressDTO?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddressDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BillingAddressDTOCopyWith<$Res>? get billingAddress {
    if (_value.billingAddress == null) {
      return null;
    }

    return $BillingAddressDTOCopyWith<$Res>(_value.billingAddress!, (value) {
      return _then(_value.copyWith(billingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShippingAddressDTOCopyWith<$Res>? get shippingAddress {
    if (_value.shippingAddress == null) {
      return null;
    }

    return $ShippingAddressDTOCopyWith<$Res>(_value.shippingAddress!, (value) {
      return _then(_value.copyWith(shippingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CustomerDetailDTOCopyWith<$Res>
    implements $CustomerDetailDTOCopyWith<$Res> {
  factory _$$_CustomerDetailDTOCopyWith(_$_CustomerDetailDTO value,
          $Res Function(_$_CustomerDetailDTO) then) =
      __$$_CustomerDetailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'firstName') String? firstName,
      @JsonKey(name: 'lastName') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'billingAddress') BillingAddressDTO? billingAddress,
      @JsonKey(name: 'shippingAddress') ShippingAddressDTO? shippingAddress});

  @override
  $BillingAddressDTOCopyWith<$Res>? get billingAddress;
  @override
  $ShippingAddressDTOCopyWith<$Res>? get shippingAddress;
}

/// @nodoc
class __$$_CustomerDetailDTOCopyWithImpl<$Res>
    extends _$CustomerDetailDTOCopyWithImpl<$Res, _$_CustomerDetailDTO>
    implements _$$_CustomerDetailDTOCopyWith<$Res> {
  __$$_CustomerDetailDTOCopyWithImpl(
      _$_CustomerDetailDTO _value, $Res Function(_$_CustomerDetailDTO) _then)
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
    return _then(_$_CustomerDetailDTO(
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
              as BillingAddressDTO?,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as ShippingAddressDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerDetailDTO implements _CustomerDetailDTO {
  const _$_CustomerDetailDTO(
      {@JsonKey(name: 'firstName') this.firstName,
      @JsonKey(name: 'lastName') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phoneNumber') this.phoneNumber,
      @JsonKey(name: 'billingAddress') this.billingAddress,
      @JsonKey(name: 'shippingAddress') this.shippingAddress});

  factory _$_CustomerDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDetailDTOFromJson(json);

  @override
  @JsonKey(name: 'firstName')
  final String? firstName;
  @override
  @JsonKey(name: 'lastName')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'billingAddress')
  final BillingAddressDTO? billingAddress;
  @override
  @JsonKey(name: 'shippingAddress')
  final ShippingAddressDTO? shippingAddress;

  @override
  String toString() {
    return 'CustomerDetailDTO(firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, billingAddress: $billingAddress, shippingAddress: $shippingAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDetailDTO &&
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
  _$$_CustomerDetailDTOCopyWith<_$_CustomerDetailDTO> get copyWith =>
      __$$_CustomerDetailDTOCopyWithImpl<_$_CustomerDetailDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDetailDTOToJson(
      this,
    );
  }
}

abstract class _CustomerDetailDTO implements CustomerDetailDTO {
  const factory _CustomerDetailDTO(
      {@JsonKey(name: 'firstName') final String? firstName,
      @JsonKey(name: 'lastName') final String? lastName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phoneNumber') final String? phoneNumber,
      @JsonKey(name: 'billingAddress') final BillingAddressDTO? billingAddress,
      @JsonKey(name: 'shippingAddress')
      final ShippingAddressDTO? shippingAddress}) = _$_CustomerDetailDTO;

  factory _CustomerDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerDetailDTO.fromJson;

  @override
  @JsonKey(name: 'firstName')
  String? get firstName;
  @override
  @JsonKey(name: 'lastName')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'billingAddress')
  BillingAddressDTO? get billingAddress;
  @override
  @JsonKey(name: 'shippingAddress')
  ShippingAddressDTO? get shippingAddress;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDetailDTOCopyWith<_$_CustomerDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
