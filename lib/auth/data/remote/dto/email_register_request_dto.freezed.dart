// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_register_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailRegisterRequestDTO _$EmailRegisterRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _EmailRegisterRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$EmailRegisterRequestDTO {
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailRegisterRequestDTOCopyWith<EmailRegisterRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailRegisterRequestDTOCopyWith<$Res> {
  factory $EmailRegisterRequestDTOCopyWith(EmailRegisterRequestDTO value,
          $Res Function(EmailRegisterRequestDTO) then) =
      _$EmailRegisterRequestDTOCopyWithImpl<$Res, EmailRegisterRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$EmailRegisterRequestDTOCopyWithImpl<$Res,
        $Val extends EmailRegisterRequestDTO>
    implements $EmailRegisterRequestDTOCopyWith<$Res> {
  _$EmailRegisterRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailRegisterRequestDTOImplCopyWith<$Res>
    implements $EmailRegisterRequestDTOCopyWith<$Res> {
  factory _$$EmailRegisterRequestDTOImplCopyWith(
          _$EmailRegisterRequestDTOImpl value,
          $Res Function(_$EmailRegisterRequestDTOImpl) then) =
      __$$EmailRegisterRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String? userId,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$EmailRegisterRequestDTOImplCopyWithImpl<$Res>
    extends _$EmailRegisterRequestDTOCopyWithImpl<$Res,
        _$EmailRegisterRequestDTOImpl>
    implements _$$EmailRegisterRequestDTOImplCopyWith<$Res> {
  __$$EmailRegisterRequestDTOImplCopyWithImpl(
      _$EmailRegisterRequestDTOImpl _value,
      $Res Function(_$EmailRegisterRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_$EmailRegisterRequestDTOImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailRegisterRequestDTOImpl implements _EmailRegisterRequestDTO {
  const _$EmailRegisterRequestDTOImpl(
      {@JsonKey(name: 'userId') this.userId,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'name') this.name});

  factory _$EmailRegisterRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailRegisterRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String? userId;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'EmailRegisterRequestDTO(userId: $userId, email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailRegisterRequestDTOImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email, password, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailRegisterRequestDTOImplCopyWith<_$EmailRegisterRequestDTOImpl>
      get copyWith => __$$EmailRegisterRequestDTOImplCopyWithImpl<
          _$EmailRegisterRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailRegisterRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _EmailRegisterRequestDTO implements EmailRegisterRequestDTO {
  const factory _EmailRegisterRequestDTO(
          {@JsonKey(name: 'userId') final String? userId,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'password') final String? password,
          @JsonKey(name: 'name') final String? name}) =
      _$EmailRegisterRequestDTOImpl;

  factory _EmailRegisterRequestDTO.fromJson(Map<String, dynamic> json) =
      _$EmailRegisterRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$EmailRegisterRequestDTOImplCopyWith<_$EmailRegisterRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
