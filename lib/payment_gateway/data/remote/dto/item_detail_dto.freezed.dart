// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDetailDTO _$ItemDetailDTOFromJson(Map<String, dynamic> json) {
  return _ItemDetailDTO.fromJson(json);
}

/// @nodoc
mixin _$ItemDetailDTO {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailDTOCopyWith<ItemDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailDTOCopyWith<$Res> {
  factory $ItemDetailDTOCopyWith(
          ItemDetailDTO value, $Res Function(ItemDetailDTO) then) =
      _$ItemDetailDTOCopyWithImpl<$Res, ItemDetailDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity});
}

/// @nodoc
class _$ItemDetailDTOCopyWithImpl<$Res, $Val extends ItemDetailDTO>
    implements $ItemDetailDTOCopyWith<$Res> {
  _$ItemDetailDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_ItemDetailDTOCopyWith<$Res>
    implements $ItemDetailDTOCopyWith<$Res> {
  factory _$$_ItemDetailDTOCopyWith(
          _$_ItemDetailDTO value, $Res Function(_$_ItemDetailDTO) then) =
      __$$_ItemDetailDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity});
}

/// @nodoc
class __$$_ItemDetailDTOCopyWithImpl<$Res>
    extends _$ItemDetailDTOCopyWithImpl<$Res, _$_ItemDetailDTO>
    implements _$$_ItemDetailDTOCopyWith<$Res> {
  __$$_ItemDetailDTOCopyWithImpl(
      _$_ItemDetailDTO _value, $Res Function(_$_ItemDetailDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$_ItemDetailDTO(
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
class _$_ItemDetailDTO implements _ItemDetailDTO {
  const _$_ItemDetailDTO(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'quantity') this.quantity});

  factory _$_ItemDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailDTOFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;

  @override
  String toString() {
    return 'ItemDetailDTO(name: $name, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetailDTO &&
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
  _$$_ItemDetailDTOCopyWith<_$_ItemDetailDTO> get copyWith =>
      __$$_ItemDetailDTOCopyWithImpl<_$_ItemDetailDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailDTOToJson(
      this,
    );
  }
}

abstract class _ItemDetailDTO implements ItemDetailDTO {
  const factory _ItemDetailDTO(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'price') final int? price,
      @JsonKey(name: 'quantity') final int? quantity}) = _$_ItemDetailDTO;

  factory _ItemDetailDTO.fromJson(Map<String, dynamic> json) =
      _$_ItemDetailDTO.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailDTOCopyWith<_$_ItemDetailDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
