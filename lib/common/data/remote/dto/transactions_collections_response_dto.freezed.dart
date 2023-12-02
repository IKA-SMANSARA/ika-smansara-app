// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_collections_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionsCollectionsResponseDTO _$TransactionsCollectionsResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _TransactionsCollectionsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionsCollectionsResponseDTO {
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
  List<TransactionDocumentResponseDTO>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsCollectionsResponseDTOCopyWith<
          TransactionsCollectionsResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsCollectionsResponseDTOCopyWith<$Res> {
  factory $TransactionsCollectionsResponseDTOCopyWith(
          TransactionsCollectionsResponseDTO value,
          $Res Function(TransactionsCollectionsResponseDTO) then) =
      _$TransactionsCollectionsResponseDTOCopyWithImpl<$Res,
          TransactionsCollectionsResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents')
      List<TransactionDocumentResponseDTO>? documents});
}

/// @nodoc
class _$TransactionsCollectionsResponseDTOCopyWithImpl<$Res,
        $Val extends TransactionsCollectionsResponseDTO>
    implements $TransactionsCollectionsResponseDTOCopyWith<$Res> {
  _$TransactionsCollectionsResponseDTOCopyWithImpl(this._value, this._then);

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
              as List<TransactionDocumentResponseDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsCollectionsResponseDTOImplCopyWith<$Res>
    implements $TransactionsCollectionsResponseDTOCopyWith<$Res> {
  factory _$$TransactionsCollectionsResponseDTOImplCopyWith(
          _$TransactionsCollectionsResponseDTOImpl value,
          $Res Function(_$TransactionsCollectionsResponseDTOImpl) then) =
      __$$TransactionsCollectionsResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents')
      List<TransactionDocumentResponseDTO>? documents});
}

/// @nodoc
class __$$TransactionsCollectionsResponseDTOImplCopyWithImpl<$Res>
    extends _$TransactionsCollectionsResponseDTOCopyWithImpl<$Res,
        _$TransactionsCollectionsResponseDTOImpl>
    implements _$$TransactionsCollectionsResponseDTOImplCopyWith<$Res> {
  __$$TransactionsCollectionsResponseDTOImplCopyWithImpl(
      _$TransactionsCollectionsResponseDTOImpl _value,
      $Res Function(_$TransactionsCollectionsResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$TransactionsCollectionsResponseDTOImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<TransactionDocumentResponseDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsCollectionsResponseDTOImpl
    implements _TransactionsCollectionsResponseDTO {
  _$TransactionsCollectionsResponseDTOImpl(
      {@JsonKey(name: 'total') this.total,
      @JsonKey(name: 'documents')
      final List<TransactionDocumentResponseDTO>? documents})
      : _documents = documents;

  factory _$TransactionsCollectionsResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionsCollectionsResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  final List<TransactionDocumentResponseDTO>? _documents;
  @override
  @JsonKey(name: 'documents')
  List<TransactionDocumentResponseDTO>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionsCollectionsResponseDTO(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsCollectionsResponseDTOImpl &&
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
  _$$TransactionsCollectionsResponseDTOImplCopyWith<
          _$TransactionsCollectionsResponseDTOImpl>
      get copyWith => __$$TransactionsCollectionsResponseDTOImplCopyWithImpl<
          _$TransactionsCollectionsResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsCollectionsResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _TransactionsCollectionsResponseDTO
    implements TransactionsCollectionsResponseDTO {
  factory _TransactionsCollectionsResponseDTO(
          {@JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'documents')
          final List<TransactionDocumentResponseDTO>? documents}) =
      _$TransactionsCollectionsResponseDTOImpl;

  factory _TransactionsCollectionsResponseDTO.fromJson(
          Map<String, dynamic> json) =
      _$TransactionsCollectionsResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'documents')
  List<TransactionDocumentResponseDTO>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsCollectionsResponseDTOImplCopyWith<
          _$TransactionsCollectionsResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
