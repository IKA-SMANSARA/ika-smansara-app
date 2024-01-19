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
  List<MidtransItemRequest>? get midtransItemDetailsRequest =>
      throw _privateConstructorUsedError;
  MidtransCustomerDetailsRequest? get midtransCustomerDetailsRequest =>
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
      MidtransCreditCardRequest? midtransCreditCardRequest,
      List<MidtransItemRequest>? midtransItemDetailsRequest,
      MidtransCustomerDetailsRequest? midtransCustomerDetailsRequest});

  $MidtransTransactionDetailsRequestCopyWith<$Res>?
      get midtransTransactionDetailsRequest;
  $MidtransCreditCardRequestCopyWith<$Res>? get midtransCreditCardRequest;
  $MidtransCustomerDetailsRequestCopyWith<$Res>?
      get midtransCustomerDetailsRequest;
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
    Object? midtransItemDetailsRequest = freezed,
    Object? midtransCustomerDetailsRequest = freezed,
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
      midtransItemDetailsRequest: freezed == midtransItemDetailsRequest
          ? _value.midtransItemDetailsRequest
          : midtransItemDetailsRequest // ignore: cast_nullable_to_non_nullable
              as List<MidtransItemRequest>?,
      midtransCustomerDetailsRequest: freezed == midtransCustomerDetailsRequest
          ? _value.midtransCustomerDetailsRequest
          : midtransCustomerDetailsRequest // ignore: cast_nullable_to_non_nullable
              as MidtransCustomerDetailsRequest?,
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

  @override
  @pragma('vm:prefer-inline')
  $MidtransCustomerDetailsRequestCopyWith<$Res>?
      get midtransCustomerDetailsRequest {
    if (_value.midtransCustomerDetailsRequest == null) {
      return null;
    }

    return $MidtransCustomerDetailsRequestCopyWith<$Res>(
        _value.midtransCustomerDetailsRequest!, (value) {
      return _then(
          _value.copyWith(midtransCustomerDetailsRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MidtransTransactionRequestImplCopyWith<$Res>
    implements $MidtransTransactionRequestCopyWith<$Res> {
  factory _$$MidtransTransactionRequestImplCopyWith(
          _$MidtransTransactionRequestImpl value,
          $Res Function(_$MidtransTransactionRequestImpl) then) =
      __$$MidtransTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest,
      MidtransCreditCardRequest? midtransCreditCardRequest,
      List<MidtransItemRequest>? midtransItemDetailsRequest,
      MidtransCustomerDetailsRequest? midtransCustomerDetailsRequest});

  @override
  $MidtransTransactionDetailsRequestCopyWith<$Res>?
      get midtransTransactionDetailsRequest;
  @override
  $MidtransCreditCardRequestCopyWith<$Res>? get midtransCreditCardRequest;
  @override
  $MidtransCustomerDetailsRequestCopyWith<$Res>?
      get midtransCustomerDetailsRequest;
}

/// @nodoc
class __$$MidtransTransactionRequestImplCopyWithImpl<$Res>
    extends _$MidtransTransactionRequestCopyWithImpl<$Res,
        _$MidtransTransactionRequestImpl>
    implements _$$MidtransTransactionRequestImplCopyWith<$Res> {
  __$$MidtransTransactionRequestImplCopyWithImpl(
      _$MidtransTransactionRequestImpl _value,
      $Res Function(_$MidtransTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransTransactionDetailsRequest = freezed,
    Object? midtransCreditCardRequest = freezed,
    Object? midtransItemDetailsRequest = freezed,
    Object? midtransCustomerDetailsRequest = freezed,
  }) {
    return _then(_$MidtransTransactionRequestImpl(
      midtransTransactionDetailsRequest: freezed ==
              midtransTransactionDetailsRequest
          ? _value.midtransTransactionDetailsRequest
          : midtransTransactionDetailsRequest // ignore: cast_nullable_to_non_nullable
              as MidtransTransactionDetailsRequest?,
      midtransCreditCardRequest: freezed == midtransCreditCardRequest
          ? _value.midtransCreditCardRequest
          : midtransCreditCardRequest // ignore: cast_nullable_to_non_nullable
              as MidtransCreditCardRequest?,
      midtransItemDetailsRequest: freezed == midtransItemDetailsRequest
          ? _value._midtransItemDetailsRequest
          : midtransItemDetailsRequest // ignore: cast_nullable_to_non_nullable
              as List<MidtransItemRequest>?,
      midtransCustomerDetailsRequest: freezed == midtransCustomerDetailsRequest
          ? _value.midtransCustomerDetailsRequest
          : midtransCustomerDetailsRequest // ignore: cast_nullable_to_non_nullable
              as MidtransCustomerDetailsRequest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MidtransTransactionRequestImpl implements _MidtransTransactionRequest {
  const _$MidtransTransactionRequestImpl(
      {this.midtransTransactionDetailsRequest,
      this.midtransCreditCardRequest,
      final List<MidtransItemRequest>? midtransItemDetailsRequest,
      this.midtransCustomerDetailsRequest})
      : _midtransItemDetailsRequest = midtransItemDetailsRequest;

  factory _$MidtransTransactionRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MidtransTransactionRequestImplFromJson(json);

  @override
  final MidtransTransactionDetailsRequest? midtransTransactionDetailsRequest;
  @override
  final MidtransCreditCardRequest? midtransCreditCardRequest;
  final List<MidtransItemRequest>? _midtransItemDetailsRequest;
  @override
  List<MidtransItemRequest>? get midtransItemDetailsRequest {
    final value = _midtransItemDetailsRequest;
    if (value == null) return null;
    if (_midtransItemDetailsRequest is EqualUnmodifiableListView)
      return _midtransItemDetailsRequest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MidtransCustomerDetailsRequest? midtransCustomerDetailsRequest;

  @override
  String toString() {
    return 'MidtransTransactionRequest(midtransTransactionDetailsRequest: $midtransTransactionDetailsRequest, midtransCreditCardRequest: $midtransCreditCardRequest, midtransItemDetailsRequest: $midtransItemDetailsRequest, midtransCustomerDetailsRequest: $midtransCustomerDetailsRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransTransactionRequestImpl &&
            (identical(other.midtransTransactionDetailsRequest,
                    midtransTransactionDetailsRequest) ||
                other.midtransTransactionDetailsRequest ==
                    midtransTransactionDetailsRequest) &&
            (identical(other.midtransCreditCardRequest,
                    midtransCreditCardRequest) ||
                other.midtransCreditCardRequest == midtransCreditCardRequest) &&
            const DeepCollectionEquality().equals(
                other._midtransItemDetailsRequest,
                _midtransItemDetailsRequest) &&
            (identical(other.midtransCustomerDetailsRequest,
                    midtransCustomerDetailsRequest) ||
                other.midtransCustomerDetailsRequest ==
                    midtransCustomerDetailsRequest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      midtransTransactionDetailsRequest,
      midtransCreditCardRequest,
      const DeepCollectionEquality().hash(_midtransItemDetailsRequest),
      midtransCustomerDetailsRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MidtransTransactionRequestImplCopyWith<_$MidtransTransactionRequestImpl>
      get copyWith => __$$MidtransTransactionRequestImplCopyWithImpl<
          _$MidtransTransactionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionRequest
    implements MidtransTransactionRequest {
  const factory _MidtransTransactionRequest(
      {final MidtransTransactionDetailsRequest?
          midtransTransactionDetailsRequest,
      final MidtransCreditCardRequest? midtransCreditCardRequest,
      final List<MidtransItemRequest>? midtransItemDetailsRequest,
      final MidtransCustomerDetailsRequest?
          midtransCustomerDetailsRequest}) = _$MidtransTransactionRequestImpl;

  factory _MidtransTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$MidtransTransactionRequestImpl.fromJson;

  @override
  MidtransTransactionDetailsRequest? get midtransTransactionDetailsRequest;
  @override
  MidtransCreditCardRequest? get midtransCreditCardRequest;
  @override
  List<MidtransItemRequest>? get midtransItemDetailsRequest;
  @override
  MidtransCustomerDetailsRequest? get midtransCustomerDetailsRequest;
  @override
  @JsonKey(ignore: true)
  _$$MidtransTransactionRequestImplCopyWith<_$MidtransTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
