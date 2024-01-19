// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_transaction_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransTransactionResponse _$MidtransTransactionResponseFromJson(
    Map<String, dynamic> json) {
  return _MidtransTransactionResponse.fromJson(json);
}

/// @nodoc
mixin _$MidtransTransactionResponse {
  String? get token => throw _privateConstructorUsedError;
  String? get redirectUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransTransactionResponseCopyWith<MidtransTransactionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransTransactionResponseCopyWith<$Res> {
  factory $MidtransTransactionResponseCopyWith(
          MidtransTransactionResponse value,
          $Res Function(MidtransTransactionResponse) then) =
      _$MidtransTransactionResponseCopyWithImpl<$Res,
          MidtransTransactionResponse>;
  @useResult
  $Res call({String? token, String? redirectUrl});
}

/// @nodoc
class _$MidtransTransactionResponseCopyWithImpl<$Res,
        $Val extends MidtransTransactionResponse>
    implements $MidtransTransactionResponseCopyWith<$Res> {
  _$MidtransTransactionResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$MidtransTransactionResponseImplCopyWith<$Res>
    implements $MidtransTransactionResponseCopyWith<$Res> {
  factory _$$MidtransTransactionResponseImplCopyWith(
          _$MidtransTransactionResponseImpl value,
          $Res Function(_$MidtransTransactionResponseImpl) then) =
      __$$MidtransTransactionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? redirectUrl});
}

/// @nodoc
class __$$MidtransTransactionResponseImplCopyWithImpl<$Res>
    extends _$MidtransTransactionResponseCopyWithImpl<$Res,
        _$MidtransTransactionResponseImpl>
    implements _$$MidtransTransactionResponseImplCopyWith<$Res> {
  __$$MidtransTransactionResponseImplCopyWithImpl(
      _$MidtransTransactionResponseImpl _value,
      $Res Function(_$MidtransTransactionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? redirectUrl = freezed,
  }) {
    return _then(_$MidtransTransactionResponseImpl(
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
class _$MidtransTransactionResponseImpl
    implements _MidtransTransactionResponse {
  const _$MidtransTransactionResponseImpl({this.token, this.redirectUrl});

  factory _$MidtransTransactionResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MidtransTransactionResponseImplFromJson(json);

  @override
  final String? token;
  @override
  final String? redirectUrl;

  @override
  String toString() {
    return 'MidtransTransactionResponse(token: $token, redirectUrl: $redirectUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransTransactionResponseImpl &&
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
  _$$MidtransTransactionResponseImplCopyWith<_$MidtransTransactionResponseImpl>
      get copyWith => __$$MidtransTransactionResponseImplCopyWithImpl<
          _$MidtransTransactionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransTransactionResponseImplToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionResponse
    implements MidtransTransactionResponse {
  const factory _MidtransTransactionResponse(
      {final String? token,
      final String? redirectUrl}) = _$MidtransTransactionResponseImpl;

  factory _MidtransTransactionResponse.fromJson(Map<String, dynamic> json) =
      _$MidtransTransactionResponseImpl.fromJson;

  @override
  String? get token;
  @override
  String? get redirectUrl;
  @override
  @JsonKey(ignore: true)
  _$$MidtransTransactionResponseImplCopyWith<_$MidtransTransactionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
