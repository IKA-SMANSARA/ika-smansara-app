// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_collections_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionsCollectionsResponse _$TransactionsCollectionsResponseFromJson(
    Map<String, dynamic> json) {
  return _TransactionsCollectionsResponse.fromJson(json);
}

/// @nodoc
mixin _$TransactionsCollectionsResponse {
  List<TransactionDocumentResponse>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsCollectionsResponseCopyWith<TransactionsCollectionsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsCollectionsResponseCopyWith<$Res> {
  factory $TransactionsCollectionsResponseCopyWith(
          TransactionsCollectionsResponse value,
          $Res Function(TransactionsCollectionsResponse) then) =
      _$TransactionsCollectionsResponseCopyWithImpl<$Res,
          TransactionsCollectionsResponse>;
  @useResult
  $Res call({List<TransactionDocumentResponse>? documents});
}

/// @nodoc
class _$TransactionsCollectionsResponseCopyWithImpl<$Res,
        $Val extends TransactionsCollectionsResponse>
    implements $TransactionsCollectionsResponseCopyWith<$Res> {
  _$TransactionsCollectionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_value.copyWith(
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<TransactionDocumentResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsCollectionsResponseImplCopyWith<$Res>
    implements $TransactionsCollectionsResponseCopyWith<$Res> {
  factory _$$TransactionsCollectionsResponseImplCopyWith(
          _$TransactionsCollectionsResponseImpl value,
          $Res Function(_$TransactionsCollectionsResponseImpl) then) =
      __$$TransactionsCollectionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionDocumentResponse>? documents});
}

/// @nodoc
class __$$TransactionsCollectionsResponseImplCopyWithImpl<$Res>
    extends _$TransactionsCollectionsResponseCopyWithImpl<$Res,
        _$TransactionsCollectionsResponseImpl>
    implements _$$TransactionsCollectionsResponseImplCopyWith<$Res> {
  __$$TransactionsCollectionsResponseImplCopyWithImpl(
      _$TransactionsCollectionsResponseImpl _value,
      $Res Function(_$TransactionsCollectionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
  }) {
    return _then(_$TransactionsCollectionsResponseImpl(
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<TransactionDocumentResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsCollectionsResponseImpl
    implements _TransactionsCollectionsResponse {
  _$TransactionsCollectionsResponseImpl(
      {final List<TransactionDocumentResponse>? documents})
      : _documents = documents;

  factory _$TransactionsCollectionsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionsCollectionsResponseImplFromJson(json);

  final List<TransactionDocumentResponse>? _documents;
  @override
  List<TransactionDocumentResponse>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TransactionsCollectionsResponse(documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsCollectionsResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsCollectionsResponseImplCopyWith<
          _$TransactionsCollectionsResponseImpl>
      get copyWith => __$$TransactionsCollectionsResponseImplCopyWithImpl<
          _$TransactionsCollectionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsCollectionsResponseImplToJson(
      this,
    );
  }
}

abstract class _TransactionsCollectionsResponse
    implements TransactionsCollectionsResponse {
  factory _TransactionsCollectionsResponse(
          {final List<TransactionDocumentResponse>? documents}) =
      _$TransactionsCollectionsResponseImpl;

  factory _TransactionsCollectionsResponse.fromJson(Map<String, dynamic> json) =
      _$TransactionsCollectionsResponseImpl.fromJson;

  @override
  List<TransactionDocumentResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsCollectionsResponseImplCopyWith<
          _$TransactionsCollectionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
