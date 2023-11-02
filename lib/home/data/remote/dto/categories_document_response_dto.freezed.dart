// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_document_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesDocumentResponseDTO _$CategoriesDocumentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _CategoriesDocumentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoriesDocumentResponseDTO {
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<CategoryItemResponseDTO>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesDocumentResponseDTOCopyWith<CategoriesDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDocumentResponseDTOCopyWith<$Res> {
  factory $CategoriesDocumentResponseDTOCopyWith(
          CategoriesDocumentResponseDTO value,
          $Res Function(CategoriesDocumentResponseDTO) then) =
      _$CategoriesDocumentResponseDTOCopyWithImpl<$Res,
          CategoriesDocumentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CategoryItemResponseDTO>? documents});
}

/// @nodoc
class _$CategoriesDocumentResponseDTOCopyWithImpl<$Res,
        $Val extends CategoriesDocumentResponseDTO>
    implements $CategoriesDocumentResponseDTOCopyWith<$Res> {
  _$CategoriesDocumentResponseDTOCopyWithImpl(this._value, this._then);

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
              as List<CategoryItemResponseDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesDocumentResponseDTOCopyWith<$Res>
    implements $CategoriesDocumentResponseDTOCopyWith<$Res> {
  factory _$$_CategoriesDocumentResponseDTOCopyWith(
          _$_CategoriesDocumentResponseDTO value,
          $Res Function(_$_CategoriesDocumentResponseDTO) then) =
      __$$_CategoriesDocumentResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CategoryItemResponseDTO>? documents});
}

/// @nodoc
class __$$_CategoriesDocumentResponseDTOCopyWithImpl<$Res>
    extends _$CategoriesDocumentResponseDTOCopyWithImpl<$Res,
        _$_CategoriesDocumentResponseDTO>
    implements _$$_CategoriesDocumentResponseDTOCopyWith<$Res> {
  __$$_CategoriesDocumentResponseDTOCopyWithImpl(
      _$_CategoriesDocumentResponseDTO _value,
      $Res Function(_$_CategoriesDocumentResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_CategoriesDocumentResponseDTO(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemResponseDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesDocumentResponseDTO
    implements _CategoriesDocumentResponseDTO {
  _$_CategoriesDocumentResponseDTO(
      {@JsonKey(name: 'total') this.total,
      @JsonKey(name: 'documents')
      final List<CategoryItemResponseDTO>? documents})
      : _documents = documents;

  factory _$_CategoriesDocumentResponseDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_CategoriesDocumentResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  final List<CategoryItemResponseDTO>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<CategoryItemResponseDTO>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesDocumentResponseDTO(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesDocumentResponseDTO &&
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
  _$$_CategoriesDocumentResponseDTOCopyWith<_$_CategoriesDocumentResponseDTO>
      get copyWith => __$$_CategoriesDocumentResponseDTOCopyWithImpl<
          _$_CategoriesDocumentResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesDocumentResponseDTOToJson(
      this,
    );
  }
}

abstract class _CategoriesDocumentResponseDTO
    implements CategoriesDocumentResponseDTO {
  factory _CategoriesDocumentResponseDTO(
          {@JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'documents')
          final List<CategoryItemResponseDTO>? documents}) =
      _$_CategoriesDocumentResponseDTO;

  factory _CategoriesDocumentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_CategoriesDocumentResponseDTO.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'documents')
  List<CategoryItemResponseDTO>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesDocumentResponseDTOCopyWith<_$_CategoriesDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
