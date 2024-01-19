// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesDocumentResponse _$CategoriesDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _CategoriesDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoriesDocumentResponse {
  int? get total => throw _privateConstructorUsedError;
  List<CategoryItemResponse>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesDocumentResponseCopyWith<CategoriesDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDocumentResponseCopyWith<$Res> {
  factory $CategoriesDocumentResponseCopyWith(CategoriesDocumentResponse value,
          $Res Function(CategoriesDocumentResponse) then) =
      _$CategoriesDocumentResponseCopyWithImpl<$Res,
          CategoriesDocumentResponse>;
  @useResult
  $Res call({int? total, List<CategoryItemResponse>? documents});
}

/// @nodoc
class _$CategoriesDocumentResponseCopyWithImpl<$Res,
        $Val extends CategoriesDocumentResponse>
    implements $CategoriesDocumentResponseCopyWith<$Res> {
  _$CategoriesDocumentResponseCopyWithImpl(this._value, this._then);

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
              as List<CategoryItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesDocumentResponseImplCopyWith<$Res>
    implements $CategoriesDocumentResponseCopyWith<$Res> {
  factory _$$CategoriesDocumentResponseImplCopyWith(
          _$CategoriesDocumentResponseImpl value,
          $Res Function(_$CategoriesDocumentResponseImpl) then) =
      __$$CategoriesDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<CategoryItemResponse>? documents});
}

/// @nodoc
class __$$CategoriesDocumentResponseImplCopyWithImpl<$Res>
    extends _$CategoriesDocumentResponseCopyWithImpl<$Res,
        _$CategoriesDocumentResponseImpl>
    implements _$$CategoriesDocumentResponseImplCopyWith<$Res> {
  __$$CategoriesDocumentResponseImplCopyWithImpl(
      _$CategoriesDocumentResponseImpl _value,
      $Res Function(_$CategoriesDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$CategoriesDocumentResponseImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesDocumentResponseImpl implements _CategoriesDocumentResponse {
  _$CategoriesDocumentResponseImpl(
      {this.total, final List<CategoryItemResponse>? documents = const []})
      : _documents = documents;

  factory _$CategoriesDocumentResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoriesDocumentResponseImplFromJson(json);

  @override
  final int? total;
  final List<CategoryItemResponse>? _documents;
  @override
  @JsonKey()
  List<CategoryItemResponse>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesDocumentResponse(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDocumentResponseImpl &&
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
  _$$CategoriesDocumentResponseImplCopyWith<_$CategoriesDocumentResponseImpl>
      get copyWith => __$$CategoriesDocumentResponseImplCopyWithImpl<
          _$CategoriesDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoriesDocumentResponse
    implements CategoriesDocumentResponse {
  factory _CategoriesDocumentResponse(
          {final int? total, final List<CategoryItemResponse>? documents}) =
      _$CategoriesDocumentResponseImpl;

  factory _CategoriesDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$CategoriesDocumentResponseImpl.fromJson;

  @override
  int? get total;
  @override
  List<CategoryItemResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesDocumentResponseImplCopyWith<_$CategoriesDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
