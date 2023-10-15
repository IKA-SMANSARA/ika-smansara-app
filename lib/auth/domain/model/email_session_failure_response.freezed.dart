// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_session_failure_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailSessionFailureResponse _$EmailSessionFailureResponseFromJson(
    Map<String, dynamic> json) {
  return _EmailSessionFailureResponse.fromJson(json);
}

/// @nodoc
mixin _$EmailSessionFailureResponse {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailSessionFailureResponseCopyWith<EmailSessionFailureResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSessionFailureResponseCopyWith<$Res> {
  factory $EmailSessionFailureResponseCopyWith(
          EmailSessionFailureResponse value,
          $Res Function(EmailSessionFailureResponse) then) =
      _$EmailSessionFailureResponseCopyWithImpl<$Res,
          EmailSessionFailureResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class _$EmailSessionFailureResponseCopyWithImpl<$Res,
        $Val extends EmailSessionFailureResponse>
    implements $EmailSessionFailureResponseCopyWith<$Res> {
  _$EmailSessionFailureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailSessionFailureResponseCopyWith<$Res>
    implements $EmailSessionFailureResponseCopyWith<$Res> {
  factory _$$_EmailSessionFailureResponseCopyWith(
          _$_EmailSessionFailureResponse value,
          $Res Function(_$_EmailSessionFailureResponse) then) =
      __$$_EmailSessionFailureResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class __$$_EmailSessionFailureResponseCopyWithImpl<$Res>
    extends _$EmailSessionFailureResponseCopyWithImpl<$Res,
        _$_EmailSessionFailureResponse>
    implements _$$_EmailSessionFailureResponseCopyWith<$Res> {
  __$$_EmailSessionFailureResponseCopyWithImpl(
      _$_EmailSessionFailureResponse _value,
      $Res Function(_$_EmailSessionFailureResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_EmailSessionFailureResponse(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailSessionFailureResponse implements _EmailSessionFailureResponse {
  const _$_EmailSessionFailureResponse(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'version') this.version});

  factory _$_EmailSessionFailureResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmailSessionFailureResponseFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'version')
  final String? version;

  @override
  String toString() {
    return 'EmailSessionFailureResponse(message: $message, code: $code, type: $type, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailSessionFailureResponse &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, type, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailSessionFailureResponseCopyWith<_$_EmailSessionFailureResponse>
      get copyWith => __$$_EmailSessionFailureResponseCopyWithImpl<
          _$_EmailSessionFailureResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailSessionFailureResponseToJson(
      this,
    );
  }
}

abstract class _EmailSessionFailureResponse
    implements EmailSessionFailureResponse {
  const factory _EmailSessionFailureResponse(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'version') final String? version}) =
      _$_EmailSessionFailureResponse;

  factory _EmailSessionFailureResponse.fromJson(Map<String, dynamic> json) =
      _$_EmailSessionFailureResponse.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'version')
  String? get version;
  @override
  @JsonKey(ignore: true)
  _$$_EmailSessionFailureResponseCopyWith<_$_EmailSessionFailureResponse>
      get copyWith => throw _privateConstructorUsedError;
}
