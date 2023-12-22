// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_data_content_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignDocumentDataContentRequestDTO
    _$CampaignDocumentDataContentRequestDTOFromJson(Map<String, dynamic> json) {
  return _CampaignDocumentDataContentRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$CampaignDocumentDataContentRequestDTO {
  @JsonKey(name: 'backerCount')
  int? get backerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currentAmount')
  int? get currentAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDocumentDataContentRequestDTOCopyWith<
          CampaignDocumentDataContentRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentDataContentRequestDTOCopyWith<$Res> {
  factory $CampaignDocumentDataContentRequestDTOCopyWith(
          CampaignDocumentDataContentRequestDTO value,
          $Res Function(CampaignDocumentDataContentRequestDTO) then) =
      _$CampaignDocumentDataContentRequestDTOCopyWithImpl<$Res,
          CampaignDocumentDataContentRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backerCount') int? backerCount,
      @JsonKey(name: 'currentAmount') int? currentAmount});
}

/// @nodoc
class _$CampaignDocumentDataContentRequestDTOCopyWithImpl<$Res,
        $Val extends CampaignDocumentDataContentRequestDTO>
    implements $CampaignDocumentDataContentRequestDTOCopyWith<$Res> {
  _$CampaignDocumentDataContentRequestDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$CampaignDocumentDataContentRequestDTOImplCopyWith<$Res>
    implements $CampaignDocumentDataContentRequestDTOCopyWith<$Res> {
  factory _$$CampaignDocumentDataContentRequestDTOImplCopyWith(
          _$CampaignDocumentDataContentRequestDTOImpl value,
          $Res Function(_$CampaignDocumentDataContentRequestDTOImpl) then) =
      __$$CampaignDocumentDataContentRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backerCount') int? backerCount,
      @JsonKey(name: 'currentAmount') int? currentAmount});
}

/// @nodoc
class __$$CampaignDocumentDataContentRequestDTOImplCopyWithImpl<$Res>
    extends _$CampaignDocumentDataContentRequestDTOCopyWithImpl<$Res,
        _$CampaignDocumentDataContentRequestDTOImpl>
    implements _$$CampaignDocumentDataContentRequestDTOImplCopyWith<$Res> {
  __$$CampaignDocumentDataContentRequestDTOImplCopyWithImpl(
      _$CampaignDocumentDataContentRequestDTOImpl _value,
      $Res Function(_$CampaignDocumentDataContentRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backerCount = freezed,
    Object? currentAmount = freezed,
  }) {
    return _then(_$CampaignDocumentDataContentRequestDTOImpl(
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
class _$CampaignDocumentDataContentRequestDTOImpl
    implements _CampaignDocumentDataContentRequestDTO {
  _$CampaignDocumentDataContentRequestDTOImpl(
      {@JsonKey(name: 'backerCount') this.backerCount,
      @JsonKey(name: 'currentAmount') this.currentAmount});

  factory _$CampaignDocumentDataContentRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CampaignDocumentDataContentRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'backerCount')
  final int? backerCount;
  @override
  @JsonKey(name: 'currentAmount')
  final int? currentAmount;

  @override
  String toString() {
    return 'CampaignDocumentDataContentRequestDTO(backerCount: $backerCount, currentAmount: $currentAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDocumentDataContentRequestDTOImpl &&
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
  _$$CampaignDocumentDataContentRequestDTOImplCopyWith<
          _$CampaignDocumentDataContentRequestDTOImpl>
      get copyWith => __$$CampaignDocumentDataContentRequestDTOImplCopyWithImpl<
          _$CampaignDocumentDataContentRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDocumentDataContentRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _CampaignDocumentDataContentRequestDTO
    implements CampaignDocumentDataContentRequestDTO {
  factory _CampaignDocumentDataContentRequestDTO(
          {@JsonKey(name: 'backerCount') final int? backerCount,
          @JsonKey(name: 'currentAmount') final int? currentAmount}) =
      _$CampaignDocumentDataContentRequestDTOImpl;

  factory _CampaignDocumentDataContentRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$CampaignDocumentDataContentRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'backerCount')
  int? get backerCount;
  @override
  @JsonKey(name: 'currentAmount')
  int? get currentAmount;
  @override
  @JsonKey(ignore: true)
  _$$CampaignDocumentDataContentRequestDTOImplCopyWith<
          _$CampaignDocumentDataContentRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
