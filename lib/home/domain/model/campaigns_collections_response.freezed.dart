// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaigns_collections_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignsCollectionsResponse _$CampaignsCollectionsResponseFromJson(
    Map<String, dynamic> json) {
  return _CampaignsCollectionsResponse.fromJson(json);
}

/// @nodoc
mixin _$CampaignsCollectionsResponse {
  int? get total => throw _privateConstructorUsedError;
  List<CampaignDocumentResponse>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignsCollectionsResponseCopyWith<CampaignsCollectionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignsCollectionsResponseCopyWith<$Res> {
  factory $CampaignsCollectionsResponseCopyWith(
          CampaignsCollectionsResponse value,
          $Res Function(CampaignsCollectionsResponse) then) =
      _$CampaignsCollectionsResponseCopyWithImpl<$Res,
          CampaignsCollectionsResponse>;
  @useResult
  $Res call({int? total, List<CampaignDocumentResponse>? documents});
}

/// @nodoc
class _$CampaignsCollectionsResponseCopyWithImpl<$Res,
        $Val extends CampaignsCollectionsResponse>
    implements $CampaignsCollectionsResponseCopyWith<$Res> {
  _$CampaignsCollectionsResponseCopyWithImpl(this._value, this._then);

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
              as List<CampaignDocumentResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignsCollectionsResponseImplCopyWith<$Res>
    implements $CampaignsCollectionsResponseCopyWith<$Res> {
  factory _$$CampaignsCollectionsResponseImplCopyWith(
          _$CampaignsCollectionsResponseImpl value,
          $Res Function(_$CampaignsCollectionsResponseImpl) then) =
      __$$CampaignsCollectionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<CampaignDocumentResponse>? documents});
}

/// @nodoc
class __$$CampaignsCollectionsResponseImplCopyWithImpl<$Res>
    extends _$CampaignsCollectionsResponseCopyWithImpl<$Res,
        _$CampaignsCollectionsResponseImpl>
    implements _$$CampaignsCollectionsResponseImplCopyWith<$Res> {
  __$$CampaignsCollectionsResponseImplCopyWithImpl(
      _$CampaignsCollectionsResponseImpl _value,
      $Res Function(_$CampaignsCollectionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$CampaignsCollectionsResponseImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignsCollectionsResponseImpl
    implements _CampaignsCollectionsResponse {
  _$CampaignsCollectionsResponseImpl(
      {this.total, final List<CampaignDocumentResponse>? documents = const []})
      : _documents = documents;

  factory _$CampaignsCollectionsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CampaignsCollectionsResponseImplFromJson(json);

  @override
  final int? total;
  final List<CampaignDocumentResponse>? _documents;
  @override
  @JsonKey()
  List<CampaignDocumentResponse>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CampaignsCollectionsResponse(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignsCollectionsResponseImpl &&
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
  _$$CampaignsCollectionsResponseImplCopyWith<
          _$CampaignsCollectionsResponseImpl>
      get copyWith => __$$CampaignsCollectionsResponseImplCopyWithImpl<
          _$CampaignsCollectionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignsCollectionsResponseImplToJson(
      this,
    );
  }
}

abstract class _CampaignsCollectionsResponse
    implements CampaignsCollectionsResponse {
  factory _CampaignsCollectionsResponse(
          {final int? total, final List<CampaignDocumentResponse>? documents}) =
      _$CampaignsCollectionsResponseImpl;

  factory _CampaignsCollectionsResponse.fromJson(Map<String, dynamic> json) =
      _$CampaignsCollectionsResponseImpl.fromJson;

  @override
  int? get total;
  @override
  List<CampaignDocumentResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$CampaignsCollectionsResponseImplCopyWith<
          _$CampaignsCollectionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
