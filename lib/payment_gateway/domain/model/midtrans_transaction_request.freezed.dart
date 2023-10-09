// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransTransactionRequest _$MidtransTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return _MidtransTransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$MidtransTransactionRequest {
  MidtransTransactionDetailsRequest? get midtransTransactionDetailsRequest =>
      throw _privateConstructorUsedError;

  MidtransCreditCardRequest? get midtransCreditCardRequest =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MidtransTransactionRequestCopyWith<MidtransTransactionRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransTransactionRequestCopyWith<$Res> {
  factory $MidtransTransactionRequestCopyWith(MidtransTransactionRequest value,
          $Res Function(MidtransTransactionRequest) then) =
      _$MidtransTransactionRequestCopyWithImpl<$Res,
          MidtransTransactionRequest>;

  @useResult
  $Res call(
      {MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest,
      MidtransCreditCardRequest? midtransCreditCardRequest});

  $MidtransTransactionDetailsRequestCopyWith<$Res>?
      get midtransTransactionDetailsRequest;

  $MidtransCreditCardRequestCopyWith<$Res>? get midtransCreditCardRequest;
}

/// @nodoc
class _$MidtransTransactionRequestCopyWithImpl<$Res,
        $Val extends MidtransTransactionRequest>
    implements $MidtransTransactionRequestCopyWith<$Res> {
  _$MidtransTransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransTransactionDetailsRequest = freezed,
    Object? midtransCreditCardRequest = freezed,
  }) {
    return _then(_value.copyWith(
      midtransTransactionDetailsRequest: freezed ==
              midtransTransactionDetailsRequest
          ? _value.midtransTransactionDetailsRequest
          : midtransTransactionDetailsRequest // ignore: cast_nullable_to_non_nullable
              as MidtransTransactionDetailsRequest?,
      midtransCreditCardRequest: freezed == midtransCreditCardRequest
          ? _value.midtransCreditCardRequest
          : midtransCreditCardRequest // ignore: cast_nullable_to_non_nullable
              as MidtransCreditCardRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MidtransTransactionDetailsRequestCopyWith<$Res>?
      get midtransTransactionDetailsRequest {
    if (_value.midtransTransactionDetailsRequest == null) {
      return null;
    }

    return $MidtransTransactionDetailsRequestCopyWith<$Res>(
        _value.midtransTransactionDetailsRequest!, (value) {
      return _then(
          _value.copyWith(midtransTransactionDetailsRequest: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MidtransCreditCardRequestCopyWith<$Res>? get midtransCreditCardRequest {
    if (_value.midtransCreditCardRequest == null) {
      return null;
    }

    return $MidtransCreditCardRequestCopyWith<$Res>(
        _value.midtransCreditCardRequest!, (value) {
      return _then(_value.copyWith(midtransCreditCardRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MidtransTransactionRequestCopyWith<$Res>
    implements $MidtransTransactionRequestCopyWith<$Res> {
  factory _$$_MidtransTransactionRequestCopyWith(
          _$_MidtransTransactionRequest value,
          $Res Function(_$_MidtransTransactionRequest) then) =
      __$$_MidtransTransactionRequestCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest,
      MidtransCreditCardRequest? midtransCreditCardRequest});

  @override
  $MidtransTransactionDetailsRequestCopyWith<$Res>?
      get midtransTransactionDetailsRequest;

  @override
  $MidtransCreditCardRequestCopyWith<$Res>? get midtransCreditCardRequest;
}

/// @nodoc
class __$$_MidtransTransactionRequestCopyWithImpl<$Res>
    extends _$MidtransTransactionRequestCopyWithImpl<$Res,
        _$_MidtransTransactionRequest>
    implements _$$_MidtransTransactionRequestCopyWith<$Res> {
  __$$_MidtransTransactionRequestCopyWithImpl(
      _$_MidtransTransactionRequest _value,
      $Res Function(_$_MidtransTransactionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransTransactionDetailsRequest = freezed,
    Object? midtransCreditCardRequest = freezed,
  }) {
    return _then(_$_MidtransTransactionRequest(
      midtransTransactionDetailsRequest: freezed ==
              midtransTransactionDetailsRequest
          ? _value.midtransTransactionDetailsRequest
          : midtransTransactionDetailsRequest // ignore: cast_nullable_to_non_nullable
              as MidtransTransactionDetailsRequest?,
      midtransCreditCardRequest: freezed == midtransCreditCardRequest
          ? _value.midtransCreditCardRequest
          : midtransCreditCardRequest // ignore: cast_nullable_to_non_nullable
              as MidtransCreditCardRequest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MidtransTransactionRequest implements _MidtransTransactionRequest {
  const _$_MidtransTransactionRequest(
      {this.midtransTransactionDetailsRequest, this.midtransCreditCardRequest});

  factory _$_MidtransTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_MidtransTransactionRequestFromJson(json);

  @override
  final MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest;
  @override
  final MidtransCreditCardRequest? midtransCreditCardRequest;

  @override
  String toString() {
    return 'MidtransTransactionRequest(midtransTransactionDetailsRequest: $midtransTransactionDetailsRequest, midtransCreditCardRequest: $midtransCreditCardRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MidtransTransactionRequest &&
            (identical(other.midtransTransactionDetailsRequest,
                    midtransTransactionDetailsRequest) ||
                other.midtransTransactionDetailsRequest ==
                    midtransTransactionDetailsRequest) &&
            (identical(other.midtransCreditCardRequest,
                    midtransCreditCardRequest) ||
                other.midtransCreditCardRequest == midtransCreditCardRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      midtransTransactionDetailsRequest, midtransCreditCardRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MidtransTransactionRequestCopyWith<_$_MidtransTransactionRequest>
      get copyWith => __$$_MidtransTransactionRequestCopyWithImpl<
          _$_MidtransTransactionRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MidtransTransactionRequestToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionRequest
    implements MidtransTransactionRequest {
  const factory _MidtransTransactionRequest(
          {final MidtransTransactionDetailsRequest?
              midtransTransactionDetailsRequest,
          final MidtransCreditCardRequest? midtransCreditCardRequest}) =
      _$_MidtransTransactionRequest;

  factory _MidtransTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$_MidtransTransactionRequest.fromJson;

  @override
  MidtransTransactionDetailsRequest? get midtransTransactionDetailsRequest;

  @override
  MidtransCreditCardRequest? get midtransCreditCardRequest;

  @override
  @JsonKey(ignore: true)
  _$$_MidtransTransactionRequestCopyWith<_$_MidtransTransactionRequest>
      get copyWith => throw _privateConstructorUsedError;
}
