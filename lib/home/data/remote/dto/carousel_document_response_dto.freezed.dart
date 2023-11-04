// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_document_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselDocumentResponseDTO _$CarouselDocumentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _CarouselDocumentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CarouselDocumentResponseDTO {
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<CarouselItemResponseDTO>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselDocumentResponseDTOCopyWith<CarouselDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselDocumentResponseDTOCopyWith<$Res> {
  factory $CarouselDocumentResponseDTOCopyWith(
          CarouselDocumentResponseDTO value,
          $Res Function(CarouselDocumentResponseDTO) then) =
      _$CarouselDocumentResponseDTOCopyWithImpl<$Res,
          CarouselDocumentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CarouselItemResponseDTO>? documents});
}

/// @nodoc
class _$CarouselDocumentResponseDTOCopyWithImpl<$Res,
        $Val extends CarouselDocumentResponseDTO>
    implements $CarouselDocumentResponseDTOCopyWith<$Res> {
  _$CarouselDocumentResponseDTOCopyWithImpl(this._value, this._then);

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
              as List<CarouselItemResponseDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarouselDocumentResponseDTOCopyWith<$Res>
    implements $CarouselDocumentResponseDTOCopyWith<$Res> {
  factory _$$_CarouselDocumentResponseDTOCopyWith(
          _$_CarouselDocumentResponseDTO value,
          $Res Function(_$_CarouselDocumentResponseDTO) then) =
      __$$_CarouselDocumentResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CarouselItemResponseDTO>? documents});
}

/// @nodoc
class __$$_CarouselDocumentResponseDTOCopyWithImpl<$Res>
    extends _$CarouselDocumentResponseDTOCopyWithImpl<$Res,
        _$_CarouselDocumentResponseDTO>
    implements _$$_CarouselDocumentResponseDTOCopyWith<$Res> {
  __$$_CarouselDocumentResponseDTOCopyWithImpl(
      _$_CarouselDocumentResponseDTO _value,
      $Res Function(_$_CarouselDocumentResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_CarouselDocumentResponseDTO(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CarouselItemResponseDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarouselDocumentResponseDTO implements _CarouselDocumentResponseDTO {
  _$_CarouselDocumentResponseDTO(
      {@JsonKey(name: 'total') this.total,
      @JsonKey(name: 'documents')
      final List<CarouselItemResponseDTO>? documents})
      : _documents = documents;

  factory _$_CarouselDocumentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CarouselDocumentResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  final List<CarouselItemResponseDTO>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<CarouselItemResponseDTO>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarouselDocumentResponseDTO(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarouselDocumentResponseDTO &&
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
  _$$_CarouselDocumentResponseDTOCopyWith<_$_CarouselDocumentResponseDTO>
      get copyWith => __$$_CarouselDocumentResponseDTOCopyWithImpl<
          _$_CarouselDocumentResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarouselDocumentResponseDTOToJson(
      this,
    );
  }
}

abstract class _CarouselDocumentResponseDTO
    implements CarouselDocumentResponseDTO {
  factory _CarouselDocumentResponseDTO(
          {@JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'documents')
          final List<CarouselItemResponseDTO>? documents}) =
      _$_CarouselDocumentResponseDTO;

  factory _CarouselDocumentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_CarouselDocumentResponseDTO.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'documents')
  List<CarouselItemResponseDTO>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$_CarouselDocumentResponseDTOCopyWith<_$_CarouselDocumentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}
