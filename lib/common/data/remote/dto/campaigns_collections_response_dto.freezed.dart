// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaigns_collections_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignsCollectionsResponseDTO _$CampaignsCollectionsResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _CampaignsDocumentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CampaignsCollectionsResponseDTO {
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<CampaignDocumentResponseDTO>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignsCollectionsResponseDTOCopyWith<CampaignsCollectionsResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignsCollectionsResponseDTOCopyWith<$Res> {
  factory $CampaignsCollectionsResponseDTOCopyWith(
          CampaignsCollectionsResponseDTO value,
          $Res Function(CampaignsCollectionsResponseDTO) then) =
      _$CampaignsCollectionsResponseDTOCopyWithImpl<$Res,
          CampaignsCollectionsResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents')
      List<CampaignDocumentResponseDTO>? documents});
}

/// @nodoc
class _$CampaignsCollectionsResponseDTOCopyWithImpl<$Res,
        $Val extends CampaignsCollectionsResponseDTO>
    implements $CampaignsCollectionsResponseDTOCopyWith<$Res> {
  _$CampaignsCollectionsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentResponseDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CampaignsDocumentResponseDTOCopyWith<$Res>
    implements $CampaignsCollectionsResponseDTOCopyWith<$Res> {
  factory _$$_CampaignsDocumentResponseDTOCopyWith(
          _$_CampaignsDocumentResponseDTO value,
          $Res Function(_$_CampaignsDocumentResponseDTO) then) =
      __$$_CampaignsDocumentResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents')
      List<CampaignDocumentResponseDTO>? documents});
}

/// @nodoc
class __$$_CampaignsDocumentResponseDTOCopyWithImpl<$Res>
    extends _$CampaignsCollectionsResponseDTOCopyWithImpl<$Res,
        _$_CampaignsDocumentResponseDTO>
    implements _$$_CampaignsDocumentResponseDTOCopyWith<$Res> {
  __$$_CampaignsDocumentResponseDTOCopyWithImpl(
      _$_CampaignsDocumentResponseDTO _value,
      $Res Function(_$_CampaignsDocumentResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_CampaignsDocumentResponseDTO(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentResponseDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CampaignsDocumentResponseDTO implements _CampaignsDocumentResponseDTO {
  _$_CampaignsDocumentResponseDTO(
      {@JsonKey(name: 'total') this.total,
      @JsonKey(name: 'documents')
      final List<CampaignDocumentResponseDTO>? documents})
      : _documents = documents;

  factory _$_CampaignsDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CampaignsDocumentResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  final List<CampaignDocumentResponseDTO>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<CampaignDocumentResponseDTO>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CampaignsCollectionsResponseDTO(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampaignsDocumentResponseDTO &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CampaignsDocumentResponseDTOCopyWith<_$_CampaignsDocumentResponseDTO>
      get copyWith => __$$_CampaignsDocumentResponseDTOCopyWithImpl<
          _$_CampaignsDocumentResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampaignsDocumentResponseDTOToJson(
      this,
    );
  }
}

abstract class _CampaignsDocumentResponseDTO
    implements CampaignsCollectionsResponseDTO {
  factory _CampaignsDocumentResponseDTO(
          {@JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'documents')
          final List<CampaignDocumentResponseDTO>? documents}) =
      _$_CampaignsDocumentResponseDTO;

  factory _CampaignsDocumentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_CampaignsDocumentResponseDTO.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'documents')
  List<CampaignDocumentResponseDTO>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$_CampaignsDocumentResponseDTOCopyWith<_$_CampaignsDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}