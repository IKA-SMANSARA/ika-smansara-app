// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_obscure_text_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginObscureTextState {
  bool get visible => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool visible) isVisible,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool visible)? isVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool visible)? isVisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isVisible value) isVisible,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isVisible value)? isVisible,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isVisible value)? isVisible,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginObscureTextStateCopyWith<LoginObscureTextState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObscureTextStateCopyWith<$Res> {
  factory $LoginObscureTextStateCopyWith(LoginObscureTextState value,
          $Res Function(LoginObscureTextState) then) =
      _$LoginObscureTextStateCopyWithImpl<$Res, LoginObscureTextState>;
  @useResult
  $Res call({bool visible});
}

/// @nodoc
class _$LoginObscureTextStateCopyWithImpl<$Res,
        $Val extends LoginObscureTextState>
    implements $LoginObscureTextStateCopyWith<$Res> {
  _$LoginObscureTextStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
  }) {
    return _then(_value.copyWith(
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_isVisibleCopyWith<$Res>
    implements $LoginObscureTextStateCopyWith<$Res> {
  factory _$$_isVisibleCopyWith(
          _$_isVisible value, $Res Function(_$_isVisible) then) =
      __$$_isVisibleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool visible});
}

/// @nodoc
class __$$_isVisibleCopyWithImpl<$Res>
    extends _$LoginObscureTextStateCopyWithImpl<$Res, _$_isVisible>
    implements _$$_isVisibleCopyWith<$Res> {
  __$$_isVisibleCopyWithImpl(
      _$_isVisible _value, $Res Function(_$_isVisible) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
  }) {
    return _then(_$_isVisible(
      null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_isVisible implements _isVisible {
  const _$_isVisible(this.visible);

  @override
  final bool visible;

  @override
  String toString() {
    return 'LoginObscureTextState.isVisible(visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_isVisible &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_isVisibleCopyWith<_$_isVisible> get copyWith =>
      __$$_isVisibleCopyWithImpl<_$_isVisible>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool visible) isVisible,
  }) {
    return isVisible(visible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool visible)? isVisible,
  }) {
    return isVisible?.call(visible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool visible)? isVisible,
    required TResult orElse(),
  }) {
    if (isVisible != null) {
      return isVisible(visible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_isVisible value) isVisible,
  }) {
    return isVisible(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_isVisible value)? isVisible,
  }) {
    return isVisible?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_isVisible value)? isVisible,
    required TResult orElse(),
  }) {
    if (isVisible != null) {
      return isVisible(this);
    }
    return orElse();
  }
}

abstract class _isVisible implements LoginObscureTextState {
  const factory _isVisible(final bool visible) = _$_isVisible;

  @override
  bool get visible;
  @override
  @JsonKey(ignore: true)
  _$$_isVisibleCopyWith<_$_isVisible> get copyWith =>
      throw _privateConstructorUsedError;
}
