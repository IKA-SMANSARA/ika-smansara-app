// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionRequestDTO _$TransactionRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _TransactionRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionRequestDTO {
  @JsonKey(name: 'merchantCode')
  String? get merchantCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentAmount')
  String? get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentMethod')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchantOrderId')
  String? get merchantOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDetails')
  String? get productDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalParam')
  String? get additionalParam => throw _privateConstructorUsedError;
  @JsonKey(name: 'merchantUserInfo')
  String? get merchantUserInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerVaName')
  String? get customerVaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemDetails')
  List<ItemDetailDTO?>? get itemDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'customerDetail')
  CustomerDetailDTO? get customerDetail => throw _privateConstructorUsedError;
  @JsonKey(name: 'callbackUrl')
  String? get callbackUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'returnUrl')
  String? get returnUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'signature')
  String? get signature => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiryPeriod')
  int? get expiryPeriod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionRequestDTOCopyWith<TransactionRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionRequestDTOCopyWith<$Res> {
  factory $TransactionRequestDTOCopyWith(TransactionRequestDTO value,
          $Res Function(TransactionRequestDTO) then) =
      _$TransactionRequestDTOCopyWithImpl<$Res, TransactionRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'merchantCode') String? merchantCode,
      @JsonKey(name: 'paymentAmount') String? paymentAmount,
      @JsonKey(name: 'paymentMethod') String? paymentMethod,
      @JsonKey(name: 'merchantOrderId') String? merchantOrderId,
      @JsonKey(name: 'productDetails') String? productDetails,
      @JsonKey(name: 'additionalParam') String? additionalParam,
      @JsonKey(name: 'merchantUserInfo') String? merchantUserInfo,
      @JsonKey(name: 'customerVaName') String? customerVaName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'itemDetails') List<ItemDetailDTO?>? itemDetails,
      @JsonKey(name: 'customerDetail') CustomerDetailDTO? customerDetail,
      @JsonKey(name: 'callbackUrl') String? callbackUrl,
      @JsonKey(name: 'returnUrl') String? returnUrl,
      @JsonKey(name: 'signature') String? signature,
      @JsonKey(name: 'expiryPeriod') int? expiryPeriod});

  $CustomerDetailDTOCopyWith<$Res>? get customerDetail;
}

/// @nodoc
class _$TransactionRequestDTOCopyWithImpl<$Res,
        $Val extends TransactionRequestDTO>
    implements $TransactionRequestDTOCopyWith<$Res> {
  _$TransactionRequestDTOCopyWithImpl(this._value, this._then);

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
              as List<ItemDetailDTO?>?,
      customerDetail: freezed == customerDetail
          ? _value.customerDetail
          : customerDetail // ignore: cast_nullable_to_non_nullable
              as CustomerDetailDTO?,
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
  $CustomerDetailDTOCopyWith<$Res>? get customerDetail {
    if (_value.customerDetail == null) {
      return null;
    }

    return $CustomerDetailDTOCopyWith<$Res>(_value.customerDetail!, (value) {
      return _then(_value.copyWith(customerDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransactionRequestDTOCopyWith<$Res>
    implements $TransactionRequestDTOCopyWith<$Res> {
  factory _$$_TransactionRequestDTOCopyWith(_$_TransactionRequestDTO value,
          $Res Function(_$_TransactionRequestDTO) then) =
      __$$_TransactionRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'merchantCode') String? merchantCode,
      @JsonKey(name: 'paymentAmount') String? paymentAmount,
      @JsonKey(name: 'paymentMethod') String? paymentMethod,
      @JsonKey(name: 'merchantOrderId') String? merchantOrderId,
      @JsonKey(name: 'productDetails') String? productDetails,
      @JsonKey(name: 'additionalParam') String? additionalParam,
      @JsonKey(name: 'merchantUserInfo') String? merchantUserInfo,
      @JsonKey(name: 'customerVaName') String? customerVaName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phoneNumber') String? phoneNumber,
      @JsonKey(name: 'itemDetails') List<ItemDetailDTO?>? itemDetails,
      @JsonKey(name: 'customerDetail') CustomerDetailDTO? customerDetail,
      @JsonKey(name: 'callbackUrl') String? callbackUrl,
      @JsonKey(name: 'returnUrl') String? returnUrl,
      @JsonKey(name: 'signature') String? signature,
      @JsonKey(name: 'expiryPeriod') int? expiryPeriod});

  @override
  $CustomerDetailDTOCopyWith<$Res>? get customerDetail;
}

/// @nodoc
class __$$_TransactionRequestDTOCopyWithImpl<$Res>
    extends _$TransactionRequestDTOCopyWithImpl<$Res, _$_TransactionRequestDTO>
    implements _$$_TransactionRequestDTOCopyWith<$Res> {
  __$$_TransactionRequestDTOCopyWithImpl(_$_TransactionRequestDTO _value,
      $Res Function(_$_TransactionRequestDTO) _then)
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
    return _then(_$_TransactionRequestDTO(
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
              as List<ItemDetailDTO?>?,
      customerDetail: freezed == customerDetail
          ? _value.customerDetail
          : customerDetail // ignore: cast_nullable_to_non_nullable
              as CustomerDetailDTO?,
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
class _$_TransactionRequestDTO implements _TransactionRequestDTO {
  const _$_TransactionRequestDTO(
      {@JsonKey(name: 'merchantCode') this.merchantCode,
      @JsonKey(name: 'paymentAmount') this.paymentAmount,
      @JsonKey(name: 'paymentMethod') this.paymentMethod,
      @JsonKey(name: 'merchantOrderId') this.merchantOrderId,
      @JsonKey(name: 'productDetails') this.productDetails,
      @JsonKey(name: 'additionalParam') this.additionalParam,
      @JsonKey(name: 'merchantUserInfo') this.merchantUserInfo,
      @JsonKey(name: 'customerVaName') this.customerVaName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phoneNumber') this.phoneNumber,
      @JsonKey(name: 'itemDetails') final List<ItemDetailDTO?>? itemDetails,
      @JsonKey(name: 'customerDetail') this.customerDetail,
      @JsonKey(name: 'callbackUrl') this.callbackUrl,
      @JsonKey(name: 'returnUrl') this.returnUrl,
      @JsonKey(name: 'signature') this.signature,
      @JsonKey(name: 'expiryPeriod') this.expiryPeriod})
      : _itemDetails = itemDetails;

  factory _$_TransactionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionRequestDTOFromJson(json);

  @override
  @JsonKey(name: 'merchantCode')
  final String? merchantCode;
  @override
  @JsonKey(name: 'paymentAmount')
  final String? paymentAmount;
  @override
  @JsonKey(name: 'paymentMethod')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'merchantOrderId')
  final String? merchantOrderId;
  @override
  @JsonKey(name: 'productDetails')
  final String? productDetails;
  @override
  @JsonKey(name: 'additionalParam')
  final String? additionalParam;
  @override
  @JsonKey(name: 'merchantUserInfo')
  final String? merchantUserInfo;
  @override
  @JsonKey(name: 'customerVaName')
  final String? customerVaName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  final List<ItemDetailDTO?>? _itemDetails;
  @override
  @JsonKey(name: 'itemDetails')
  List<ItemDetailDTO?>? get itemDetails {
    final value = _itemDetails;
    if (value == null) return null;
    if (_itemDetails is EqualUnmodifiableListView) return _itemDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'customerDetail')
  final CustomerDetailDTO? customerDetail;
  @override
  @JsonKey(name: 'callbackUrl')
  final String? callbackUrl;
  @override
  @JsonKey(name: 'returnUrl')
  final String? returnUrl;
  @override
  @JsonKey(name: 'signature')
  final String? signature;
  @override
  @JsonKey(name: 'expiryPeriod')
  final int? expiryPeriod;

  @override
  String toString() {
    return 'TransactionRequestDTO(merchantCode: $merchantCode, paymentAmount: $paymentAmount, paymentMethod: $paymentMethod, merchantOrderId: $merchantOrderId, productDetails: $productDetails, additionalParam: $additionalParam, merchantUserInfo: $merchantUserInfo, customerVaName: $customerVaName, email: $email, phoneNumber: $phoneNumber, itemDetails: $itemDetails, customerDetail: $customerDetail, callbackUrl: $callbackUrl, returnUrl: $returnUrl, signature: $signature, expiryPeriod: $expiryPeriod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionRequestDTO &&
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
  _$$_TransactionRequestDTOCopyWith<_$_TransactionRequestDTO> get copyWith =>
      __$$_TransactionRequestDTOCopyWithImpl<_$_TransactionRequestDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionRequestDTOToJson(
      this,
    );
  }
}

abstract class _TransactionRequestDTO implements TransactionRequestDTO {
  const factory _TransactionRequestDTO(
      {@JsonKey(name: 'merchantCode') final String? merchantCode,
      @JsonKey(name: 'paymentAmount') final String? paymentAmount,
      @JsonKey(name: 'paymentMethod') final String? paymentMethod,
      @JsonKey(name: 'merchantOrderId') final String? merchantOrderId,
      @JsonKey(name: 'productDetails') final String? productDetails,
      @JsonKey(name: 'additionalParam') final String? additionalParam,
      @JsonKey(name: 'merchantUserInfo') final String? merchantUserInfo,
      @JsonKey(name: 'customerVaName') final String? customerVaName,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phoneNumber') final String? phoneNumber,
      @JsonKey(name: 'itemDetails') final List<ItemDetailDTO?>? itemDetails,
      @JsonKey(name: 'customerDetail') final CustomerDetailDTO? customerDetail,
      @JsonKey(name: 'callbackUrl') final String? callbackUrl,
      @JsonKey(name: 'returnUrl') final String? returnUrl,
      @JsonKey(name: 'signature') final String? signature,
      @JsonKey(name: 'expiryPeriod')
      final int? expiryPeriod}) = _$_TransactionRequestDTO;

  factory _TransactionRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_TransactionRequestDTO.fromJson;

  @override
  @JsonKey(name: 'merchantCode')
  String? get merchantCode;
  @override
  @JsonKey(name: 'paymentAmount')
  String? get paymentAmount;
  @override
  @JsonKey(name: 'paymentMethod')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'merchantOrderId')
  String? get merchantOrderId;
  @override
  @JsonKey(name: 'productDetails')
  String? get productDetails;
  @override
  @JsonKey(name: 'additionalParam')
  String? get additionalParam;
  @override
  @JsonKey(name: 'merchantUserInfo')
  String? get merchantUserInfo;
  @override
  @JsonKey(name: 'customerVaName')
  String? get customerVaName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'itemDetails')
  List<ItemDetailDTO?>? get itemDetails;
  @override
  @JsonKey(name: 'customerDetail')
  CustomerDetailDTO? get customerDetail;
  @override
  @JsonKey(name: 'callbackUrl')
  String? get callbackUrl;
  @override
  @JsonKey(name: 'returnUrl')
  String? get returnUrl;
  @override
  @JsonKey(name: 'signature')
  String? get signature;
  @override
  @JsonKey(name: 'expiryPeriod')
  int? get expiryPeriod;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionRequestDTOCopyWith<_$_TransactionRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
