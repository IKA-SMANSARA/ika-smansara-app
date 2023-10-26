// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminStatus _$AdminStatusFromJson(Map<String, dynamic> json) {
  return _AdminStatus.fromJson(json);
}

/// @nodoc
mixin _$AdminStatus {
  bool? get adminStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminStatusCopyWith<AdminStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStatusCopyWith<$Res> {
  factory $AdminStatusCopyWith(
          AdminStatus value, $Res Function(AdminStatus) then) =
      _$AdminStatusCopyWithImpl<$Res, AdminStatus>;
  @useResult
  $Res call({bool? adminStatus});
}

/// @nodoc
class _$AdminStatusCopyWithImpl<$Res, $Val extends AdminStatus>
    implements $AdminStatusCopyWith<$Res> {
  _$AdminStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminStatus = freezed,
  }) {
    return _then(_value.copyWith(
      adminStatus: freezed == adminStatus
          ? _value.adminStatus
          : adminStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminStatusCopyWith<$Res>
    implements $AdminStatusCopyWith<$Res> {
  factory _$$_AdminStatusCopyWith(
          _$_AdminStatus value, $Res Function(_$_AdminStatus) then) =
      __$$_AdminStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? adminStatus});
}

/// @nodoc
class __$$_AdminStatusCopyWithImpl<$Res>
    extends _$AdminStatusCopyWithImpl<$Res, _$_AdminStatus>
    implements _$$_AdminStatusCopyWith<$Res> {
  __$$_AdminStatusCopyWithImpl(
      _$_AdminStatus _value, $Res Function(_$_AdminStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminStatus = freezed,
  }) {
    return _then(_$_AdminStatus(
      adminStatus: freezed == adminStatus
          ? _value.adminStatus
          : adminStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminStatus implements _AdminStatus {
  _$_AdminStatus({this.adminStatus = false});

  factory _$_AdminStatus.fromJson(Map<String, dynamic> json) =>
      _$$_AdminStatusFromJson(json);

  @override
  @JsonKey()
  final bool? adminStatus;

  @override
  String toString() {
    return 'AdminStatus(adminStatus: $adminStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminStatus &&
            (identical(other.adminStatus, adminStatus) ||
                other.adminStatus == adminStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adminStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminStatusCopyWith<_$_AdminStatus> get copyWith =>
      __$$_AdminStatusCopyWithImpl<_$_AdminStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminStatusToJson(
      this,
    );
  }
}

abstract class _AdminStatus implements AdminStatus {
  factory _AdminStatus({final bool? adminStatus}) = _$_AdminStatus;

  factory _AdminStatus.fromJson(Map<String, dynamic> json) =
      _$_AdminStatus.fromJson;

  @override
  bool? get adminStatus;
  @override
  @JsonKey(ignore: true)
  _$$_AdminStatusCopyWith<_$_AdminStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
