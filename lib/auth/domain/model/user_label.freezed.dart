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
abstract class _$$UserLabelImplCopyWith<$Res>
    implements $UserLabelCopyWith<$Res> {
  factory _$$UserLabelImplCopyWith(
          _$UserLabelImpl value, $Res Function(_$UserLabelImpl) then) =
      __$$UserLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userLabel});
}

/// @nodoc
class __$$UserLabelImplCopyWithImpl<$Res>
    extends _$UserLabelCopyWithImpl<$Res, _$UserLabelImpl>
    implements _$$UserLabelImplCopyWith<$Res> {
  __$$UserLabelImplCopyWithImpl(
      _$UserLabelImpl _value, $Res Function(_$UserLabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLabel = freezed,
  }) {
    return _then(_$UserLabelImpl(
      userLabel: freezed == userLabel
          ? _value.userLabel
          : userLabel // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLabelImpl implements _UserLabel {
  _$UserLabelImpl({this.userLabel = ''});

  factory _$UserLabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLabelImplFromJson(json);

  @override
  @JsonKey()
  final String? userLabel;

  @override
  String toString() {
    return 'UserLabel(userLabel: $userLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLabelImpl &&
            (identical(other.userLabel, userLabel) ||
                other.userLabel == userLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userLabel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLabelImplCopyWith<_$UserLabelImpl> get copyWith =>
      __$$UserLabelImplCopyWithImpl<_$UserLabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLabelImplToJson(
      this,
    );
  }
}

abstract class _UserLabel implements UserLabel {
  factory _UserLabel({final String? userLabel}) = _$UserLabelImpl;

  factory _UserLabel.fromJson(Map<String, dynamic> json) =
      _$UserLabelImpl.fromJson;

  @override
  String? get userLabel;
  @override
  @JsonKey(ignore: true)
  _$$UserLabelImplCopyWith<_$UserLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
