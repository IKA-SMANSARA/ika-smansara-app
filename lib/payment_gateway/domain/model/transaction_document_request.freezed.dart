// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDocumentRequest _$TransactionDocumentRequestFromJson(
    Map<String, dynamic> json) {
  return _TransactionDocumentRequest.fromJson(json);
}

/// @nodoc
mixin _$TransactionDocumentRequest {
  String? get documentId => throw _privateConstructorUsedError;
  TransactionDataDocumentRequest? get data =>
      throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDocumentRequestCopyWith<TransactionDocumentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDocumentRequestCopyWith<$Res> {
  factory $TransactionDocumentRequestCopyWith(TransactionDocumentRequest value,
          $Res Function(TransactionDocumentRequest) then) =
      _$TransactionDocumentRequestCopyWithImpl<$Res,
          TransactionDocumentRequest>;
  @useResult
  $Res call(
      {String? documentId,
      TransactionDataDocumentRequest? data,
      List<String> permissions});

  $TransactionDataDocumentRequestCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransactionDocumentRequestCopyWithImpl<$Res,
        $Val extends TransactionDocumentRequest>
    implements $TransactionDocumentRequestCopyWith<$Res> {
  _$TransactionDocumentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDataDocumentRequest?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDataDocumentRequestCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDataDocumentRequestCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDocumentRequestImplCopyWith<$Res>
    implements $TransactionDocumentRequestCopyWith<$Res> {
  factory _$$TransactionDocumentRequestImplCopyWith(
          _$TransactionDocumentRequestImpl value,
          $Res Function(_$TransactionDocumentRequestImpl) then) =
      __$$TransactionDocumentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? documentId,
      TransactionDataDocumentRequest? data,
      List<String> permissions});

  @override
  $TransactionDataDocumentRequestCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TransactionDocumentRequestImplCopyWithImpl<$Res>
    extends _$TransactionDocumentRequestCopyWithImpl<$Res,
        _$TransactionDocumentRequestImpl>
    implements _$$TransactionDocumentRequestImplCopyWith<$Res> {
  __$$TransactionDocumentRequestImplCopyWithImpl(
      _$TransactionDocumentRequestImpl _value,
      $Res Function(_$TransactionDocumentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = null,
  }) {
    return _then(_$TransactionDocumentRequestImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDataDocumentRequest?,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDocumentRequestImpl implements _TransactionDocumentRequest {
  _$TransactionDocumentRequestImpl(
      {this.documentId, this.data, final List<String> permissions = const []})
      : _permissions = permissions;

  factory _$TransactionDocumentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionDocumentRequestImplFromJson(json);

  @override
  final String? documentId;
  @override
  final TransactionDataDocumentRequest? data;
  final List<String> _permissions;
  @override
  @JsonKey()
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'TransactionDocumentRequest(documentId: $documentId, data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDocumentRequestImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documentId, data,
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDocumentRequestImplCopyWith<_$TransactionDocumentRequestImpl>
      get copyWith => __$$TransactionDocumentRequestImplCopyWithImpl<
          _$TransactionDocumentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDocumentRequestImplToJson(
      this,
    );
  }
}

abstract class _TransactionDocumentRequest
    implements TransactionDocumentRequest {
  factory _TransactionDocumentRequest(
      {final String? documentId,
      final TransactionDataDocumentRequest? data,
      final List<String> permissions}) = _$TransactionDocumentRequestImpl;

  factory _TransactionDocumentRequest.fromJson(Map<String, dynamic> json) =
      _$TransactionDocumentRequestImpl.fromJson;

  @override
  String? get documentId;
  @override
  TransactionDataDocumentRequest? get data;
  @override
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDocumentRequestImplCopyWith<_$TransactionDocumentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
