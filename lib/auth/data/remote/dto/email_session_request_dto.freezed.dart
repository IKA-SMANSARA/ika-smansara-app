// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_session_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailSessionRequestDTO _$EmailSessionRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _EmailSessionRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$EmailSessionRequestDTO {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSessionRequestDTOCopyWith<EmailSessionRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSessionRequestDTOCopyWith<$Res> {
  factory $EmailSessionRequestDTOCopyWith(EmailSessionRequestDTO value,
          $Res Function(EmailSessionRequestDTO) then) =
      _$EmailSessionRequestDTOCopyWithImpl<$Res, EmailSessionRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$EmailSessionRequestDTOCopyWithImpl<$Res,
        $Val extends EmailSessionRequestDTO>
    implements $EmailSessionRequestDTOCopyWith<$Res> {
  _$EmailSessionRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailSessionRequestDTOImplCopyWith<$Res>
    implements $EmailSessionRequestDTOCopyWith<$Res> {
  factory _$$EmailSessionRequestDTOImplCopyWith(
          _$EmailSessionRequestDTOImpl value,
          $Res Function(_$EmailSessionRequestDTOImpl) then) =
      __$$EmailSessionRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$EmailSessionRequestDTOImplCopyWithImpl<$Res>
    extends _$EmailSessionRequestDTOCopyWithImpl<$Res,
        _$EmailSessionRequestDTOImpl>
    implements _$$EmailSessionRequestDTOImplCopyWith<$Res> {
  __$$EmailSessionRequestDTOImplCopyWithImpl(
      _$EmailSessionRequestDTOImpl _value,
      $Res Function(_$EmailSessionRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$EmailSessionRequestDTOImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmailSessionRequestDTOImpl implements _EmailSessionRequestDTO {
  const _$EmailSessionRequestDTOImpl(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password});

  factory _$EmailSessionRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailSessionRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'EmailSessionRequestDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailSessionRequestDTOImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailSessionRequestDTOImplCopyWith<_$EmailSessionRequestDTOImpl>
      get copyWith => __$$EmailSessionRequestDTOImplCopyWithImpl<
          _$EmailSessionRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailSessionRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _EmailSessionRequestDTO implements EmailSessionRequestDTO {
  const factory _EmailSessionRequestDTO(
          {@JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'password') final String? password}) =
      _$EmailSessionRequestDTOImpl;

  factory _EmailSessionRequestDTO.fromJson(Map<String, dynamic> json) =
      _$EmailSessionRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$EmailSessionRequestDTOImplCopyWith<_$EmailSessionRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
