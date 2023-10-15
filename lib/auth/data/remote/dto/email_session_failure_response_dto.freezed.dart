// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_session_failure_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailSessionFailureResponseDTO _$EmailSessionFailureResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _EmailSessionFailureResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$EmailSessionFailureResponseDTO {
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
  $EmailSessionFailureResponseDTOCopyWith<EmailSessionFailureResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailSessionFailureResponseDTOCopyWith<$Res> {
  factory $EmailSessionFailureResponseDTOCopyWith(
          EmailSessionFailureResponseDTO value,
          $Res Function(EmailSessionFailureResponseDTO) then) =
      _$EmailSessionFailureResponseDTOCopyWithImpl<$Res,
          EmailSessionFailureResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class _$EmailSessionFailureResponseDTOCopyWithImpl<$Res,
        $Val extends EmailSessionFailureResponseDTO>
    implements $EmailSessionFailureResponseDTOCopyWith<$Res> {
  _$EmailSessionFailureResponseDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_EmailSessionFailureResponseDTOCopyWith<$Res>
    implements $EmailSessionFailureResponseDTOCopyWith<$Res> {
  factory _$$_EmailSessionFailureResponseDTOCopyWith(
          _$_EmailSessionFailureResponseDTO value,
          $Res Function(_$_EmailSessionFailureResponseDTO) then) =
      __$$_EmailSessionFailureResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class __$$_EmailSessionFailureResponseDTOCopyWithImpl<$Res>
    extends _$EmailSessionFailureResponseDTOCopyWithImpl<$Res,
        _$_EmailSessionFailureResponseDTO>
    implements _$$_EmailSessionFailureResponseDTOCopyWith<$Res> {
  __$$_EmailSessionFailureResponseDTOCopyWithImpl(
      _$_EmailSessionFailureResponseDTO _value,
      $Res Function(_$_EmailSessionFailureResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_EmailSessionFailureResponseDTO(
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
class _$_EmailSessionFailureResponseDTO
    implements _EmailSessionFailureResponseDTO {
  const _$_EmailSessionFailureResponseDTO(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'version') this.version});

  factory _$_EmailSessionFailureResponseDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_EmailSessionFailureResponseDTOFromJson(json);

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
    return 'EmailSessionFailureResponseDTO(message: $message, code: $code, type: $type, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailSessionFailureResponseDTO &&
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
  _$$_EmailSessionFailureResponseDTOCopyWith<_$_EmailSessionFailureResponseDTO>
      get copyWith => __$$_EmailSessionFailureResponseDTOCopyWithImpl<
          _$_EmailSessionFailureResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailSessionFailureResponseDTOToJson(
      this,
    );
  }
}

abstract class _EmailSessionFailureResponseDTO
    implements EmailSessionFailureResponseDTO {
  const factory _EmailSessionFailureResponseDTO(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'version') final String? version}) =
      _$_EmailSessionFailureResponseDTO;

  factory _EmailSessionFailureResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_EmailSessionFailureResponseDTO.fromJson;

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
  _$$_EmailSessionFailureResponseDTOCopyWith<_$_EmailSessionFailureResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
