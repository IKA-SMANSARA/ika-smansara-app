// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaigns_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignsDocumentResponse _$CampaignsDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _CampaignsDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$CampaignsDocumentResponse {
  int? get total => throw _privateConstructorUsedError;
  List<CampaignItemResponse>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignsDocumentResponseCopyWith<CampaignsDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignsDocumentResponseCopyWith<$Res> {
  factory $CampaignsDocumentResponseCopyWith(CampaignsDocumentResponse value,
          $Res Function(CampaignsDocumentResponse) then) =
      _$CampaignsDocumentResponseCopyWithImpl<$Res, CampaignsDocumentResponse>;
  @useResult
  $Res call({int? total, List<CampaignItemResponse>? documents});
}

/// @nodoc
class _$CampaignsDocumentResponseCopyWithImpl<$Res,
        $Val extends CampaignsDocumentResponse>
    implements $CampaignsDocumentResponseCopyWith<$Res> {
  _$CampaignsDocumentResponseCopyWithImpl(this._value, this._then);

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
              as List<CampaignItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CampaignsDocumentResponseCopyWith<$Res>
    implements $CampaignsDocumentResponseCopyWith<$Res> {
  factory _$$_CampaignsDocumentResponseCopyWith(
          _$_CampaignsDocumentResponse value,
          $Res Function(_$_CampaignsDocumentResponse) then) =
      __$$_CampaignsDocumentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<CampaignItemResponse>? documents});
}

/// @nodoc
class __$$_CampaignsDocumentResponseCopyWithImpl<$Res>
    extends _$CampaignsDocumentResponseCopyWithImpl<$Res,
        _$_CampaignsDocumentResponse>
    implements _$$_CampaignsDocumentResponseCopyWith<$Res> {
  __$$_CampaignsDocumentResponseCopyWithImpl(
      _$_CampaignsDocumentResponse _value,
      $Res Function(_$_CampaignsDocumentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_CampaignsDocumentResponse(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CampaignItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CampaignsDocumentResponse implements _CampaignsDocumentResponse {
  _$_CampaignsDocumentResponse(
      {this.total, final List<CampaignItemResponse>? documents = const []})
      : _documents = documents;

  factory _$_CampaignsDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CampaignsDocumentResponseFromJson(json);

  @override
  final int? total;
  final List<CampaignItemResponse>? _documents;
  @override
  @JsonKey()
  List<CampaignItemResponse>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CampaignsDocumentResponse(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampaignsDocumentResponse &&
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
  _$$_CampaignsDocumentResponseCopyWith<_$_CampaignsDocumentResponse>
      get copyWith => __$$_CampaignsDocumentResponseCopyWithImpl<
          _$_CampaignsDocumentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampaignsDocumentResponseToJson(
      this,
    );
  }
}

abstract class _CampaignsDocumentResponse implements CampaignsDocumentResponse {
  factory _CampaignsDocumentResponse(
          {final int? total, final List<CampaignItemResponse>? documents}) =
      _$_CampaignsDocumentResponse;

  factory _CampaignsDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_CampaignsDocumentResponse.fromJson;

  @override
  int? get total;
  @override
  List<CampaignItemResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$_CampaignsDocumentResponseCopyWith<_$_CampaignsDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
