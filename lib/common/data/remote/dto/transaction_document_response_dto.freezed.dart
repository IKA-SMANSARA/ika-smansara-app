// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_document_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDocumentResponseDTO _$TransactionDocumentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _TransactionDocumentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionDocumentResponseDTO {
  @JsonKey(name: '\$id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: '\$createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$databaseId')
  String? get databaseId => throw _privateConstructorUsedError;
  @JsonKey(name: '\$collectionId')
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: '\$permissions')
  List<String>? get permissions => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderId')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignId')
  String? get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignName')
  String? get campaignName => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignImage')
  String? get campaignImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentStatus')
  String? get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDocumentResponseDTOCopyWith<TransactionDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDocumentResponseDTOCopyWith<$Res> {
  factory $TransactionDocumentResponseDTOCopyWith(
          TransactionDocumentResponseDTO value,
          $Res Function(TransactionDocumentResponseDTO) then) =
      _$TransactionDocumentResponseDTOCopyWithImpl<$Res,
          TransactionDocumentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$createdAt') String? createdAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: '\$databaseId') String? databaseId,
      @JsonKey(name: '\$collectionId') String? collectionId,
      @JsonKey(name: '\$permissions') List<String>? permissions,
      @JsonKey(name: 'orderId') String? orderId,
      @JsonKey(name: 'campaignId') String? campaignId,
      @JsonKey(name: 'campaignName') String? campaignName,
      @JsonKey(name: 'campaignImage') String? campaignImage,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'paymentStatus') String? paymentStatus,
      @JsonKey(name: 'userId') String? userId});
}

/// @nodoc
class _$TransactionDocumentResponseDTOCopyWithImpl<$Res,
        $Val extends TransactionDocumentResponseDTO>
    implements $TransactionDocumentResponseDTOCopyWith<$Res> {
  _$TransactionDocumentResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? databaseId = freezed,
    Object? collectionId = freezed,
    Object? permissions = freezed,
    Object? orderId = freezed,
    Object? campaignId = freezed,
    Object? campaignName = freezed,
    Object? campaignImage = freezed,
    Object? amount = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignName: freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignImage: freezed == campaignImage
          ? _value.campaignImage
          : campaignImage // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDocumentResponseDTOImplCopyWith<$Res>
    implements $TransactionDocumentResponseDTOCopyWith<$Res> {
  factory _$$TransactionDocumentResponseDTOImplCopyWith(
          _$TransactionDocumentResponseDTOImpl value,
          $Res Function(_$TransactionDocumentResponseDTOImpl) then) =
      __$$TransactionDocumentResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$createdAt') String? createdAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: '\$databaseId') String? databaseId,
      @JsonKey(name: '\$collectionId') String? collectionId,
      @JsonKey(name: '\$permissions') List<String>? permissions,
      @JsonKey(name: 'orderId') String? orderId,
      @JsonKey(name: 'campaignId') String? campaignId,
      @JsonKey(name: 'campaignName') String? campaignName,
      @JsonKey(name: 'campaignImage') String? campaignImage,
      @JsonKey(name: 'amount') int? amount,
      @JsonKey(name: 'paymentStatus') String? paymentStatus,
      @JsonKey(name: 'userId') String? userId});
}

/// @nodoc
class __$$TransactionDocumentResponseDTOImplCopyWithImpl<$Res>
    extends _$TransactionDocumentResponseDTOCopyWithImpl<$Res,
        _$TransactionDocumentResponseDTOImpl>
    implements _$$TransactionDocumentResponseDTOImplCopyWith<$Res> {
  __$$TransactionDocumentResponseDTOImplCopyWithImpl(
      _$TransactionDocumentResponseDTOImpl _value,
      $Res Function(_$TransactionDocumentResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? databaseId = freezed,
    Object? collectionId = freezed,
    Object? permissions = freezed,
    Object? orderId = freezed,
    Object? campaignId = freezed,
    Object? campaignName = freezed,
    Object? campaignImage = freezed,
    Object? amount = freezed,
    Object? paymentStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$TransactionDocumentResponseDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignName: freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignImage: freezed == campaignImage
          ? _value.campaignImage
          : campaignImage // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDocumentResponseDTOImpl
    implements _TransactionDocumentResponseDTO {
  _$TransactionDocumentResponseDTOImpl(
      {@JsonKey(name: '\$id') this.id,
      @JsonKey(name: '\$createdAt') this.createdAt,
      @JsonKey(name: '\$updatedAt') this.updatedAt,
      @JsonKey(name: '\$databaseId') this.databaseId,
      @JsonKey(name: '\$collectionId') this.collectionId,
      @JsonKey(name: '\$permissions') final List<String>? permissions,
      @JsonKey(name: 'orderId') this.orderId,
      @JsonKey(name: 'campaignId') this.campaignId,
      @JsonKey(name: 'campaignName') this.campaignName,
      @JsonKey(name: 'campaignImage') this.campaignImage,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'paymentStatus') this.paymentStatus,
      @JsonKey(name: 'userId') this.userId})
      : _permissions = permissions;

  factory _$TransactionDocumentResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionDocumentResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: '\$id')
  final String? id;
  @override
  @JsonKey(name: '\$createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: '\$updatedAt')
  final String? updatedAt;
  @override
  @JsonKey(name: '\$databaseId')
  final String? databaseId;
  @override
  @JsonKey(name: '\$collectionId')
  final String? collectionId;
  final List<String>? _permissions;
  @override
  @JsonKey(name: '\$permissions')
  List<String>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'orderId')
  final String? orderId;
  @override
  @JsonKey(name: 'campaignId')
  final String? campaignId;
  @override
  @JsonKey(name: 'campaignName')
  final String? campaignName;
  @override
  @JsonKey(name: 'campaignImage')
  final String? campaignImage;
  @override
  @JsonKey(name: 'amount')
  final int? amount;
  @override
  @JsonKey(name: 'paymentStatus')
  final String? paymentStatus;
  @override
  @JsonKey(name: 'userId')
  final String? userId;

  @override
  String toString() {
    return 'TransactionDocumentResponseDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, databaseId: $databaseId, collectionId: $collectionId, permissions: $permissions, orderId: $orderId, campaignId: $campaignId, campaignName: $campaignName, campaignImage: $campaignImage, amount: $amount, paymentStatus: $paymentStatus, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDocumentResponseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.campaignImage, campaignImage) ||
                other.campaignImage == campaignImage) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      databaseId,
      collectionId,
      const DeepCollectionEquality().hash(_permissions),
      orderId,
      campaignId,
      campaignName,
      campaignImage,
      amount,
      paymentStatus,
      userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDocumentResponseDTOImplCopyWith<
          _$TransactionDocumentResponseDTOImpl>
      get copyWith => __$$TransactionDocumentResponseDTOImplCopyWithImpl<
          _$TransactionDocumentResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDocumentResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _TransactionDocumentResponseDTO
    implements TransactionDocumentResponseDTO {
  factory _TransactionDocumentResponseDTO(
          {@JsonKey(name: '\$id') final String? id,
          @JsonKey(name: '\$createdAt') final String? createdAt,
          @JsonKey(name: '\$updatedAt') final String? updatedAt,
          @JsonKey(name: '\$databaseId') final String? databaseId,
          @JsonKey(name: '\$collectionId') final String? collectionId,
          @JsonKey(name: '\$permissions') final List<String>? permissions,
          @JsonKey(name: 'orderId') final String? orderId,
          @JsonKey(name: 'campaignId') final String? campaignId,
          @JsonKey(name: 'campaignName') final String? campaignName,
          @JsonKey(name: 'campaignImage') final String? campaignImage,
          @JsonKey(name: 'amount') final int? amount,
          @JsonKey(name: 'paymentStatus') final String? paymentStatus,
          @JsonKey(name: 'userId') final String? userId}) =
      _$TransactionDocumentResponseDTOImpl;

  factory _TransactionDocumentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$TransactionDocumentResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: '\$id')
  String? get id;
  @override
  @JsonKey(name: '\$createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: '\$updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(name: '\$databaseId')
  String? get databaseId;
  @override
  @JsonKey(name: '\$collectionId')
  String? get collectionId;
  @override
  @JsonKey(name: '\$permissions')
  List<String>? get permissions;
  @override
  @JsonKey(name: 'orderId')
  String? get orderId;
  @override
  @JsonKey(name: 'campaignId')
  String? get campaignId;
  @override
  @JsonKey(name: 'campaignName')
  String? get campaignName;
  @override
  @JsonKey(name: 'campaignImage')
  String? get campaignImage;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(name: 'paymentStatus')
  String? get paymentStatus;
  @override
  @JsonKey(name: 'userId')
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDocumentResponseDTOImplCopyWith<
          _$TransactionDocumentResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
