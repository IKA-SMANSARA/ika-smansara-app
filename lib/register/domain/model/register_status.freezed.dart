// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterStatus _$RegisterStatusFromJson(Map<String, dynamic> json) {
  return _RegisterStatus.fromJson(json);
}

/// @nodoc
mixin _$RegisterStatus {
  bool? get registerStatus => throw _privateConstructorUsedError;
  String? get registerMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterStatusCopyWith<RegisterStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStatusCopyWith<$Res> {
  factory $RegisterStatusCopyWith(
          RegisterStatus value, $Res Function(RegisterStatus) then) =
      _$RegisterStatusCopyWithImpl<$Res, RegisterStatus>;
  @useResult
  $Res call({bool? registerStatus, String? registerMessage});
}

/// @nodoc
class _$RegisterStatusCopyWithImpl<$Res, $Val extends RegisterStatus>
    implements $RegisterStatusCopyWith<$Res> {
  _$RegisterStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerStatus = freezed,
    Object? registerMessage = freezed,
  }) {
    return _then(_value.copyWith(
      registerStatus: freezed == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      registerMessage: freezed == registerMessage
          ? _value.registerMessage
          : registerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStatusImplCopyWith<$Res>
    implements $RegisterStatusCopyWith<$Res> {
  factory _$$RegisterStatusImplCopyWith(_$RegisterStatusImpl value,
          $Res Function(_$RegisterStatusImpl) then) =
      __$$RegisterStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? registerStatus, String? registerMessage});
}

/// @nodoc
class __$$RegisterStatusImplCopyWithImpl<$Res>
    extends _$RegisterStatusCopyWithImpl<$Res, _$RegisterStatusImpl>
    implements _$$RegisterStatusImplCopyWith<$Res> {
  __$$RegisterStatusImplCopyWithImpl(
      _$RegisterStatusImpl _value, $Res Function(_$RegisterStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerStatus = freezed,
    Object? registerMessage = freezed,
  }) {
    return _then(_$RegisterStatusImpl(
      registerStatus: freezed == registerStatus
          ? _value.registerStatus
          : registerStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      registerMessage: freezed == registerMessage
          ? _value.registerMessage
          : registerMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterStatusImpl implements _RegisterStatus {
  _$RegisterStatusImpl(
      {this.registerStatus = false, this.registerMessage = ''});

  factory _$RegisterStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterStatusImplFromJson(json);

  @override
  @JsonKey()
  final bool? registerStatus;
  @override
  @JsonKey()
  final String? registerMessage;

  @override
  String toString() {
    return 'RegisterStatus(registerStatus: $registerStatus, registerMessage: $registerMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStatusImpl &&
            (identical(other.registerStatus, registerStatus) ||
                other.registerStatus == registerStatus) &&
            (identical(other.registerMessage, registerMessage) ||
                other.registerMessage == registerMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, registerStatus, registerMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStatusImplCopyWith<_$RegisterStatusImpl> get copyWith =>
      __$$RegisterStatusImplCopyWithImpl<_$RegisterStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterStatusImplToJson(
      this,
    );
  }
}

abstract class _RegisterStatus implements RegisterStatus {
  factory _RegisterStatus(
      {final bool? registerStatus,
      final String? registerMessage}) = _$RegisterStatusImpl;

  factory _RegisterStatus.fromJson(Map<String, dynamic> json) =
      _$RegisterStatusImpl.fromJson;

  @override
  bool? get registerStatus;
  @override
  String? get registerMessage;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStatusImplCopyWith<_$RegisterStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
