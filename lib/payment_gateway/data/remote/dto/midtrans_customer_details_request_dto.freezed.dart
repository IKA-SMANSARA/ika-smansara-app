// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_customer_details_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransCustomerDetailsRequestDTO _$MidtransCustomerDetailsRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _MidtransCustomerDetailsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$MidtransCustomerDetailsRequestDTO {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransCustomerDetailsRequestDTOCopyWith<MidtransCustomerDetailsRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransCustomerDetailsRequestDTOCopyWith<$Res> {
  factory $MidtransCustomerDetailsRequestDTOCopyWith(
          MidtransCustomerDetailsRequestDTO value,
          $Res Function(MidtransCustomerDetailsRequestDTO) then) =
      _$MidtransCustomerDetailsRequestDTOCopyWithImpl<$Res,
          MidtransCustomerDetailsRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class _$MidtransCustomerDetailsRequestDTOCopyWithImpl<$Res,
        $Val extends MidtransCustomerDetailsRequestDTO>
    implements $MidtransCustomerDetailsRequestDTOCopyWith<$Res> {
  _$MidtransCustomerDetailsRequestDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$MidtransCustomerDetailsRequestDTOImplCopyWith<$Res>
    implements $MidtransCustomerDetailsRequestDTOCopyWith<$Res> {
  factory _$$MidtransCustomerDetailsRequestDTOImplCopyWith(
          _$MidtransCustomerDetailsRequestDTOImpl value,
          $Res Function(_$MidtransCustomerDetailsRequestDTOImpl) then) =
      __$$MidtransCustomerDetailsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class __$$MidtransCustomerDetailsRequestDTOImplCopyWithImpl<$Res>
    extends _$MidtransCustomerDetailsRequestDTOCopyWithImpl<$Res,
        _$MidtransCustomerDetailsRequestDTOImpl>
    implements _$$MidtransCustomerDetailsRequestDTOImplCopyWith<$Res> {
  __$$MidtransCustomerDetailsRequestDTOImplCopyWithImpl(
      _$MidtransCustomerDetailsRequestDTOImpl _value,
      $Res Function(_$MidtransCustomerDetailsRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$MidtransCustomerDetailsRequestDTOImpl(
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
class _$MidtransCustomerDetailsRequestDTOImpl
    implements _MidtransCustomerDetailsRequestDTO {
  _$MidtransCustomerDetailsRequestDTOImpl(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone});

  factory _$MidtransCustomerDetailsRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MidtransCustomerDetailsRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;

  @override
  String toString() {
    return 'MidtransCustomerDetailsRequestDTO(firstName: $firstName, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransCustomerDetailsRequestDTOImpl &&
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
  _$$MidtransCustomerDetailsRequestDTOImplCopyWith<
          _$MidtransCustomerDetailsRequestDTOImpl>
      get copyWith => __$$MidtransCustomerDetailsRequestDTOImplCopyWithImpl<
          _$MidtransCustomerDetailsRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransCustomerDetailsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _MidtransCustomerDetailsRequestDTO
    implements MidtransCustomerDetailsRequestDTO {
  factory _MidtransCustomerDetailsRequestDTO(
          {@JsonKey(name: 'first_name') final String? firstName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'phone') final String? phone}) =
      _$MidtransCustomerDetailsRequestDTOImpl;

  factory _MidtransCustomerDetailsRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$MidtransCustomerDetailsRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$MidtransCustomerDetailsRequestDTOImplCopyWith<
          _$MidtransCustomerDetailsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
