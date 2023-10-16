// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_register_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailRegisterRequest _$EmailRegisterRequestFromJson(Map<String, dynamic> json) {
  return _EmailRegisterRequest.fromJson(json);
}

/// @nodoc
mixin _$EmailRegisterRequest {
  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailRegisterRequestCopyWith<EmailRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailRegisterRequestCopyWith<$Res> {
  factory $EmailRegisterRequestCopyWith(EmailRegisterRequest value,
          $Res Function(EmailRegisterRequest) then) =
      _$EmailRegisterRequestCopyWithImpl<$Res, EmailRegisterRequest>;
  @useResult
  $Res call({String? userId, String? email, String? password, String? name});
}

/// @nodoc
class _$EmailRegisterRequestCopyWithImpl<$Res,
        $Val extends EmailRegisterRequest>
    implements $EmailRegisterRequestCopyWith<$Res> {
  _$EmailRegisterRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_EmailRegisterRequestCopyWith<$Res>
    implements $EmailRegisterRequestCopyWith<$Res> {
  factory _$$_EmailRegisterRequestCopyWith(_$_EmailRegisterRequest value,
          $Res Function(_$_EmailRegisterRequest) then) =
      __$$_EmailRegisterRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? email, String? password, String? name});
}

/// @nodoc
class __$$_EmailRegisterRequestCopyWithImpl<$Res>
    extends _$EmailRegisterRequestCopyWithImpl<$Res, _$_EmailRegisterRequest>
    implements _$$_EmailRegisterRequestCopyWith<$Res> {
  __$$_EmailRegisterRequestCopyWithImpl(_$_EmailRegisterRequest _value,
      $Res Function(_$_EmailRegisterRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_EmailRegisterRequest(
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
class _$_EmailRegisterRequest implements _EmailRegisterRequest {
  const _$_EmailRegisterRequest(
      {this.userId, this.email, this.password, this.name});

  factory _$_EmailRegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EmailRegisterRequestFromJson(json);

  @override
  final String? userId;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? name;

  @override
  String toString() {
    return 'EmailRegisterRequest(userId: $userId, email: $email, password: $password, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailRegisterRequest &&
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
  _$$_EmailRegisterRequestCopyWith<_$_EmailRegisterRequest> get copyWith =>
      __$$_EmailRegisterRequestCopyWithImpl<_$_EmailRegisterRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailRegisterRequestToJson(
      this,
    );
  }
}

abstract class _EmailRegisterRequest implements EmailRegisterRequest {
  const factory _EmailRegisterRequest(
      {final String? userId,
      final String? email,
      final String? password,
      final String? name}) = _$_EmailRegisterRequest;

  factory _EmailRegisterRequest.fromJson(Map<String, dynamic> json) =
      _$_EmailRegisterRequest.fromJson;

  @override
  String? get userId;
  @override
  String? get email;
  @override
  String? get password;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_EmailRegisterRequestCopyWith<_$_EmailRegisterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
