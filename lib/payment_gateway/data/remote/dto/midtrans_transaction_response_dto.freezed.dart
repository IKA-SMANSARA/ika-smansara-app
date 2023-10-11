// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_transaction_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransTransactionResponseDTO _$MidtransTransactionResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _MidtransTransactionResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MidtransTransactionResponseDTO {
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(name: 'redirect_url')
  String? get redirectUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MidtransTransactionResponseDTOCopyWith<MidtransTransactionResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransTransactionResponseDTOCopyWith<$Res> {
  factory $MidtransTransactionResponseDTOCopyWith(
          MidtransTransactionResponseDTO value,
          $Res Function(MidtransTransactionResponseDTO) then) =
      _$MidtransTransactionResponseDTOCopyWithImpl<$Res,
          MidtransTransactionResponseDTO>;

  @useResult
  $Res call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'redirect_url') String? redirectUrl});
}

/// @nodoc
class _$MidtransTransactionResponseDTOCopyWithImpl<$Res,
        $Val extends MidtransTransactionResponseDTO>
    implements $MidtransTransactionResponseDTOCopyWith<$Res> {
  _$MidtransTransactionResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MidtransTransactionResponseDTOCopyWith<$Res>
    implements $MidtransTransactionResponseDTOCopyWith<$Res> {
  factory _$$_MidtransTransactionResponseDTOCopyWith(
          _$_MidtransTransactionResponseDTO value,
          $Res Function(_$_MidtransTransactionResponseDTO) then) =
      __$$_MidtransTransactionResponseDTOCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String? token,
      @JsonKey(name: 'redirect_url') String? redirectUrl});
}

/// @nodoc
class __$$_MidtransTransactionResponseDTOCopyWithImpl<$Res>
    extends _$MidtransTransactionResponseDTOCopyWithImpl<$Res,
        _$_MidtransTransactionResponseDTO>
    implements _$$_MidtransTransactionResponseDTOCopyWith<$Res> {
  __$$_MidtransTransactionResponseDTOCopyWithImpl(
      _$_MidtransTransactionResponseDTO _value,
      $Res Function(_$_MidtransTransactionResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_$_MidtransTransactionResponseDTO(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MidtransTransactionResponseDTO
    implements _MidtransTransactionResponseDTO {
  const _$_MidtransTransactionResponseDTO(
      {@JsonKey(name: 'token') this.token,
      @JsonKey(name: 'redirect_url') this.redirectUrl});

  factory _$_MidtransTransactionResponseDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_MidtransTransactionResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String? token;
  @override
  @JsonKey(name: 'redirect_url')
  final String? redirectUrl;

  @override
  String toString() {
    return 'MidtransTransactionResponseDTO(token: $token, redirectUrl: $redirectUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MidtransTransactionResponseDTO &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, redirectUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MidtransTransactionResponseDTOCopyWith<_$_MidtransTransactionResponseDTO>
      get copyWith => __$$_MidtransTransactionResponseDTOCopyWithImpl<
          _$_MidtransTransactionResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MidtransTransactionResponseDTOToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionResponseDTO
    implements MidtransTransactionResponseDTO {
  const factory _MidtransTransactionResponseDTO(
          {@JsonKey(name: 'token') final String? token,
          @JsonKey(name: 'redirect_url') final String? redirectUrl}) =
      _$_MidtransTransactionResponseDTO;

  factory _MidtransTransactionResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_MidtransTransactionResponseDTO.fromJson;

  @override
  @JsonKey(name: 'token')
  String? get token;

  @override
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl;

  @override
  @JsonKey(ignore: true)
  _$$_MidtransTransactionResponseDTOCopyWith<_$_MidtransTransactionResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
