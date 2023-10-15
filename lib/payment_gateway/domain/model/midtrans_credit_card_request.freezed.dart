// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_credit_card_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransCreditCardRequest _$MidtransCreditCardRequestFromJson(
    Map<String, dynamic> json) {
  return _MidtransCreditCardRequest.fromJson(json);
}

/// @nodoc
mixin _$MidtransCreditCardRequest {
  bool get secure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransCreditCardRequestCopyWith<MidtransCreditCardRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransCreditCardRequestCopyWith<$Res> {
  factory $MidtransCreditCardRequestCopyWith(MidtransCreditCardRequest value,
          $Res Function(MidtransCreditCardRequest) then) =
      _$MidtransCreditCardRequestCopyWithImpl<$Res, MidtransCreditCardRequest>;
  @useResult
  $Res call({bool secure});
}

/// @nodoc
class _$MidtransCreditCardRequestCopyWithImpl<$Res,
        $Val extends MidtransCreditCardRequest>
    implements $MidtransCreditCardRequestCopyWith<$Res> {
  _$MidtransCreditCardRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_MidtransCreditCardRequestCopyWith<$Res>
    implements $MidtransCreditCardRequestCopyWith<$Res> {
  factory _$$_MidtransCreditCardRequestCopyWith(
          _$_MidtransCreditCardRequest value,
          $Res Function(_$_MidtransCreditCardRequest) then) =
      __$$_MidtransCreditCardRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool secure});
}

/// @nodoc
class __$$_MidtransCreditCardRequestCopyWithImpl<$Res>
    extends _$MidtransCreditCardRequestCopyWithImpl<$Res,
        _$_MidtransCreditCardRequest>
    implements _$$_MidtransCreditCardRequestCopyWith<$Res> {
  __$$_MidtransCreditCardRequestCopyWithImpl(
      _$_MidtransCreditCardRequest _value,
      $Res Function(_$_MidtransCreditCardRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? secure = null,
  }) {
    return _then(_$_MidtransCreditCardRequest(
      secure: null == secure
          ? _value.secure
          : secure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MidtransCreditCardRequest implements _MidtransCreditCardRequest {
  const _$_MidtransCreditCardRequest({this.secure = true});

  factory _$_MidtransCreditCardRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MidtransCreditCardRequestFromJson(json);

  @override
  @JsonKey()
  final bool secure;

  @override
  String toString() {
    return 'MidtransCreditCardRequest(secure: $secure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MidtransCreditCardRequest &&
            (identical(other.secure, secure) || other.secure == secure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, secure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MidtransCreditCardRequestCopyWith<_$_MidtransCreditCardRequest>
      get copyWith => __$$_MidtransCreditCardRequestCopyWithImpl<
          _$_MidtransCreditCardRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MidtransCreditCardRequestToJson(
      this,
    );
  }
}

abstract class _MidtransCreditCardRequest implements MidtransCreditCardRequest {
  const factory _MidtransCreditCardRequest({final bool secure}) =
      _$_MidtransCreditCardRequest;

  factory _MidtransCreditCardRequest.fromJson(Map<String, dynamic> json) =
      _$_MidtransCreditCardRequest.fromJson;

  @override
  bool get secure;
  @override
  @JsonKey(ignore: true)
  _$$_MidtransCreditCardRequestCopyWith<_$_MidtransCreditCardRequest>
      get copyWith => throw _privateConstructorUsedError;
}
