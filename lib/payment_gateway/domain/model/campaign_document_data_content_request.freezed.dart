// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_data_content_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignDocumentDataContentRequest _$CampaignDocumentDataContentRequestFromJson(
    Map<String, dynamic> json) {
  return _CampaignDocumentDataContentRequest.fromJson(json);
}

/// @nodoc
mixin _$CampaignDocumentDataContentRequest {
  int? get backerCount => throw _privateConstructorUsedError;
  int? get currentAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDocumentDataContentRequestCopyWith<
          CampaignDocumentDataContentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentDataContentRequestCopyWith<$Res> {
  factory $CampaignDocumentDataContentRequestCopyWith(
          CampaignDocumentDataContentRequest value,
          $Res Function(CampaignDocumentDataContentRequest) then) =
      _$CampaignDocumentDataContentRequestCopyWithImpl<$Res,
          CampaignDocumentDataContentRequest>;
  @useResult
  $Res call({int? backerCount, int? currentAmount});
}

/// @nodoc
class _$CampaignDocumentDataContentRequestCopyWithImpl<$Res,
        $Val extends CampaignDocumentDataContentRequest>
    implements $CampaignDocumentDataContentRequestCopyWith<$Res> {
  _$CampaignDocumentDataContentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backerCount = freezed,
    Object? currentAmount = freezed,
  }) {
    return _then(_value.copyWith(
      backerCount: freezed == backerCount
          ? _value.backerCount
          : backerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignDocumentDataContentRequestImplCopyWith<$Res>
    implements $CampaignDocumentDataContentRequestCopyWith<$Res> {
  factory _$$CampaignDocumentDataContentRequestImplCopyWith(
          _$CampaignDocumentDataContentRequestImpl value,
          $Res Function(_$CampaignDocumentDataContentRequestImpl) then) =
      __$$CampaignDocumentDataContentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? backerCount, int? currentAmount});
}

/// @nodoc
class __$$CampaignDocumentDataContentRequestImplCopyWithImpl<$Res>
    extends _$CampaignDocumentDataContentRequestCopyWithImpl<$Res,
        _$CampaignDocumentDataContentRequestImpl>
    implements _$$CampaignDocumentDataContentRequestImplCopyWith<$Res> {
  __$$CampaignDocumentDataContentRequestImplCopyWithImpl(
      _$CampaignDocumentDataContentRequestImpl _value,
      $Res Function(_$CampaignDocumentDataContentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backerCount = freezed,
    Object? currentAmount = freezed,
  }) {
    return _then(_$CampaignDocumentDataContentRequestImpl(
      backerCount: freezed == backerCount
          ? _value.backerCount
          : backerCount // ignore: cast_nullable_to_non_nullable
              as int?,
      currentAmount: freezed == currentAmount
          ? _value.currentAmount
          : currentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignDocumentDataContentRequestImpl
    implements _CampaignDocumentDataContentRequest {
  _$CampaignDocumentDataContentRequestImpl(
      {this.backerCount, this.currentAmount});

  factory _$CampaignDocumentDataContentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CampaignDocumentDataContentRequestImplFromJson(json);

  @override
  final int? backerCount;
  @override
  final int? currentAmount;

  @override
  String toString() {
    return 'CampaignDocumentDataContentRequest(backerCount: $backerCount, currentAmount: $currentAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDocumentDataContentRequestImpl &&
            (identical(other.backerCount, backerCount) ||
                other.backerCount == backerCount) &&
            (identical(other.currentAmount, currentAmount) ||
                other.currentAmount == currentAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, backerCount, currentAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDocumentDataContentRequestImplCopyWith<
          _$CampaignDocumentDataContentRequestImpl>
      get copyWith => __$$CampaignDocumentDataContentRequestImplCopyWithImpl<
          _$CampaignDocumentDataContentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDocumentDataContentRequestImplToJson(
      this,
    );
  }
}

abstract class _CampaignDocumentDataContentRequest
    implements CampaignDocumentDataContentRequest {
  factory _CampaignDocumentDataContentRequest(
      {final int? backerCount,
      final int? currentAmount}) = _$CampaignDocumentDataContentRequestImpl;

  factory _CampaignDocumentDataContentRequest.fromJson(
          Map<String, dynamic> json) =
      _$CampaignDocumentDataContentRequestImpl.fromJson;

  @override
  int? get backerCount;
  @override
  int? get currentAmount;
  @override
  @JsonKey(ignore: true)
  _$$CampaignDocumentDataContentRequestImplCopyWith<
          _$CampaignDocumentDataContentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
