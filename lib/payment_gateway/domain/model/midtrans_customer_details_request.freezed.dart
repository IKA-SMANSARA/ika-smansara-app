// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_customer_details_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransCustomerDetailsRequest _$MidtransCustomerDetailsRequestFromJson(
    Map<String, dynamic> json) {
  return _MidtransCustomerDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$MidtransCustomerDetailsRequest {
  String? get firstName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransCustomerDetailsRequestCopyWith<MidtransCustomerDetailsRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransCustomerDetailsRequestCopyWith<$Res> {
  factory $MidtransCustomerDetailsRequestCopyWith(
          MidtransCustomerDetailsRequest value,
          $Res Function(MidtransCustomerDetailsRequest) then) =
      _$MidtransCustomerDetailsRequestCopyWithImpl<$Res,
          MidtransCustomerDetailsRequest>;
  @useResult
  $Res call({String? firstName, String? email, String? phone});
}

/// @nodoc
class _$MidtransCustomerDetailsRequestCopyWithImpl<$Res,
        $Val extends MidtransCustomerDetailsRequest>
    implements $MidtransCustomerDetailsRequestCopyWith<$Res> {
  _$MidtransCustomerDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MidtransCustomerDetailsRequestImplCopyWith<$Res>
    implements $MidtransCustomerDetailsRequestCopyWith<$Res> {
  factory _$$MidtransCustomerDetailsRequestImplCopyWith(
          _$MidtransCustomerDetailsRequestImpl value,
          $Res Function(_$MidtransCustomerDetailsRequestImpl) then) =
      __$$MidtransCustomerDetailsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? firstName, String? email, String? phone});
}

/// @nodoc
class __$$MidtransCustomerDetailsRequestImplCopyWithImpl<$Res>
    extends _$MidtransCustomerDetailsRequestCopyWithImpl<$Res,
        _$MidtransCustomerDetailsRequestImpl>
    implements _$$MidtransCustomerDetailsRequestImplCopyWith<$Res> {
  __$$MidtransCustomerDetailsRequestImplCopyWithImpl(
      _$MidtransCustomerDetailsRequestImpl _value,
      $Res Function(_$MidtransCustomerDetailsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$MidtransCustomerDetailsRequestImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MidtransCustomerDetailsRequestImpl
    implements _MidtransCustomerDetailsRequest {
  _$MidtransCustomerDetailsRequestImpl(
      {this.firstName, this.email, this.phone});

  factory _$MidtransCustomerDetailsRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MidtransCustomerDetailsRequestImplFromJson(json);

  @override
  final String? firstName;
  @override
  final String? email;
  @override
  final String? phone;

  @override
  String toString() {
    return 'MidtransCustomerDetailsRequest(firstName: $firstName, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransCustomerDetailsRequestImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, email, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MidtransCustomerDetailsRequestImplCopyWith<
          _$MidtransCustomerDetailsRequestImpl>
      get copyWith => __$$MidtransCustomerDetailsRequestImplCopyWithImpl<
          _$MidtransCustomerDetailsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransCustomerDetailsRequestImplToJson(
      this,
    );
  }
}

abstract class _MidtransCustomerDetailsRequest
    implements MidtransCustomerDetailsRequest {
  factory _MidtransCustomerDetailsRequest(
      {final String? firstName,
      final String? email,
      final String? phone}) = _$MidtransCustomerDetailsRequestImpl;

  factory _MidtransCustomerDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$MidtransCustomerDetailsRequestImpl.fromJson;

  @override
  String? get firstName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$MidtransCustomerDetailsRequestImplCopyWith<
          _$MidtransCustomerDetailsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
