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
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
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
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CategoryItemResponse>? documents});
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
abstract class _$$_CategoriesDocumentResponseCopyWith<$Res>
    implements $CategoriesDocumentResponseCopyWith<$Res> {
  factory _$$_CategoriesDocumentResponseCopyWith(
          _$_CategoriesDocumentResponse value,
          $Res Function(_$_CategoriesDocumentResponse) then) =
      __$$_CategoriesDocumentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CategoryItemResponse>? documents});
}

/// @nodoc
class __$$_CategoriesDocumentResponseCopyWithImpl<$Res>
    extends _$CategoriesDocumentResponseCopyWithImpl<$Res,
        _$_CategoriesDocumentResponse>
    implements _$$_CategoriesDocumentResponseCopyWith<$Res> {
  __$$_CategoriesDocumentResponseCopyWithImpl(
      _$_CategoriesDocumentResponse _value,
      $Res Function(_$_CategoriesDocumentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_CategoriesDocumentResponse(
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
class _$_CategoriesDocumentResponse implements _CategoriesDocumentResponse {
  _$_CategoriesDocumentResponse(
      {@JsonKey(name: 'total') this.total,
      @JsonKey(name: 'documents') final List<CategoryItemResponse>? documents})
      : _documents = documents;

  factory _$_CategoriesDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesDocumentResponseFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  final List<CategoryItemResponse>? _documents;
  @override
  @JsonKey(name: 'documents')
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesDocumentResponse &&
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
  _$$_CategoriesDocumentResponseCopyWith<_$_CategoriesDocumentResponse>
      get copyWith => __$$_CategoriesDocumentResponseCopyWithImpl<
          _$_CategoriesDocumentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesDocumentResponseToJson(
      this,
    );
  }
}

abstract class _CategoriesDocumentResponse
    implements CategoriesDocumentResponse {
  factory _CategoriesDocumentResponse(
          {@JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'documents')
          final List<CategoryItemResponse>? documents}) =
      _$_CategoriesDocumentResponse;

  factory _CategoriesDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_CategoriesDocumentResponse.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'documents')
  List<CategoryItemResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesDocumentResponseCopyWith<_$_CategoriesDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
