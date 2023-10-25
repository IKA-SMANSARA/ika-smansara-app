// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLabel _$UserLabelFromJson(Map<String, dynamic> json) {
  return _UserLabel.fromJson(json);
}

/// @nodoc
mixin _$UserLabel {
  String? get userLabel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLabelCopyWith<UserLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLabelCopyWith<$Res> {
  factory $UserLabelCopyWith(UserLabel value, $Res Function(UserLabel) then) =
      _$UserLabelCopyWithImpl<$Res, UserLabel>;
  @useResult
  $Res call({String? userLabel});
}

/// @nodoc
class _$UserLabelCopyWithImpl<$Res, $Val extends UserLabel>
    implements $UserLabelCopyWith<$Res> {
  _$UserLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLabel = freezed,
  }) {
    return _then(_value.copyWith(
      userLabel: freezed == userLabel
          ? _value.userLabel
          : userLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserLabelCopyWith<$Res> implements $UserLabelCopyWith<$Res> {
  factory _$$_UserLabelCopyWith(
          _$_UserLabel value, $Res Function(_$_UserLabel) then) =
      __$$_UserLabelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userLabel});
}

/// @nodoc
class __$$_UserLabelCopyWithImpl<$Res>
    extends _$UserLabelCopyWithImpl<$Res, _$_UserLabel>
    implements _$$_UserLabelCopyWith<$Res> {
  __$$_UserLabelCopyWithImpl(
      _$_UserLabel _value, $Res Function(_$_UserLabel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLabel = freezed,
  }) {
    return _then(_$_UserLabel(
      userLabel: freezed == userLabel
          ? _value.userLabel
          : userLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLabel implements _UserLabel {
  _$_UserLabel({this.userLabel = ''});

  factory _$_UserLabel.fromJson(Map<String, dynamic> json) =>
      _$$_UserLabelFromJson(json);

  @override
  @JsonKey()
  final String? userLabel;

  @override
  String toString() {
    return 'UserLabel(userLabel: $userLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLabel &&
            (identical(other.userLabel, userLabel) ||
                other.userLabel == userLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userLabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLabelCopyWith<_$_UserLabel> get copyWith =>
      __$$_UserLabelCopyWithImpl<_$_UserLabel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLabelToJson(
      this,
    );
  }
}

abstract class _UserLabel implements UserLabel {
  factory _UserLabel({final String? userLabel}) = _$_UserLabel;

  factory _UserLabel.fromJson(Map<String, dynamic> json) =
      _$_UserLabel.fromJson;

  @override
  String? get userLabel;
  @override
  @JsonKey(ignore: true)
  _$$_UserLabelCopyWith<_$_UserLabel> get copyWith =>
      throw _privateConstructorUsedError;
}
