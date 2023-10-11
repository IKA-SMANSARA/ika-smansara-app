// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_session_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailSessionRequest _$EmailSessionRequestFromJson(Map<String, dynamic> json) {
  return _EmailSessionRequest.fromJson(json);
}

/// @nodoc
mixin _$EmailSessionRequest {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSessionRequestCopyWith<EmailSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSessionRequestCopyWith<$Res> {
  factory $EmailSessionRequestCopyWith(
          EmailSessionRequest value, $Res Function(EmailSessionRequest) then) =
      _$EmailSessionRequestCopyWithImpl<$Res, EmailSessionRequest>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class _$EmailSessionRequestCopyWithImpl<$Res, $Val extends EmailSessionRequest>
    implements $EmailSessionRequestCopyWith<$Res> {
  _$EmailSessionRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_EmailSessionRequestCopyWith<$Res>
    implements $EmailSessionRequestCopyWith<$Res> {
  factory _$$_EmailSessionRequestCopyWith(_$_EmailSessionRequest value,
          $Res Function(_$_EmailSessionRequest) then) =
      __$$_EmailSessionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$_EmailSessionRequestCopyWithImpl<$Res>
    extends _$EmailSessionRequestCopyWithImpl<$Res, _$_EmailSessionRequest>
    implements _$$_EmailSessionRequestCopyWith<$Res> {
  __$$_EmailSessionRequestCopyWithImpl(_$_EmailSessionRequest _value,
      $Res Function(_$_EmailSessionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_EmailSessionRequest(
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
class _$_EmailSessionRequest implements _EmailSessionRequest {
  const _$_EmailSessionRequest({this.email, this.password});

  factory _$_EmailSessionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EmailSessionRequestFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'EmailSessionRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailSessionRequest &&
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
  _$$_EmailSessionRequestCopyWith<_$_EmailSessionRequest> get copyWith =>
      __$$_EmailSessionRequestCopyWithImpl<_$_EmailSessionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailSessionRequestToJson(
      this,
    );
  }
}

abstract class _EmailSessionRequest implements EmailSessionRequest {
  const factory _EmailSessionRequest(
      {final String? email, final String? password}) = _$_EmailSessionRequest;

  factory _EmailSessionRequest.fromJson(Map<String, dynamic> json) =
      _$_EmailSessionRequest.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_EmailSessionRequestCopyWith<_$_EmailSessionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
