// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentResponseDTO _$DocumentResponseDTOFromJson(Map<String, dynamic> json) {
  return _DocumentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$DocumentResponseDTO {
  @JsonKey(name: '\$id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: '\$collectionId')
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: '\$databaseId')
  String? get databaseId => throw _privateConstructorUsedError;
  @JsonKey(name: '\$createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$permissions')
  List<String>? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentResponseDTOCopyWith<DocumentResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentResponseDTOCopyWith<$Res> {
  factory $DocumentResponseDTOCopyWith(
          DocumentResponseDTO value, $Res Function(DocumentResponseDTO) then) =
      _$DocumentResponseDTOCopyWithImpl<$Res, DocumentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$collectionId') String? collectionId,
      @JsonKey(name: '\$databaseId') String? databaseId,
      @JsonKey(name: '\$createdAt') String? createdAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: '\$permissions') List<String>? permissions});
}

/// @nodoc
class _$DocumentResponseDTOCopyWithImpl<$Res, $Val extends DocumentResponseDTO>
    implements $DocumentResponseDTOCopyWith<$Res> {
  _$DocumentResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? collectionId = freezed,
    Object? databaseId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentResponseDTOImplCopyWith<$Res>
    implements $DocumentResponseDTOCopyWith<$Res> {
  factory _$$DocumentResponseDTOImplCopyWith(_$DocumentResponseDTOImpl value,
          $Res Function(_$DocumentResponseDTOImpl) then) =
      __$$DocumentResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$collectionId') String? collectionId,
      @JsonKey(name: '\$databaseId') String? databaseId,
      @JsonKey(name: '\$createdAt') String? createdAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: '\$permissions') List<String>? permissions});
}

/// @nodoc
class __$$DocumentResponseDTOImplCopyWithImpl<$Res>
    extends _$DocumentResponseDTOCopyWithImpl<$Res, _$DocumentResponseDTOImpl>
    implements _$$DocumentResponseDTOImplCopyWith<$Res> {
  __$$DocumentResponseDTOImplCopyWithImpl(_$DocumentResponseDTOImpl _value,
      $Res Function(_$DocumentResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? collectionId = freezed,
    Object? databaseId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_$DocumentResponseDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      databaseId: freezed == databaseId
          ? _value.databaseId
          : databaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentResponseDTOImpl implements _DocumentResponseDTO {
  _$DocumentResponseDTOImpl(
      {@JsonKey(name: '\$id') this.id,
      @JsonKey(name: '\$collectionId') this.collectionId,
      @JsonKey(name: '\$databaseId') this.databaseId,
      @JsonKey(name: '\$createdAt') this.createdAt,
      @JsonKey(name: '\$updatedAt') this.updatedAt,
      @JsonKey(name: '\$permissions')
      final List<String>? permissions = const []})
      : _permissions = permissions;

  factory _$DocumentResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: '\$id')
  final String? id;
  @override
  @JsonKey(name: '\$collectionId')
  final String? collectionId;
  @override
  @JsonKey(name: '\$databaseId')
  final String? databaseId;
  @override
  @JsonKey(name: '\$createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: '\$updatedAt')
  final String? updatedAt;
  final List<String>? _permissions;
  @override
  @JsonKey(name: '\$permissions')
  List<String>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DocumentResponseDTO(id: $id, collectionId: $collectionId, databaseId: $databaseId, createdAt: $createdAt, updatedAt: $updatedAt, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentResponseDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, databaseId,
      createdAt, updatedAt, const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentResponseDTOImplCopyWith<_$DocumentResponseDTOImpl> get copyWith =>
      __$$DocumentResponseDTOImplCopyWithImpl<_$DocumentResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _DocumentResponseDTO implements DocumentResponseDTO {
  factory _DocumentResponseDTO(
          {@JsonKey(name: '\$id') final String? id,
          @JsonKey(name: '\$collectionId') final String? collectionId,
          @JsonKey(name: '\$databaseId') final String? databaseId,
          @JsonKey(name: '\$createdAt') final String? createdAt,
          @JsonKey(name: '\$updatedAt') final String? updatedAt,
          @JsonKey(name: '\$permissions') final List<String>? permissions}) =
      _$DocumentResponseDTOImpl;

  factory _DocumentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$DocumentResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: '\$id')
  String? get id;
  @override
  @JsonKey(name: '\$collectionId')
  String? get collectionId;
  @override
  @JsonKey(name: '\$databaseId')
  String? get databaseId;
  @override
  @JsonKey(name: '\$createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: '\$updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(name: '\$permissions')
  List<String>? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$DocumentResponseDTOImplCopyWith<_$DocumentResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
