// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionRequest _$TransactionRequestFromJson(Map<String, dynamic> json) {
  return _TransactionRequest.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequest {
  String? get merchantCode => throw _privateConstructorUsedError;
  String? get paymentAmount => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get merchantOrderId => throw _privateConstructorUsedError;
  String? get productDetails => throw _privateConstructorUsedError;
  String? get additionalParam => throw _privateConstructorUsedError;
  String? get merchantUserInfo => throw _privateConstructorUsedError;
  String? get customerVaName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  List<ItemDetail?>? get itemDetails => throw _privateConstructorUsedError;
  CustomerDetail? get customerDetail => throw _privateConstructorUsedError;
  String? get callbackUrl => throw _privateConstructorUsedError;
  String? get returnUrl => throw _privateConstructorUsedError;
  String? get signature => throw _privateConstructorUsedError;
  int? get expiryPeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRequestCopyWith<TransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestCopyWith<$Res> {
  factory $TransactionRequestCopyWith(
          TransactionRequest value, $Res Function(TransactionRequest) then) =
      _$TransactionRequestCopyWithImpl<$Res, TransactionRequest>;
  @useResult
  $Res call(
      {String? merchantCode,
      String? paymentAmount,
      String? paymentMethod,
      String? merchantOrderId,
      String? productDetails,
      String? additionalParam,
      String? merchantUserInfo,
      String? customerVaName,
      String? email,
      String? phoneNumber,
      List<ItemDetail?>? itemDetails,
      CustomerDetail? customerDetail,
      String? callbackUrl,
      String? returnUrl,
      String? signature,
      int? expiryPeriod});

  $CustomerDetailCopyWith<$Res>? get customerDetail;
}

/// @nodoc
class _$TransactionRequestCopyWithImpl<$Res, $Val extends TransactionRequest>
    implements $TransactionRequestCopyWith<$Res> {
  _$TransactionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? paymentAmount = freezed,
    Object? paymentMethod = freezed,
    Object? merchantOrderId = freezed,
    Object? productDetails = freezed,
    Object? additionalParam = freezed,
    Object? merchantUserInfo = freezed,
    Object? customerVaName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? itemDetails = freezed,
    Object? customerDetail = freezed,
    Object? callbackUrl = freezed,
    Object? returnUrl = freezed,
    Object? signature = freezed,
    Object? expiryPeriod = freezed,
  }) {
    return _then(_value.copyWith(
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantOrderId: freezed == merchantOrderId
          ? _value.merchantOrderId
          : merchantOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalParam: freezed == additionalParam
          ? _value.additionalParam
          : additionalParam // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantUserInfo: freezed == merchantUserInfo
          ? _value.merchantUserInfo
          : merchantUserInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      customerVaName: freezed == customerVaName
          ? _value.customerVaName
          : customerVaName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      itemDetails: freezed == itemDetails
          ? _value.itemDetails
          : itemDetails // ignore: cast_nullable_to_non_nullable
              as List<ItemDetail?>?,
      customerDetail: freezed == customerDetail
          ? _value.customerDetail
          : customerDetail // ignore: cast_nullable_to_non_nullable
              as CustomerDetail?,
      callbackUrl: freezed == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      returnUrl: freezed == returnUrl
          ? _value.returnUrl
          : returnUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryPeriod: freezed == expiryPeriod
          ? _value.expiryPeriod
          : expiryPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerDetailCopyWith<$Res>? get customerDetail {
    if (_value.customerDetail == null) {
      return null;
    }

    return $CustomerDetailCopyWith<$Res>(_value.customerDetail!, (value) {
      return _then(_value.copyWith(customerDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionRequestCopyWith<$Res>
    implements $TransactionRequestCopyWith<$Res> {
  factory _$$_TransactionRequestCopyWith(_$_TransactionRequest value,
          $Res Function(_$_TransactionRequest) then) =
      __$$_TransactionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? merchantCode,
      String? paymentAmount,
      String? paymentMethod,
      String? merchantOrderId,
      String? productDetails,
      String? additionalParam,
      String? merchantUserInfo,
      String? customerVaName,
      String? email,
      String? phoneNumber,
      List<ItemDetail?>? itemDetails,
      CustomerDetail? customerDetail,
      String? callbackUrl,
      String? returnUrl,
      String? signature,
      int? expiryPeriod});

  @override
  $CustomerDetailCopyWith<$Res>? get customerDetail;
}

/// @nodoc
class __$$_TransactionRequestCopyWithImpl<$Res>
    extends _$TransactionRequestCopyWithImpl<$Res, _$_TransactionRequest>
    implements _$$_TransactionRequestCopyWith<$Res> {
  __$$_TransactionRequestCopyWithImpl(
      _$_TransactionRequest _value, $Res Function(_$_TransactionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantCode = freezed,
    Object? paymentAmount = freezed,
    Object? paymentMethod = freezed,
    Object? merchantOrderId = freezed,
    Object? productDetails = freezed,
    Object? additionalParam = freezed,
    Object? merchantUserInfo = freezed,
    Object? customerVaName = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? itemDetails = freezed,
    Object? customerDetail = freezed,
    Object? callbackUrl = freezed,
    Object? returnUrl = freezed,
    Object? signature = freezed,
    Object? expiryPeriod = freezed,
  }) {
    return _then(_$_TransactionRequest(
      merchantCode: freezed == merchantCode
          ? _value.merchantCode
          : merchantCode // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantOrderId: freezed == merchantOrderId
          ? _value.merchantOrderId
          : merchantOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalParam: freezed == additionalParam
          ? _value.additionalParam
          : additionalParam // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantUserInfo: freezed == merchantUserInfo
          ? _value.merchantUserInfo
          : merchantUserInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      customerVaName: freezed == customerVaName
          ? _value.customerVaName
          : customerVaName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      itemDetails: freezed == itemDetails
          ? _value._itemDetails
          : itemDetails // ignore: cast_nullable_to_non_nullable
              as List<ItemDetail?>?,
      customerDetail: freezed == customerDetail
          ? _value.customerDetail
          : customerDetail // ignore: cast_nullable_to_non_nullable
              as CustomerDetail?,
      callbackUrl: freezed == callbackUrl
          ? _value.callbackUrl
          : callbackUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      returnUrl: freezed == returnUrl
          ? _value.returnUrl
          : returnUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      signature: freezed == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String?,
      expiryPeriod: freezed == expiryPeriod
          ? _value.expiryPeriod
          : expiryPeriod // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionRequest implements _TransactionRequest {
  const _$_TransactionRequest(
      {this.merchantCode,
      this.paymentAmount,
      this.paymentMethod,
      this.merchantOrderId,
      this.productDetails,
      this.additionalParam,
      this.merchantUserInfo,
      this.customerVaName,
      this.email,
      this.phoneNumber,
      final List<ItemDetail?>? itemDetails,
      this.customerDetail,
      this.callbackUrl,
      this.returnUrl,
      this.signature,
      this.expiryPeriod})
      : _itemDetails = itemDetails;

  factory _$_TransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionRequestFromJson(json);

  @override
  final String? merchantCode;
  @override
  final String? paymentAmount;
  @override
  final String? paymentMethod;
  @override
  final String? merchantOrderId;
  @override
  final String? productDetails;
  @override
  final String? additionalParam;
  @override
  final String? merchantUserInfo;
  @override
  final String? customerVaName;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  final List<ItemDetail?>? _itemDetails;
  @override
  List<ItemDetail?>? get itemDetails {
    final value = _itemDetails;
    if (value == null) return null;
    if (_itemDetails is EqualUnmodifiableListView) return _itemDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CustomerDetail? customerDetail;
  @override
  final String? callbackUrl;
  @override
  final String? returnUrl;
  @override
  final String? signature;
  @override
  final int? expiryPeriod;

  @override
  String toString() {
    return 'TransactionRequest(merchantCode: $merchantCode, paymentAmount: $paymentAmount, paymentMethod: $paymentMethod, merchantOrderId: $merchantOrderId, productDetails: $productDetails, additionalParam: $additionalParam, merchantUserInfo: $merchantUserInfo, customerVaName: $customerVaName, email: $email, phoneNumber: $phoneNumber, itemDetails: $itemDetails, customerDetail: $customerDetail, callbackUrl: $callbackUrl, returnUrl: $returnUrl, signature: $signature, expiryPeriod: $expiryPeriod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionRequest &&
            (identical(other.merchantCode, merchantCode) ||
                other.merchantCode == merchantCode) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.merchantOrderId, merchantOrderId) ||
                other.merchantOrderId == merchantOrderId) &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails) &&
            (identical(other.additionalParam, additionalParam) ||
                other.additionalParam == additionalParam) &&
            (identical(other.merchantUserInfo, merchantUserInfo) ||
                other.merchantUserInfo == merchantUserInfo) &&
            (identical(other.customerVaName, customerVaName) ||
                other.customerVaName == customerVaName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other._itemDetails, _itemDetails) &&
            (identical(other.customerDetail, customerDetail) ||
                other.customerDetail == customerDetail) &&
            (identical(other.callbackUrl, callbackUrl) ||
                other.callbackUrl == callbackUrl) &&
            (identical(other.returnUrl, returnUrl) ||
                other.returnUrl == returnUrl) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.expiryPeriod, expiryPeriod) ||
                other.expiryPeriod == expiryPeriod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      merchantCode,
      paymentAmount,
      paymentMethod,
      merchantOrderId,
      productDetails,
      additionalParam,
      merchantUserInfo,
      customerVaName,
      email,
      phoneNumber,
      const DeepCollectionEquality().hash(_itemDetails),
      customerDetail,
      callbackUrl,
      returnUrl,
      signature,
      expiryPeriod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionRequestCopyWith<_$_TransactionRequest> get copyWith =>
      __$$_TransactionRequestCopyWithImpl<_$_TransactionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionRequestToJson(
      this,
    );
  }
}

abstract class _TransactionRequest implements TransactionRequest {
  const factory _TransactionRequest(
      {final String? merchantCode,
      final String? paymentAmount,
      final String? paymentMethod,
      final String? merchantOrderId,
      final String? productDetails,
      final String? additionalParam,
      final String? merchantUserInfo,
      final String? customerVaName,
      final String? email,
      final String? phoneNumber,
      final List<ItemDetail?>? itemDetails,
      final CustomerDetail? customerDetail,
      final String? callbackUrl,
      final String? returnUrl,
      final String? signature,
      final int? expiryPeriod}) = _$_TransactionRequest;

  factory _TransactionRequest.fromJson(Map<String, dynamic> json) =
      _$_TransactionRequest.fromJson;

  @override
  String? get merchantCode;
  @override
  String? get paymentAmount;
  @override
  String? get paymentMethod;
  @override
  String? get merchantOrderId;
  @override
  String? get productDetails;
  @override
  String? get additionalParam;
  @override
  String? get merchantUserInfo;
  @override
  String? get customerVaName;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  List<ItemDetail?>? get itemDetails;
  @override
  CustomerDetail? get customerDetail;
  @override
  String? get callbackUrl;
  @override
  String? get returnUrl;
  @override
  String? get signature;
  @override
  int? get expiryPeriod;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionRequestCopyWith<_$_TransactionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
