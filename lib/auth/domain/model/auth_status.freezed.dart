// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthStatus _$AuthStatusFromJson(Map<String, dynamic> json) {
  return _AuthStatus.fromJson(json);
}

/// @nodoc
mixin _$AuthStatus {
  bool? get authStatus => throw _privateConstructorUsedError;
  String? get authMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStatusCopyWith<AuthStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
  @useResult
  $Res call({bool? authStatus, String? authMessage});
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = freezed,
    Object? authMessage = freezed,
  }) {
    return _then(_value.copyWith(
      authStatus: freezed == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      authMessage: freezed == authMessage
          ? _value.authMessage
          : authMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStatusImplCopyWith<$Res>
    implements $AuthStatusCopyWith<$Res> {
  factory _$$AuthStatusImplCopyWith(
          _$AuthStatusImpl value, $Res Function(_$AuthStatusImpl) then) =
      __$$AuthStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? authStatus, String? authMessage});
}

/// @nodoc
class __$$AuthStatusImplCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$AuthStatusImpl>
    implements _$$AuthStatusImplCopyWith<$Res> {
  __$$AuthStatusImplCopyWithImpl(
      _$AuthStatusImpl _value, $Res Function(_$AuthStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = freezed,
    Object? authMessage = freezed,
  }) {
    return _then(_$AuthStatusImpl(
      authStatus: freezed == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      authMessage: freezed == authMessage
          ? _value.authMessage
          : authMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStatusImpl implements _AuthStatus {
  const _$AuthStatusImpl({this.authStatus = false, this.authMessage = ''});

  factory _$AuthStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStatusImplFromJson(json);

  @override
  @JsonKey()
  final bool? authStatus;
  @override
  @JsonKey()
  final String? authMessage;

  @override
  String toString() {
    return 'AuthStatus(authStatus: $authStatus, authMessage: $authMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatusImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.authMessage, authMessage) ||
                other.authMessage == authMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, authStatus, authMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      __$$AuthStatusImplCopyWithImpl<_$AuthStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStatusImplToJson(
      this,
    );
  }
}

abstract class _AuthStatus implements AuthStatus {
  const factory _AuthStatus(
      {final bool? authStatus, final String? authMessage}) = _$AuthStatusImpl;

  factory _AuthStatus.fromJson(Map<String, dynamic> json) =
      _$AuthStatusImpl.fromJson;

  @override
  bool? get authStatus;
  @override
  String? get authMessage;
  @override
  @JsonKey(ignore: true)
  _$$AuthStatusImplCopyWith<_$AuthStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
