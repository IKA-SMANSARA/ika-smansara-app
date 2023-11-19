// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignDocumentResponseDTO _$CampaignDocumentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _CampaignItemResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CampaignDocumentResponseDTO {
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
  @JsonKey(name: 'campaignName')
  String? get campaignName => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignDescription')
  String? get campaignDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'goalAmount')
  int? get goalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentAmount')
  int? get currentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateStartCampaign')
  String? get dateStartCampaign => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateEndCampaign')
  String? get dateEndCampaign => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'photoThumbnail')
  String? get photoThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'backerCount')
  int? get backerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'categories')
  List<String>? get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDocumentResponseDTOCopyWith<CampaignDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentResponseDTOCopyWith<$Res> {
  factory $CampaignDocumentResponseDTOCopyWith(
          CampaignDocumentResponseDTO value,
          $Res Function(CampaignDocumentResponseDTO) then) =
      _$CampaignDocumentResponseDTOCopyWithImpl<$Res,
          CampaignDocumentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$createdAt') String? createdAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: '\$databaseId') String? databaseId,
      @JsonKey(name: '\$collectionId') String? collectionId,
      @JsonKey(name: '\$permissions') List<String>? permissions,
      @JsonKey(name: 'campaignName') String? campaignName,
      @JsonKey(name: 'campaignDescription') String? campaignDescription,
      @JsonKey(name: 'goalAmount') int? goalAmount,
      @JsonKey(name: 'currentAmount') int? currentAmount,
      @JsonKey(name: 'dateStartCampaign') String? dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') String? dateEndCampaign,
      @JsonKey(name: 'isDeleted') bool? isDeleted,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'photoThumbnail') String? photoThumbnail,
      @JsonKey(name: 'backerCount') int? backerCount,
      @JsonKey(name: 'categories') List<String>? categories});
}

/// @nodoc
class _$CampaignDocumentResponseDTOCopyWithImpl<$Res,
        $Val extends CampaignDocumentResponseDTO>
    implements $CampaignDocumentResponseDTOCopyWith<$Res> {
  _$CampaignDocumentResponseDTOCopyWithImpl(this._value, this._then);

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
    Object? campaignName = freezed,
    Object? campaignDescription = freezed,
    Object? goalAmount = freezed,
    Object? currentAmount = freezed,
    Object? dateStartCampaign = freezed,
    Object? dateEndCampaign = freezed,
    Object? isDeleted = freezed,
    Object? isActive = freezed,
    Object? photoThumbnail = freezed,
    Object? backerCount = freezed,
    Object? categories = freezed,
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
      campaignName: freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignDescription: freezed == campaignDescription
          ? _value.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      goalAmount: freezed == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateStartCampaign: freezed == dateStartCampaign
          ? _value.dateStartCampaign
          : dateStartCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEndCampaign: freezed == dateEndCampaign
          ? _value.dateEndCampaign
          : dateEndCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      photoThumbnail: freezed == photoThumbnail
          ? _value.photoThumbnail
          : photoThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      backerCount: freezed == backerCount
          ? _value.backerCount
          : backerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignItemResponseDTOImplCopyWith<$Res>
    implements $CampaignDocumentResponseDTOCopyWith<$Res> {
  factory _$$CampaignItemResponseDTOImplCopyWith(
          _$CampaignItemResponseDTOImpl value,
          $Res Function(_$CampaignItemResponseDTOImpl) then) =
      __$$CampaignItemResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$createdAt') String? createdAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: '\$databaseId') String? databaseId,
      @JsonKey(name: '\$collectionId') String? collectionId,
      @JsonKey(name: '\$permissions') List<String>? permissions,
      @JsonKey(name: 'campaignName') String? campaignName,
      @JsonKey(name: 'campaignDescription') String? campaignDescription,
      @JsonKey(name: 'goalAmount') int? goalAmount,
      @JsonKey(name: 'currentAmount') int? currentAmount,
      @JsonKey(name: 'dateStartCampaign') String? dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') String? dateEndCampaign,
      @JsonKey(name: 'isDeleted') bool? isDeleted,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'photoThumbnail') String? photoThumbnail,
      @JsonKey(name: 'backerCount') int? backerCount,
      @JsonKey(name: 'categories') List<String>? categories});
}

/// @nodoc
class __$$CampaignItemResponseDTOImplCopyWithImpl<$Res>
    extends _$CampaignDocumentResponseDTOCopyWithImpl<$Res,
        _$CampaignItemResponseDTOImpl>
    implements _$$CampaignItemResponseDTOImplCopyWith<$Res> {
  __$$CampaignItemResponseDTOImplCopyWithImpl(
      _$CampaignItemResponseDTOImpl _value,
      $Res Function(_$CampaignItemResponseDTOImpl) _then)
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
    Object? campaignName = freezed,
    Object? campaignDescription = freezed,
    Object? goalAmount = freezed,
    Object? currentAmount = freezed,
    Object? dateStartCampaign = freezed,
    Object? dateEndCampaign = freezed,
    Object? isDeleted = freezed,
    Object? isActive = freezed,
    Object? photoThumbnail = freezed,
    Object? backerCount = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$CampaignItemResponseDTOImpl(
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
      campaignName: freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignDescription: freezed == campaignDescription
          ? _value.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      goalAmount: freezed == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateStartCampaign: freezed == dateStartCampaign
          ? _value.dateStartCampaign
          : dateStartCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      dateEndCampaign: freezed == dateEndCampaign
          ? _value.dateEndCampaign
          : dateEndCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      photoThumbnail: freezed == photoThumbnail
          ? _value.photoThumbnail
          : photoThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      backerCount: freezed == backerCount
          ? _value.backerCount
          : backerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignItemResponseDTOImpl implements _CampaignItemResponseDTO {
  _$CampaignItemResponseDTOImpl(
      {@JsonKey(name: '\$id') this.id,
      @JsonKey(name: '\$createdAt') this.createdAt,
      @JsonKey(name: '\$updatedAt') this.updatedAt,
      @JsonKey(name: '\$databaseId') this.databaseId,
      @JsonKey(name: '\$collectionId') this.collectionId,
      @JsonKey(name: '\$permissions') final List<String>? permissions,
      @JsonKey(name: 'campaignName') this.campaignName,
      @JsonKey(name: 'campaignDescription') this.campaignDescription,
      @JsonKey(name: 'goalAmount') this.goalAmount,
      @JsonKey(name: 'currentAmount') this.currentAmount,
      @JsonKey(name: 'dateStartCampaign') this.dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') this.dateEndCampaign,
      @JsonKey(name: 'isDeleted') this.isDeleted,
      @JsonKey(name: 'isActive') this.isActive,
      @JsonKey(name: 'photoThumbnail') this.photoThumbnail,
      @JsonKey(name: 'backerCount') this.backerCount,
      @JsonKey(name: 'categories') final List<String>? categories})
      : _permissions = permissions,
        _categories = categories;

  factory _$CampaignItemResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignItemResponseDTOImplFromJson(json);

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
  @JsonKey(name: 'campaignName')
  final String? campaignName;
  @override
  @JsonKey(name: 'campaignDescription')
  final String? campaignDescription;
  @override
  @JsonKey(name: 'goalAmount')
  final int? goalAmount;
  @override
  @JsonKey(name: 'currentAmount')
  final int? currentAmount;
  @override
  @JsonKey(name: 'dateStartCampaign')
  final String? dateStartCampaign;
  @override
  @JsonKey(name: 'dateEndCampaign')
  final String? dateEndCampaign;
  @override
  @JsonKey(name: 'isDeleted')
  final bool? isDeleted;
  @override
  @JsonKey(name: 'isActive')
  final bool? isActive;
  @override
  @JsonKey(name: 'photoThumbnail')
  final String? photoThumbnail;
  @override
  @JsonKey(name: 'backerCount')
  final int? backerCount;
  final List<String>? _categories;
  @override
  @JsonKey(name: 'categories')
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CampaignDocumentResponseDTO(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, databaseId: $databaseId, collectionId: $collectionId, permissions: $permissions, campaignName: $campaignName, campaignDescription: $campaignDescription, goalAmount: $goalAmount, currentAmount: $currentAmount, dateStartCampaign: $dateStartCampaign, dateEndCampaign: $dateEndCampaign, isDeleted: $isDeleted, isActive: $isActive, photoThumbnail: $photoThumbnail, backerCount: $backerCount, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignItemResponseDTOImpl &&
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
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.campaignDescription, campaignDescription) ||
                other.campaignDescription == campaignDescription) &&
            (identical(other.goalAmount, goalAmount) ||
                other.goalAmount == goalAmount) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.dateStartCampaign, dateStartCampaign) ||
                other.dateStartCampaign == dateStartCampaign) &&
            (identical(other.dateEndCampaign, dateEndCampaign) ||
                other.dateEndCampaign == dateEndCampaign) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.photoThumbnail, photoThumbnail) ||
                other.photoThumbnail == photoThumbnail) &&
            (identical(other.backerCount, backerCount) ||
                other.backerCount == backerCount) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
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
      campaignName,
      campaignDescription,
      goalAmount,
      currentAmount,
      dateStartCampaign,
      dateEndCampaign,
      isDeleted,
      isActive,
      photoThumbnail,
      backerCount,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignItemResponseDTOImplCopyWith<_$CampaignItemResponseDTOImpl>
      get copyWith => __$$CampaignItemResponseDTOImplCopyWithImpl<
          _$CampaignItemResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignItemResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _CampaignItemResponseDTO implements CampaignDocumentResponseDTO {
  factory _CampaignItemResponseDTO(
      {@JsonKey(name: '\$id') final String? id,
      @JsonKey(name: '\$createdAt') final String? createdAt,
      @JsonKey(name: '\$updatedAt') final String? updatedAt,
      @JsonKey(name: '\$databaseId') final String? databaseId,
      @JsonKey(name: '\$collectionId') final String? collectionId,
      @JsonKey(name: '\$permissions') final List<String>? permissions,
      @JsonKey(name: 'campaignName') final String? campaignName,
      @JsonKey(name: 'campaignDescription') final String? campaignDescription,
      @JsonKey(name: 'goalAmount') final int? goalAmount,
      @JsonKey(name: 'currentAmount') final int? currentAmount,
      @JsonKey(name: 'dateStartCampaign') final String? dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') final String? dateEndCampaign,
      @JsonKey(name: 'isDeleted') final bool? isDeleted,
      @JsonKey(name: 'isActive') final bool? isActive,
      @JsonKey(name: 'photoThumbnail') final String? photoThumbnail,
      @JsonKey(name: 'backerCount') final int? backerCount,
      @JsonKey(name: 'categories')
      final List<String>? categories}) = _$CampaignItemResponseDTOImpl;

  factory _CampaignItemResponseDTO.fromJson(Map<String, dynamic> json) =
      _$CampaignItemResponseDTOImpl.fromJson;

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
  @JsonKey(name: 'campaignName')
  String? get campaignName;
  @override
  @JsonKey(name: 'campaignDescription')
  String? get campaignDescription;
  @override
  @JsonKey(name: 'goalAmount')
  int? get goalAmount;
  @override
  @JsonKey(name: 'currentAmount')
  int? get currentAmount;
  @override
  @JsonKey(name: 'dateStartCampaign')
  String? get dateStartCampaign;
  @override
  @JsonKey(name: 'dateEndCampaign')
  String? get dateEndCampaign;
  @override
  @JsonKey(name: 'isDeleted')
  bool? get isDeleted;
  @override
  @JsonKey(name: 'isActive')
  bool? get isActive;
  @override
  @JsonKey(name: 'photoThumbnail')
  String? get photoThumbnail;
  @override
  @JsonKey(name: 'backerCount')
  int? get backerCount;
  @override
  @JsonKey(name: 'categories')
  List<String>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$CampaignItemResponseDTOImplCopyWith<_$CampaignItemResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
