// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignDocumentResponse _$CampaignDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _CampaignDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$CampaignDocumentResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get campaignName => throw _privateConstructorUsedError;
  int? get goalAmount => throw _privateConstructorUsedError;
  int? get currentAmount => throw _privateConstructorUsedError;
  String? get dateEndCampaign => throw _privateConstructorUsedError;
  String? get photoThumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDocumentResponseCopyWith<CampaignDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentResponseCopyWith<$Res> {
  factory $CampaignDocumentResponseCopyWith(CampaignDocumentResponse value,
          $Res Function(CampaignDocumentResponse) then) =
      _$CampaignDocumentResponseCopyWithImpl<$Res, CampaignDocumentResponse>;
  @useResult
  $Res call(
      {String? id,
      String? campaignName,
      int? goalAmount,
      int? currentAmount,
      String? dateEndCampaign,
      String? photoThumbnail});
}

/// @nodoc
class _$CampaignDocumentResponseCopyWithImpl<$Res,
        $Val extends CampaignDocumentResponse>
    implements $CampaignDocumentResponseCopyWith<$Res> {
  _$CampaignDocumentResponseCopyWithImpl(this._value, this._then);

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
    Object? currentAmount = freezed,
    Object? dateEndCampaign = freezed,
    Object? photoThumbnail = freezed,
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
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateEndCampaign: freezed == dateEndCampaign
          ? _value.dateEndCampaign
          : dateEndCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      photoThumbnail: freezed == photoThumbnail
          ? _value.photoThumbnail
          : photoThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignDocumentResponseImplCopyWith<$Res>
    implements $CampaignDocumentResponseCopyWith<$Res> {
  factory _$$CampaignDocumentResponseImplCopyWith(
          _$CampaignDocumentResponseImpl value,
          $Res Function(_$CampaignDocumentResponseImpl) then) =
      __$$CampaignDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? campaignName,
      int? goalAmount,
      int? currentAmount,
      String? dateEndCampaign,
      String? photoThumbnail});
}

/// @nodoc
class __$$CampaignDocumentResponseImplCopyWithImpl<$Res>
    extends _$CampaignDocumentResponseCopyWithImpl<$Res,
        _$CampaignDocumentResponseImpl>
    implements _$$CampaignDocumentResponseImplCopyWith<$Res> {
  __$$CampaignDocumentResponseImplCopyWithImpl(
      _$CampaignDocumentResponseImpl _value,
      $Res Function(_$CampaignDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? campaignName = freezed,
    Object? goalAmount = freezed,
    Object? currentAmount = freezed,
    Object? dateEndCampaign = freezed,
    Object? photoThumbnail = freezed,
  }) {
    return _then(_$CampaignDocumentResponseImpl(
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
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dateEndCampaign: freezed == dateEndCampaign
          ? _value.dateEndCampaign
          : dateEndCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      photoThumbnail: freezed == photoThumbnail
          ? _value.photoThumbnail
          : photoThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignDocumentResponseImpl implements _CampaignDocumentResponse {
  _$CampaignDocumentResponseImpl(
      {this.id,
      this.campaignName,
      this.goalAmount,
      this.currentAmount,
      this.dateEndCampaign,
      this.photoThumbnail});

  factory _$CampaignDocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignDocumentResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? campaignName;
  @override
  final int? goalAmount;
  @override
  final int? currentAmount;
  @override
  final String? dateEndCampaign;
  @override
  final String? photoThumbnail;

  @override
  String toString() {
    return 'CampaignDocumentResponse(id: $id, campaignName: $campaignName, goalAmount: $goalAmount, currentAmount: $currentAmount, dateEndCampaign: $dateEndCampaign, photoThumbnail: $photoThumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDocumentResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignName, campaignName) ||
                other.campaignName == campaignName) &&
            (identical(other.goalAmount, goalAmount) ||
                other.goalAmount == goalAmount) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount) &&
            (identical(other.dateEndCampaign, dateEndCampaign) ||
                other.dateEndCampaign == dateEndCampaign) &&
            (identical(other.photoThumbnail, photoThumbnail) ||
                other.photoThumbnail == photoThumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, campaignName, goalAmount,
      currentAmount, dateEndCampaign, photoThumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDocumentResponseImplCopyWith<_$CampaignDocumentResponseImpl>
      get copyWith => __$$CampaignDocumentResponseImplCopyWithImpl<
          _$CampaignDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _CampaignDocumentResponse implements CampaignDocumentResponse {
  factory _CampaignDocumentResponse(
      {final String? id,
      final String? campaignName,
      final int? goalAmount,
      final int? currentAmount,
      final String? dateEndCampaign,
      final String? photoThumbnail}) = _$CampaignDocumentResponseImpl;

  factory _CampaignDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$CampaignDocumentResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get campaignName;
  @override
  int? get goalAmount;
  @override
  int? get currentAmount;
  @override
  String? get dateEndCampaign;
  @override
  String? get photoThumbnail;
  @override
  @JsonKey(ignore: true)
  _$$CampaignDocumentResponseImplCopyWith<_$CampaignDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
