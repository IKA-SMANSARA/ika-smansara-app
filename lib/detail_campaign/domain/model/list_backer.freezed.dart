// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_backer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListBacker _$ListBackerFromJson(Map<String, dynamic> json) {
  return _ListBacker.fromJson(json);
}

/// @nodoc
mixin _$ListBacker {
  List<BackerDocument>? get listBacker => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListBackerCopyWith<ListBacker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListBackerCopyWith<$Res> {
  factory $ListBackerCopyWith(
          ListBacker value, $Res Function(ListBacker) then) =
      _$ListBackerCopyWithImpl<$Res, ListBacker>;
  @useResult
  $Res call({List<BackerDocument>? listBacker});
}

/// @nodoc
class _$ListBackerCopyWithImpl<$Res, $Val extends ListBacker>
    implements $ListBackerCopyWith<$Res> {
  _$ListBackerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listBacker = freezed,
  }) {
    return _then(_value.copyWith(
      listBacker: freezed == listBacker
          ? _value.listBacker
          : listBacker // ignore: cast_nullable_to_non_nullable
              as List<BackerDocument>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListBackerImplCopyWith<$Res>
    implements $ListBackerCopyWith<$Res> {
  factory _$$ListBackerImplCopyWith(
          _$ListBackerImpl value, $Res Function(_$ListBackerImpl) then) =
      __$$ListBackerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BackerDocument>? listBacker});
}

/// @nodoc
class __$$ListBackerImplCopyWithImpl<$Res>
    extends _$ListBackerCopyWithImpl<$Res, _$ListBackerImpl>
    implements _$$ListBackerImplCopyWith<$Res> {
  __$$ListBackerImplCopyWithImpl(
      _$ListBackerImpl _value, $Res Function(_$ListBackerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listBacker = freezed,
  }) {
    return _then(_$ListBackerImpl(
      listBacker: freezed == listBacker
          ? _value._listBacker
          : listBacker // ignore: cast_nullable_to_non_nullable
              as List<BackerDocument>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListBackerImpl implements _ListBacker {
  _$ListBackerImpl({final List<BackerDocument>? listBacker})
      : _listBacker = listBacker;

  factory _$ListBackerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListBackerImplFromJson(json);

  final List<BackerDocument>? _listBacker;
  @override
  List<BackerDocument>? get listBacker {
    final value = _listBacker;
    if (value == null) return null;
    if (_listBacker is EqualUnmodifiableListView) return _listBacker;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListBacker(listBacker: $listBacker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListBackerImpl &&
            const DeepCollectionEquality()
                .equals(other._listBacker, _listBacker));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listBacker));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListBackerImplCopyWith<_$ListBackerImpl> get copyWith =>
      __$$ListBackerImplCopyWithImpl<_$ListBackerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListBackerImplToJson(
      this,
    );
  }
}

abstract class _ListBacker implements ListBacker {
  factory _ListBacker({final List<BackerDocument>? listBacker}) =
      _$ListBackerImpl;

  factory _ListBacker.fromJson(Map<String, dynamic> json) =
      _$ListBackerImpl.fromJson;

  @override
  List<BackerDocument>? get listBacker;
  @override
  @JsonKey(ignore: true)
  _$$ListBackerImplCopyWith<_$ListBackerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
