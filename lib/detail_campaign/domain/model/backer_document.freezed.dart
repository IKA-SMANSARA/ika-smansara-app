// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backer_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BackerDocument _$BackerDocumentFromJson(Map<String, dynamic> json) {
  return _BackerDocument.fromJson(json);
}

/// @nodoc
mixin _$BackerDocument {
  String? get userName => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BackerDocumentCopyWith<BackerDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackerDocumentCopyWith<$Res> {
  factory $BackerDocumentCopyWith(
          BackerDocument value, $Res Function(BackerDocument) then) =
      _$BackerDocumentCopyWithImpl<$Res, BackerDocument>;
  @useResult
  $Res call({String? userName, int? amount, String? createdAt});
}

/// @nodoc
class _$BackerDocumentCopyWithImpl<$Res, $Val extends BackerDocument>
    implements $BackerDocumentCopyWith<$Res> {
  _$BackerDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BackerDocumentImplCopyWith<$Res>
    implements $BackerDocumentCopyWith<$Res> {
  factory _$$BackerDocumentImplCopyWith(_$BackerDocumentImpl value,
          $Res Function(_$BackerDocumentImpl) then) =
      __$$BackerDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userName, int? amount, String? createdAt});
}

/// @nodoc
class __$$BackerDocumentImplCopyWithImpl<$Res>
    extends _$BackerDocumentCopyWithImpl<$Res, _$BackerDocumentImpl>
    implements _$$BackerDocumentImplCopyWith<$Res> {
  __$$BackerDocumentImplCopyWithImpl(
      _$BackerDocumentImpl _value, $Res Function(_$BackerDocumentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$BackerDocumentImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BackerDocumentImpl implements _BackerDocument {
  _$BackerDocumentImpl({this.userName, this.amount, this.createdAt});

  factory _$BackerDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$BackerDocumentImplFromJson(json);

  @override
  final String? userName;
  @override
  final int? amount;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'BackerDocument(userName: $userName, amount: $amount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackerDocumentImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, amount, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackerDocumentImplCopyWith<_$BackerDocumentImpl> get copyWith =>
      __$$BackerDocumentImplCopyWithImpl<_$BackerDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BackerDocumentImplToJson(
      this,
    );
  }
}

abstract class _BackerDocument implements BackerDocument {
  factory _BackerDocument(
      {final String? userName,
      final int? amount,
      final String? createdAt}) = _$BackerDocumentImpl;

  factory _BackerDocument.fromJson(Map<String, dynamic> json) =
      _$BackerDocumentImpl.fromJson;

  @override
  String? get userName;
  @override
  int? get amount;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BackerDocumentImplCopyWith<_$BackerDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
