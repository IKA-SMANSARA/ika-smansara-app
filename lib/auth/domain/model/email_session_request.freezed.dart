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
abstract class _$$EmailSessionRequestImplCopyWith<$Res>
    implements $EmailSessionRequestCopyWith<$Res> {
  factory _$$EmailSessionRequestImplCopyWith(_$EmailSessionRequestImpl value,
          $Res Function(_$EmailSessionRequestImpl) then) =
      __$$EmailSessionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$EmailSessionRequestImplCopyWithImpl<$Res>
    extends _$EmailSessionRequestCopyWithImpl<$Res, _$EmailSessionRequestImpl>
    implements _$$EmailSessionRequestImplCopyWith<$Res> {
  __$$EmailSessionRequestImplCopyWithImpl(_$EmailSessionRequestImpl _value,
      $Res Function(_$EmailSessionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$EmailSessionRequestImpl(
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
class _$EmailSessionRequestImpl implements _EmailSessionRequest {
  const _$EmailSessionRequestImpl({this.email, this.password});

  factory _$EmailSessionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailSessionRequestImplFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'EmailSessionRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailSessionRequestImpl &&
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
  _$$EmailSessionRequestImplCopyWith<_$EmailSessionRequestImpl> get copyWith =>
      __$$EmailSessionRequestImplCopyWithImpl<_$EmailSessionRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailSessionRequestImplToJson(
      this,
    );
  }
}

abstract class _EmailSessionRequest implements EmailSessionRequest {
  const factory _EmailSessionRequest(
      {final String? email,
      final String? password}) = _$EmailSessionRequestImpl;

  factory _EmailSessionRequest.fromJson(Map<String, dynamic> json) =
      _$EmailSessionRequestImpl.fromJson;

  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$EmailSessionRequestImplCopyWith<_$EmailSessionRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
