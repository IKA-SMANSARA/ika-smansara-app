// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_campaign_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailCampaignDocumentResponse _$DetailCampaignDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _DetailCampaignDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailCampaignDocumentResponse {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignName')
  String? get campaignName => throw _privateConstructorUsedError;
  @JsonKey(name: 'goalAmount')
  int? get goalAmount => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'currentAmount')
  int? get currentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaignDescription')
  String? get campaignDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailCampaignDocumentResponseCopyWith<DetailCampaignDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCampaignDocumentResponseCopyWith<$Res> {
  factory $DetailCampaignDocumentResponseCopyWith(
          DetailCampaignDocumentResponse value,
          $Res Function(DetailCampaignDocumentResponse) then) =
      _$DetailCampaignDocumentResponseCopyWithImpl<$Res,
          DetailCampaignDocumentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'campaignName') String? campaignName,
      @JsonKey(name: 'goalAmount') int? goalAmount,
      @JsonKey(name: 'dateStartCampaign') String? dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') String? dateEndCampaign,
      @JsonKey(name: 'isDeleted') bool? isDeleted,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'photoThumbnail') String? photoThumbnail,
      @JsonKey(name: 'backerCount') int? backerCount,
      @JsonKey(name: 'categories') List<String>? categories,
      @JsonKey(name: 'currentAmount') int? currentAmount,
      @JsonKey(name: 'campaignDescription') String? campaignDescription});
}

/// @nodoc
class _$DetailCampaignDocumentResponseCopyWithImpl<$Res,
        $Val extends DetailCampaignDocumentResponse>
    implements $DetailCampaignDocumentResponseCopyWith<$Res> {
  _$DetailCampaignDocumentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? campaignName = freezed,
    Object? goalAmount = freezed,
    Object? dateStartCampaign = freezed,
    Object? dateEndCampaign = freezed,
    Object? isDeleted = freezed,
    Object? isActive = freezed,
    Object? photoThumbnail = freezed,
    Object? backerCount = freezed,
    Object? categories = freezed,
    Object? currentAmount = freezed,
    Object? campaignDescription = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignName: freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      goalAmount: freezed == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
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
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      campaignDescription: freezed == campaignDescription
          ? _value.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailCampaignDocumentResponseCopyWith<$Res>
    implements $DetailCampaignDocumentResponseCopyWith<$Res> {
  factory _$$_DetailCampaignDocumentResponseCopyWith(
          _$_DetailCampaignDocumentResponse value,
          $Res Function(_$_DetailCampaignDocumentResponse) then) =
      __$$_DetailCampaignDocumentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'campaignName') String? campaignName,
      @JsonKey(name: 'goalAmount') int? goalAmount,
      @JsonKey(name: 'dateStartCampaign') String? dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') String? dateEndCampaign,
      @JsonKey(name: 'isDeleted') bool? isDeleted,
      @JsonKey(name: 'isActive') bool? isActive,
      @JsonKey(name: 'photoThumbnail') String? photoThumbnail,
      @JsonKey(name: 'backerCount') int? backerCount,
      @JsonKey(name: 'categories') List<String>? categories,
      @JsonKey(name: 'currentAmount') int? currentAmount,
      @JsonKey(name: 'campaignDescription') String? campaignDescription});
}

/// @nodoc
class __$$_DetailCampaignDocumentResponseCopyWithImpl<$Res>
    extends _$DetailCampaignDocumentResponseCopyWithImpl<$Res,
        _$_DetailCampaignDocumentResponse>
    implements _$$_DetailCampaignDocumentResponseCopyWith<$Res> {
  __$$_DetailCampaignDocumentResponseCopyWithImpl(
      _$_DetailCampaignDocumentResponse _value,
      $Res Function(_$_DetailCampaignDocumentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? campaignName = freezed,
    Object? goalAmount = freezed,
    Object? dateStartCampaign = freezed,
    Object? dateEndCampaign = freezed,
    Object? isDeleted = freezed,
    Object? isActive = freezed,
    Object? photoThumbnail = freezed,
    Object? backerCount = freezed,
    Object? categories = freezed,
    Object? currentAmount = freezed,
    Object? campaignDescription = freezed,
  }) {
    return _then(_$_DetailCampaignDocumentResponse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignName: freezed == campaignName
          ? _value.campaignName
          : campaignName // ignore: cast_nullable_to_non_nullable
              as String?,
      goalAmount: freezed == goalAmount
          ? _value.goalAmount
          : goalAmount // ignore: cast_nullable_to_non_nullable
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
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      campaignDescription: freezed == campaignDescription
          ? _value.campaignDescription
          : campaignDescription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailCampaignDocumentResponse
    implements _DetailCampaignDocumentResponse {
  _$_DetailCampaignDocumentResponse(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'campaignName') this.campaignName,
      @JsonKey(name: 'goalAmount') this.goalAmount,
      @JsonKey(name: 'dateStartCampaign') this.dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') this.dateEndCampaign,
      @JsonKey(name: 'isDeleted') this.isDeleted,
      @JsonKey(name: 'isActive') this.isActive,
      @JsonKey(name: 'photoThumbnail') this.photoThumbnail,
      @JsonKey(name: 'backerCount') this.backerCount,
      @JsonKey(name: 'categories') final List<String>? categories,
      @JsonKey(name: 'currentAmount') this.currentAmount,
      @JsonKey(name: 'campaignDescription') this.campaignDescription})
      : _categories = categories;

  factory _$_DetailCampaignDocumentResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DetailCampaignDocumentResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'campaignName')
  final String? campaignName;
  @override
  @JsonKey(name: 'goalAmount')
  final int? goalAmount;
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
  @JsonKey(name: 'currentAmount')
  final int? currentAmount;
  @override
  @JsonKey(name: 'campaignDescription')
  final String? campaignDescription;

  @override
  String toString() {
    return 'DetailCampaignDocumentResponse(id: $id, campaignName: $campaignName, goalAmount: $goalAmount, dateStartCampaign: $dateStartCampaign, dateEndCampaign: $dateEndCampaign, isDeleted: $isDeleted, isActive: $isActive, photoThumbnail: $photoThumbnail, backerCount: $backerCount, categories: $categories, currentAmount: $currentAmount, campaignDescription: $campaignDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailCampaignDocumentResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.goalAmount, goalAmount) ||
                other.goalAmount == goalAmount) &&
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
                .equals(other._categories, _categories) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.campaignDescription, campaignDescription) ||
                other.campaignDescription == campaignDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      campaignName,
      goalAmount,
      dateStartCampaign,
      dateEndCampaign,
      isDeleted,
      isActive,
      photoThumbnail,
      backerCount,
      const DeepCollectionEquality().hash(_categories),
      currentAmount,
      campaignDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailCampaignDocumentResponseCopyWith<_$_DetailCampaignDocumentResponse>
      get copyWith => __$$_DetailCampaignDocumentResponseCopyWithImpl<
          _$_DetailCampaignDocumentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailCampaignDocumentResponseToJson(
      this,
    );
  }
}

abstract class _DetailCampaignDocumentResponse
    implements DetailCampaignDocumentResponse {
  factory _DetailCampaignDocumentResponse(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'campaignName') final String? campaignName,
      @JsonKey(name: 'goalAmount') final int? goalAmount,
      @JsonKey(name: 'dateStartCampaign') final String? dateStartCampaign,
      @JsonKey(name: 'dateEndCampaign') final String? dateEndCampaign,
      @JsonKey(name: 'isDeleted') final bool? isDeleted,
      @JsonKey(name: 'isActive') final bool? isActive,
      @JsonKey(name: 'photoThumbnail') final String? photoThumbnail,
      @JsonKey(name: 'backerCount') final int? backerCount,
      @JsonKey(name: 'categories') final List<String>? categories,
      @JsonKey(name: 'currentAmount') final int? currentAmount,
      @JsonKey(name: 'campaignDescription')
      final String? campaignDescription}) = _$_DetailCampaignDocumentResponse;

  factory _DetailCampaignDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_DetailCampaignDocumentResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'campaignName')
  String? get campaignName;
  @override
  @JsonKey(name: 'goalAmount')
  int? get goalAmount;
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
  @JsonKey(name: 'currentAmount')
  int? get currentAmount;
  @override
  @JsonKey(name: 'campaignDescription')
  String? get campaignDescription;
  @override
  @JsonKey(ignore: true)
  _$$_DetailCampaignDocumentResponseCopyWith<_$_DetailCampaignDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
