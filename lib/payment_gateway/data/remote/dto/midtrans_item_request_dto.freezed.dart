// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_item_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransItemRequestDTO _$MidtransItemRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _MidtransItemRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$MidtransItemRequestDTO {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransItemRequestDTOCopyWith<MidtransItemRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransItemRequestDTOCopyWith<$Res> {
  factory $MidtransItemRequestDTOCopyWith(MidtransItemRequestDTO value,
          $Res Function(MidtransItemRequestDTO) then) =
      _$MidtransItemRequestDTOCopyWithImpl<$Res, MidtransItemRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$MidtransItemRequestDTOCopyWithImpl<$Res,
        $Val extends MidtransItemRequestDTO>
    implements $MidtransItemRequestDTOCopyWith<$Res> {
  _$MidtransItemRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MidtransItemRequestDTOImplCopyWith<$Res>
    implements $MidtransItemRequestDTOCopyWith<$Res> {
  factory _$$MidtransItemRequestDTOImplCopyWith(
          _$MidtransItemRequestDTOImpl value,
          $Res Function(_$MidtransItemRequestDTOImpl) then) =
      __$$MidtransItemRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'price') int? price,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$MidtransItemRequestDTOImplCopyWithImpl<$Res>
    extends _$MidtransItemRequestDTOCopyWithImpl<$Res,
        _$MidtransItemRequestDTOImpl>
    implements _$$MidtransItemRequestDTOImplCopyWith<$Res> {
  __$$MidtransItemRequestDTOImplCopyWithImpl(
      _$MidtransItemRequestDTOImpl _value,
      $Res Function(_$MidtransItemRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MidtransItemRequestDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MidtransItemRequestDTOImpl implements _MidtransItemRequestDTO {
  _$MidtransItemRequestDTOImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'name') this.name});

  factory _$MidtransItemRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MidtransItemRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'price')
  final int? price;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'MidtransItemRequestDTO(id: $id, price: $price, quantity: $quantity, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransItemRequestDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, price, quantity, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MidtransItemRequestDTOImplCopyWith<_$MidtransItemRequestDTOImpl>
      get copyWith => __$$MidtransItemRequestDTOImplCopyWithImpl<
          _$MidtransItemRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransItemRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _MidtransItemRequestDTO implements MidtransItemRequestDTO {
  factory _MidtransItemRequestDTO(
          {@JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'price') final int? price,
          @JsonKey(name: 'quantity') final int? quantity,
          @JsonKey(name: 'name') final String? name}) =
      _$MidtransItemRequestDTOImpl;

  factory _MidtransItemRequestDTO.fromJson(Map<String, dynamic> json) =
      _$MidtransItemRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'price')
  int? get price;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MidtransItemRequestDTOImplCopyWith<_$MidtransItemRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
