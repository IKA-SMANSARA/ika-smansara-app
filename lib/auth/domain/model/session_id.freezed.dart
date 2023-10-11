// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionId _$SessionIdFromJson(Map<String, dynamic> json) {
  return _SessionId.fromJson(json);
}

/// @nodoc
mixin _$SessionId {
  String? get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionIdCopyWith<SessionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionIdCopyWith<$Res> {
  factory $SessionIdCopyWith(SessionId value, $Res Function(SessionId) then) =
      _$SessionIdCopyWithImpl<$Res, SessionId>;
  @useResult
  $Res call({String? sessionId});
}

/// @nodoc
class _$SessionIdCopyWithImpl<$Res, $Val extends SessionId>
    implements $SessionIdCopyWith<$Res> {
  _$SessionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionIdCopyWith<$Res> implements $SessionIdCopyWith<$Res> {
  factory _$$_SessionIdCopyWith(
          _$_SessionId value, $Res Function(_$_SessionId) then) =
      __$$_SessionIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionId});
}

/// @nodoc
class __$$_SessionIdCopyWithImpl<$Res>
    extends _$SessionIdCopyWithImpl<$Res, _$_SessionId>
    implements _$$_SessionIdCopyWith<$Res> {
  __$$_SessionIdCopyWithImpl(
      _$_SessionId _value, $Res Function(_$_SessionId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = freezed,
  }) {
    return _then(_$_SessionId(
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionId implements _SessionId {
  const _$_SessionId({this.sessionId = ''});

  factory _$_SessionId.fromJson(Map<String, dynamic> json) =>
      _$$_SessionIdFromJson(json);

  @override
  @JsonKey()
  final String? sessionId;

  @override
  String toString() {
    return 'SessionId(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionId &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionIdCopyWith<_$_SessionId> get copyWith =>
      __$$_SessionIdCopyWithImpl<_$_SessionId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionIdToJson(
      this,
    );
  }
}

abstract class _SessionId implements SessionId {
  const factory _SessionId({final String? sessionId}) = _$_SessionId;

  factory _SessionId.fromJson(Map<String, dynamic> json) =
      _$_SessionId.fromJson;

  @override
  String? get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$_SessionIdCopyWith<_$_SessionId> get copyWith =>
      throw _privateConstructorUsedError;
}
