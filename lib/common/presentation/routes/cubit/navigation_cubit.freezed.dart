// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  String get bottomNavItems => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call({String bottomNavItems, int index});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavItems = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      bottomNavItems: null == bottomNavItems
          ? _value.bottomNavItems
          : bottomNavItems // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_NavigationStateCopyWith(
          _$_NavigationState value, $Res Function(_$_NavigationState) then) =
      __$$_NavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String bottomNavItems, int index});
}

/// @nodoc
class __$$_NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_NavigationState>
    implements _$$_NavigationStateCopyWith<$Res> {
  __$$_NavigationStateCopyWithImpl(
      _$_NavigationState _value, $Res Function(_$_NavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavItems = null,
    Object? index = null,
  }) {
    return _then(_$_NavigationState(
      bottomNavItems: null == bottomNavItems
          ? _value.bottomNavItems
          : bottomNavItems // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState({this.bottomNavItems = Routes.home, this.index = 0});

  @override
  @JsonKey()
  final String bottomNavItems;
  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'NavigationState(bottomNavItems: $bottomNavItems, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationState &&
            (identical(other.bottomNavItems, bottomNavItems) ||
                other.bottomNavItems == bottomNavItems) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bottomNavItems, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      __$$_NavigationStateCopyWithImpl<_$_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState(
      {final String bottomNavItems, final int index}) = _$_NavigationState;

  @override
  String get bottomNavItems;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_NavigationStateCopyWith<_$_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
