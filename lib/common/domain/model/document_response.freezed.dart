// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentResponse _$DocumentResponseFromJson(Map<String, dynamic> json) {
  return _DocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$DocumentResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get databaseId => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentResponseCopyWith<DocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentResponseCopyWith<$Res> {
  factory $DocumentResponseCopyWith(
          DocumentResponse value, $Res Function(DocumentResponse) then) =
      _$DocumentResponseCopyWithImpl<$Res, DocumentResponse>;
  @useResult
  $Res call(
      {String? id,
      String? collectionId,
      String? databaseId,
      String? createdAt,
      String? updatedAt,
      String? permissions});
}

/// @nodoc
class _$DocumentResponseCopyWithImpl<$Res, $Val extends DocumentResponse>
    implements $DocumentResponseCopyWith<$Res> {
  _$DocumentResponseCopyWithImpl(this._value, this._then);

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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentResponseCopyWith<$Res>
    implements $DocumentResponseCopyWith<$Res> {
  factory _$$_DocumentResponseCopyWith(
          _$_DocumentResponse value, $Res Function(_$_DocumentResponse) then) =
      __$$_DocumentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? collectionId,
      String? databaseId,
      String? createdAt,
      String? updatedAt,
      String? permissions});
}

/// @nodoc
class __$$_DocumentResponseCopyWithImpl<$Res>
    extends _$DocumentResponseCopyWithImpl<$Res, _$_DocumentResponse>
    implements _$$_DocumentResponseCopyWith<$Res> {
  __$$_DocumentResponseCopyWithImpl(
      _$_DocumentResponse _value, $Res Function(_$_DocumentResponse) _then)
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
    return _then(_$_DocumentResponse(
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentResponse implements _DocumentResponse {
  _$_DocumentResponse(
      {this.id,
      this.collectionId,
      this.databaseId,
      this.createdAt,
      this.updatedAt,
      this.permissions});

  factory _$_DocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? collectionId;
  @override
  final String? databaseId;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? permissions;

  @override
  String toString() {
    return 'DocumentResponse(id: $id, collectionId: $collectionId, databaseId: $databaseId, createdAt: $createdAt, updatedAt: $updatedAt, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.databaseId, databaseId) ||
                other.databaseId == databaseId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, databaseId,
      createdAt, updatedAt, permissions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentResponseCopyWith<_$_DocumentResponse> get copyWith =>
      __$$_DocumentResponseCopyWithImpl<_$_DocumentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentResponseToJson(
      this,
    );
  }
}

abstract class _DocumentResponse implements DocumentResponse {
  factory _DocumentResponse(
      {final String? id,
      final String? collectionId,
      final String? databaseId,
      final String? createdAt,
      final String? updatedAt,
      final String? permissions}) = _$_DocumentResponse;

  factory _DocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_DocumentResponse.fromJson;

  @override
  String? get id;
  @override
  String? get collectionId;
  @override
  String? get databaseId;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentResponseCopyWith<_$_DocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
