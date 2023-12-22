// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_document_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionDocumentRequestDTO _$TransactionDocumentRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _TransactionDocumentRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$TransactionDocumentRequestDTO {
  @JsonKey(name: 'documentId')
  String? get documentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  TransactionDataDocumentRequestDTO? get data =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'permissions')
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDocumentRequestDTOCopyWith<TransactionDocumentRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDocumentRequestDTOCopyWith<$Res> {
  factory $TransactionDocumentRequestDTOCopyWith(
          TransactionDocumentRequestDTO value,
          $Res Function(TransactionDocumentRequestDTO) then) =
      _$TransactionDocumentRequestDTOCopyWithImpl<$Res,
          TransactionDocumentRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'documentId') String? documentId,
      @JsonKey(name: 'data') TransactionDataDocumentRequestDTO? data,
      @JsonKey(name: 'permissions') List<String> permissions});

  $TransactionDataDocumentRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransactionDocumentRequestDTOCopyWithImpl<$Res,
        $Val extends TransactionDocumentRequestDTO>
    implements $TransactionDocumentRequestDTOCopyWith<$Res> {
  _$TransactionDocumentRequestDTOCopyWithImpl(this._value, this._then);

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
              as TransactionDataDocumentRequestDTO?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDataDocumentRequestDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TransactionDataDocumentRequestDTOCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDocumentRequestDTOImplCopyWith<$Res>
    implements $TransactionDocumentRequestDTOCopyWith<$Res> {
  factory _$$TransactionDocumentRequestDTOImplCopyWith(
          _$TransactionDocumentRequestDTOImpl value,
          $Res Function(_$TransactionDocumentRequestDTOImpl) then) =
      __$$TransactionDocumentRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'documentId') String? documentId,
      @JsonKey(name: 'data') TransactionDataDocumentRequestDTO? data,
      @JsonKey(name: 'permissions') List<String> permissions});

  @override
  $TransactionDataDocumentRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TransactionDocumentRequestDTOImplCopyWithImpl<$Res>
    extends _$TransactionDocumentRequestDTOCopyWithImpl<$Res,
        _$TransactionDocumentRequestDTOImpl>
    implements _$$TransactionDocumentRequestDTOImplCopyWith<$Res> {
  __$$TransactionDocumentRequestDTOImplCopyWithImpl(
      _$TransactionDocumentRequestDTOImpl _value,
      $Res Function(_$TransactionDocumentRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = null,
  }) {
    return _then(_$TransactionDocumentRequestDTOImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TransactionDataDocumentRequestDTO?,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDocumentRequestDTOImpl
    implements _TransactionDocumentRequestDTO {
  _$TransactionDocumentRequestDTOImpl(
      {@JsonKey(name: 'documentId') this.documentId,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'permissions') final List<String> permissions = const []})
      : _permissions = permissions;

  factory _$TransactionDocumentRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionDocumentRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'documentId')
  final String? documentId;
  @override
  @JsonKey(name: 'data')
  final TransactionDataDocumentRequestDTO? data;
  final List<String> _permissions;
  @override
  @JsonKey(name: 'permissions')
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'TransactionDocumentRequestDTO(documentId: $documentId, data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDocumentRequestDTOImpl &&
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
  _$$TransactionDocumentRequestDTOImplCopyWith<
          _$TransactionDocumentRequestDTOImpl>
      get copyWith => __$$TransactionDocumentRequestDTOImplCopyWithImpl<
          _$TransactionDocumentRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDocumentRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _TransactionDocumentRequestDTO
    implements TransactionDocumentRequestDTO {
  factory _TransactionDocumentRequestDTO(
          {@JsonKey(name: 'documentId') final String? documentId,
          @JsonKey(name: 'data') final TransactionDataDocumentRequestDTO? data,
          @JsonKey(name: 'permissions') final List<String> permissions}) =
      _$TransactionDocumentRequestDTOImpl;

  factory _TransactionDocumentRequestDTO.fromJson(Map<String, dynamic> json) =
      _$TransactionDocumentRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'documentId')
  String? get documentId;
  @override
  @JsonKey(name: 'data')
  TransactionDataDocumentRequestDTO? get data;
  @override
  @JsonKey(name: 'permissions')
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDocumentRequestDTOImplCopyWith<
          _$TransactionDocumentRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
