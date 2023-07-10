// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterDocumentResponse _$CounterDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _CounterDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$CounterDocumentResponse {
  String? get id => throw _privateConstructorUsedError;

  String? get collectionId => throw _privateConstructorUsedError;

  String? get databaseId => throw _privateConstructorUsedError;

  String? get createdAt => throw _privateConstructorUsedError;

  String? get updatedAt => throw _privateConstructorUsedError;

  List<String?>? get permissions => throw _privateConstructorUsedError;

  String? get counterValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterDocumentResponseCopyWith<CounterDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDocumentResponseCopyWith<$Res> {
  factory $CounterDocumentResponseCopyWith(CounterDocumentResponse value,
          $Res Function(CounterDocumentResponse) then) =
      _$CounterDocumentResponseCopyWithImpl<$Res, CounterDocumentResponse>;

  @useResult
  $Res call(
      {String? id,
      String? collectionId,
      String? databaseId,
      String? createdAt,
      String? updatedAt,
      List<String?>? permissions,
      String? counterValue});
}

/// @nodoc
class _$CounterDocumentResponseCopyWithImpl<$Res,
        $Val extends CounterDocumentResponse>
    implements $CounterDocumentResponseCopyWith<$Res> {
  _$CounterDocumentResponseCopyWithImpl(this._value, this._then);

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
    Object? counterValue = freezed,
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
              as List<String?>?,
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CounterDocumentResponseCopyWith<$Res>
    implements $CounterDocumentResponseCopyWith<$Res> {
  factory _$$_CounterDocumentResponseCopyWith(_$_CounterDocumentResponse value,
          $Res Function(_$_CounterDocumentResponse) then) =
      __$$_CounterDocumentResponseCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String? id,
      String? collectionId,
      String? databaseId,
      String? createdAt,
      String? updatedAt,
      List<String?>? permissions,
      String? counterValue});
}

/// @nodoc
class __$$_CounterDocumentResponseCopyWithImpl<$Res>
    extends _$CounterDocumentResponseCopyWithImpl<$Res,
        _$_CounterDocumentResponse>
    implements _$$_CounterDocumentResponseCopyWith<$Res> {
  __$$_CounterDocumentResponseCopyWithImpl(_$_CounterDocumentResponse _value,
      $Res Function(_$_CounterDocumentResponse) _then)
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
    Object? counterValue = freezed,
  }) {
    return _then(_$_CounterDocumentResponse(
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
              as List<String?>?,
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CounterDocumentResponse implements _CounterDocumentResponse {
  const _$_CounterDocumentResponse(
      {this.id,
      this.collectionId,
      this.databaseId,
      this.createdAt,
      this.updatedAt,
      final List<String?>? permissions,
      this.counterValue})
      : _permissions = permissions;

  factory _$_CounterDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CounterDocumentResponseFromJson(json);

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
  final List<String?>? _permissions;

  @override
  List<String?>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? counterValue;

  @override
  String toString() {
    return 'CounterDocumentResponse(id: $id, collectionId: $collectionId, databaseId: $databaseId, createdAt: $createdAt, updatedAt: $updatedAt, permissions: $permissions, counterValue: $counterValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterDocumentResponse &&
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
                .equals(other._permissions, _permissions) &&
            (identical(other.counterValue, counterValue) ||
                other.counterValue == counterValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      collectionId,
      databaseId,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_permissions),
      counterValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounterDocumentResponseCopyWith<_$_CounterDocumentResponse>
      get copyWith =>
          __$$_CounterDocumentResponseCopyWithImpl<_$_CounterDocumentResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CounterDocumentResponseToJson(
      this,
    );
  }
}

abstract class _CounterDocumentResponse implements CounterDocumentResponse {
  const factory _CounterDocumentResponse(
      {final String? id,
      final String? collectionId,
      final String? databaseId,
      final String? createdAt,
      final String? updatedAt,
      final List<String?>? permissions,
      final String? counterValue}) = _$_CounterDocumentResponse;

  factory _CounterDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_CounterDocumentResponse.fromJson;

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
  List<String?>? get permissions;

  @override
  String? get counterValue;

  @override
  @JsonKey(ignore: true)
  _$$_CounterDocumentResponseCopyWith<_$_CounterDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
