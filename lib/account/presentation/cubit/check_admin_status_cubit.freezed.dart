// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_admin_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckAdminStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAdmin,
    required TResult Function() isUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isAdmin,
    TResult? Function()? isUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAdmin,
    TResult Function()? isUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsAdmin value) isAdmin,
    required TResult Function(IsUser value) isUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsAdmin value)? isAdmin,
    TResult? Function(IsUser value)? isUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsAdmin value)? isAdmin,
    TResult Function(IsUser value)? isUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAdminStatusStateCopyWith<$Res> {
  factory $CheckAdminStatusStateCopyWith(CheckAdminStatusState value,
          $Res Function(CheckAdminStatusState) then) =
      _$CheckAdminStatusStateCopyWithImpl<$Res, CheckAdminStatusState>;
}

/// @nodoc
class _$CheckAdminStatusStateCopyWithImpl<$Res,
        $Val extends CheckAdminStatusState>
    implements $CheckAdminStatusStateCopyWith<$Res> {
  _$CheckAdminStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IsAdminImplCopyWith<$Res> {
  factory _$$IsAdminImplCopyWith(
          _$IsAdminImpl value, $Res Function(_$IsAdminImpl) then) =
      __$$IsAdminImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsAdminImplCopyWithImpl<$Res>
    extends _$CheckAdminStatusStateCopyWithImpl<$Res, _$IsAdminImpl>
    implements _$$IsAdminImplCopyWith<$Res> {
  __$$IsAdminImplCopyWithImpl(
      _$IsAdminImpl _value, $Res Function(_$IsAdminImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsAdminImpl implements IsAdmin {
  const _$IsAdminImpl();

  @override
  String toString() {
    return 'CheckAdminStatusState.isAdmin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsAdminImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAdmin,
    required TResult Function() isUser,
  }) {
    return isAdmin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isAdmin,
    TResult? Function()? isUser,
  }) {
    return isAdmin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAdmin,
    TResult Function()? isUser,
    required TResult orElse(),
  }) {
    if (isAdmin != null) {
      return isAdmin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsAdmin value) isAdmin,
    required TResult Function(IsUser value) isUser,
  }) {
    return isAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsAdmin value)? isAdmin,
    TResult? Function(IsUser value)? isUser,
  }) {
    return isAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsAdmin value)? isAdmin,
    TResult Function(IsUser value)? isUser,
    required TResult orElse(),
  }) {
    if (isAdmin != null) {
      return isAdmin(this);
    }
    return orElse();
  }
}

abstract class IsAdmin implements CheckAdminStatusState {
  const factory IsAdmin() = _$IsAdminImpl;
}

/// @nodoc
abstract class _$$IsUserImplCopyWith<$Res> {
  factory _$$IsUserImplCopyWith(
          _$IsUserImpl value, $Res Function(_$IsUserImpl) then) =
      __$$IsUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsUserImplCopyWithImpl<$Res>
    extends _$CheckAdminStatusStateCopyWithImpl<$Res, _$IsUserImpl>
    implements _$$IsUserImplCopyWith<$Res> {
  __$$IsUserImplCopyWithImpl(
      _$IsUserImpl _value, $Res Function(_$IsUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsUserImpl implements IsUser {
  const _$IsUserImpl();

  @override
  String toString() {
    return 'CheckAdminStatusState.isUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAdmin,
    required TResult Function() isUser,
  }) {
    return isUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? isAdmin,
    TResult? Function()? isUser,
  }) {
    return isUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAdmin,
    TResult Function()? isUser,
    required TResult orElse(),
  }) {
    if (isUser != null) {
      return isUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsAdmin value) isAdmin,
    required TResult Function(IsUser value) isUser,
  }) {
    return isUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsAdmin value)? isAdmin,
    TResult? Function(IsUser value)? isUser,
  }) {
    return isUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsAdmin value)? isAdmin,
    TResult Function(IsUser value)? isUser,
    required TResult orElse(),
  }) {
    if (isUser != null) {
      return isUser(this);
    }
    return orElse();
  }
}

abstract class IsUser implements CheckAdminStatusState {
  const factory IsUser() = _$IsUserImpl;
}
