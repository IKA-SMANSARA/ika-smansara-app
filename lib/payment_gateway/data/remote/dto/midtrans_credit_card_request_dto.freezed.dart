// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_credit_card_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransCreditCardRequestDTO _$MidtransCreditCardRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _MidtransCreditCardRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$MidtransCreditCardRequestDTO {
  @JsonKey(name: 'secure')
  bool get secure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransCreditCardRequestDTOCopyWith<MidtransCreditCardRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransCreditCardRequestDTOCopyWith<$Res> {
  factory $MidtransCreditCardRequestDTOCopyWith(
          MidtransCreditCardRequestDTO value,
          $Res Function(MidtransCreditCardRequestDTO) then) =
      _$MidtransCreditCardRequestDTOCopyWithImpl<$Res,
          MidtransCreditCardRequestDTO>;
  @useResult
  $Res call({@JsonKey(name: 'secure') bool secure});
}

/// @nodoc
class _$MidtransCreditCardRequestDTOCopyWithImpl<$Res,
        $Val extends MidtransCreditCardRequestDTO>
    implements $MidtransCreditCardRequestDTOCopyWith<$Res> {
  _$MidtransCreditCardRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secure = null,
  }) {
    return _then(_value.copyWith(
      secure: null == secure
          ? _value.secure
          : secure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MidtransCreditCardRequestDTOCopyWith<$Res>
    implements $MidtransCreditCardRequestDTOCopyWith<$Res> {
  factory _$$_MidtransCreditCardRequestDTOCopyWith(
          _$_MidtransCreditCardRequestDTO value,
          $Res Function(_$_MidtransCreditCardRequestDTO) then) =
      __$$_MidtransCreditCardRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'secure') bool secure});
}

/// @nodoc
class __$$_MidtransCreditCardRequestDTOCopyWithImpl<$Res>
    extends _$MidtransCreditCardRequestDTOCopyWithImpl<$Res,
        _$_MidtransCreditCardRequestDTO>
    implements _$$_MidtransCreditCardRequestDTOCopyWith<$Res> {
  __$$_MidtransCreditCardRequestDTOCopyWithImpl(
      _$_MidtransCreditCardRequestDTO _value,
      $Res Function(_$_MidtransCreditCardRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secure = null,
  }) {
    return _then(_$_MidtransCreditCardRequestDTO(
      secure: null == secure
          ? _value.secure
          : secure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MidtransCreditCardRequestDTO implements _MidtransCreditCardRequestDTO {
  const _$_MidtransCreditCardRequestDTO(
      {@JsonKey(name: 'secure') this.secure = true});

  factory _$_MidtransCreditCardRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MidtransCreditCardRequestDTOFromJson(json);

  @override
  @JsonKey(name: 'secure')
  final bool secure;

  @override
  String toString() {
    return 'MidtransCreditCardRequestDTO(secure: $secure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MidtransCreditCardRequestDTO &&
            (identical(other.secure, secure) || other.secure == secure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, secure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MidtransCreditCardRequestDTOCopyWith<_$_MidtransCreditCardRequestDTO>
      get copyWith => __$$_MidtransCreditCardRequestDTOCopyWithImpl<
          _$_MidtransCreditCardRequestDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MidtransCreditCardRequestDTOToJson(
      this,
    );
  }
}

abstract class _MidtransCreditCardRequestDTO
    implements MidtransCreditCardRequestDTO {
  const factory _MidtransCreditCardRequestDTO(
          {@JsonKey(name: 'secure') final bool secure}) =
      _$_MidtransCreditCardRequestDTO;

  factory _MidtransCreditCardRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_MidtransCreditCardRequestDTO.fromJson;

  @override
  @JsonKey(name: 'secure')
  bool get secure;
  @override
  @JsonKey(ignore: true)
  _$$_MidtransCreditCardRequestDTOCopyWith<_$_MidtransCreditCardRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}
