// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDetail _$ItemDetailFromJson(Map<String, dynamic> json) {
  return _ItemDetail.fromJson(json);
}

/// @nodoc
mixin _$ItemDetail {
  String? get name => throw _privateConstructorUsedError;

  int? get price => throw _privateConstructorUsedError;

  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemDetailCopyWith<ItemDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailCopyWith<$Res> {
  factory $ItemDetailCopyWith(
          ItemDetail value, $Res Function(ItemDetail) then) =
      _$ItemDetailCopyWithImpl<$Res, ItemDetail>;

  @useResult
  $Res call({String? name, int? price, int? quantity});
}

/// @nodoc
class _$ItemDetailCopyWithImpl<$Res, $Val extends ItemDetail>
    implements $ItemDetailCopyWith<$Res> {
  _$ItemDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemDetailCopyWith<$Res>
    implements $ItemDetailCopyWith<$Res> {
  factory _$$_ItemDetailCopyWith(
          _$_ItemDetail value, $Res Function(_$_ItemDetail) then) =
      __$$_ItemDetailCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? name, int? price, int? quantity});
}

/// @nodoc
class __$$_ItemDetailCopyWithImpl<$Res>
    extends _$ItemDetailCopyWithImpl<$Res, _$_ItemDetail>
    implements _$$_ItemDetailCopyWith<$Res> {
  __$$_ItemDetailCopyWithImpl(
      _$_ItemDetail _value, $Res Function(_$_ItemDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_ItemDetail(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDetail implements _ItemDetail {
  const _$_ItemDetail({this.name, this.price, this.quantity});

  factory _$_ItemDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailFromJson(json);

  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'ItemDetail(name: $name, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemDetailCopyWith<_$_ItemDetail> get copyWith =>
      __$$_ItemDetailCopyWithImpl<_$_ItemDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailToJson(
      this,
    );
  }
}

abstract class _ItemDetail implements ItemDetail {
  const factory _ItemDetail(
      {final String? name,
      final int? price,
      final int? quantity}) = _$_ItemDetail;

  factory _ItemDetail.fromJson(Map<String, dynamic> json) =
      _$_ItemDetail.fromJson;

  @override
  String? get name;

  @override
  int? get price;

  @override
  int? get quantity;

  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailCopyWith<_$_ItemDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
