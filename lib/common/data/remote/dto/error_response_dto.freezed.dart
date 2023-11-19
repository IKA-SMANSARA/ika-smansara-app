// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorResponseDTO _$ErrorResponseDTOFromJson(Map<String, dynamic> json) {
  return _ErrorResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ErrorResponseDTO {
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
  $ErrorResponseDTOCopyWith<ErrorResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseDTOCopyWith<$Res> {
  factory $ErrorResponseDTOCopyWith(
          ErrorResponseDTO value, $Res Function(ErrorResponseDTO) then) =
      _$ErrorResponseDTOCopyWithImpl<$Res, ErrorResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class _$ErrorResponseDTOCopyWithImpl<$Res, $Val extends ErrorResponseDTO>
    implements $ErrorResponseDTOCopyWith<$Res> {
  _$ErrorResponseDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$ErrorResponseDTOImplCopyWith<$Res>
    implements $ErrorResponseDTOCopyWith<$Res> {
  factory _$$ErrorResponseDTOImplCopyWith(_$ErrorResponseDTOImpl value,
          $Res Function(_$ErrorResponseDTOImpl) then) =
      __$$ErrorResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'code') int? code,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class __$$ErrorResponseDTOImplCopyWithImpl<$Res>
    extends _$ErrorResponseDTOCopyWithImpl<$Res, _$ErrorResponseDTOImpl>
    implements _$$ErrorResponseDTOImplCopyWith<$Res> {
  __$$ErrorResponseDTOImplCopyWithImpl(_$ErrorResponseDTOImpl _value,
      $Res Function(_$ErrorResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? type = freezed,
    Object? version = freezed,
  }) {
    return _then(_$ErrorResponseDTOImpl(
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
class _$ErrorResponseDTOImpl implements _ErrorResponseDTO {
  const _$ErrorResponseDTOImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'version') this.version});

  factory _$ErrorResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseDTOImplFromJson(json);

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
    return 'ErrorResponseDTO(message: $message, code: $code, type: $type, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponseDTOImpl &&
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
  _$$ErrorResponseDTOImplCopyWith<_$ErrorResponseDTOImpl> get copyWith =>
      __$$ErrorResponseDTOImplCopyWithImpl<_$ErrorResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ErrorResponseDTO implements ErrorResponseDTO {
  const factory _ErrorResponseDTO(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'code') final int? code,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'version') final String? version}) =
      _$ErrorResponseDTOImpl;

  factory _ErrorResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ErrorResponseDTOImpl.fromJson;

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
  _$$ErrorResponseDTOImplCopyWith<_$ErrorResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
