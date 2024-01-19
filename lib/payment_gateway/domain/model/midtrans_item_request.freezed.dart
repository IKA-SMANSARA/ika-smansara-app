// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_item_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransItemRequest _$MidtransItemRequestFromJson(Map<String, dynamic> json) {
  return _MidtransItemRequest.fromJson(json);
}

/// @nodoc
mixin _$MidtransItemRequest {
  String? get id => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransItemRequestCopyWith<MidtransItemRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransItemRequestCopyWith<$Res> {
  factory $MidtransItemRequestCopyWith(
          MidtransItemRequest value, $Res Function(MidtransItemRequest) then) =
      _$MidtransItemRequestCopyWithImpl<$Res, MidtransItemRequest>;
  @useResult
  $Res call({String? id, int? price, int? quantity, String? name});
}

/// @nodoc
class _$MidtransItemRequestCopyWithImpl<$Res, $Val extends MidtransItemRequest>
    implements $MidtransItemRequestCopyWith<$Res> {
  _$MidtransItemRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$MidtransItemRequestImplCopyWith<$Res>
    implements $MidtransItemRequestCopyWith<$Res> {
  factory _$$MidtransItemRequestImplCopyWith(_$MidtransItemRequestImpl value,
          $Res Function(_$MidtransItemRequestImpl) then) =
      __$$MidtransItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? price, int? quantity, String? name});
}

/// @nodoc
class __$$MidtransItemRequestImplCopyWithImpl<$Res>
    extends _$MidtransItemRequestCopyWithImpl<$Res, _$MidtransItemRequestImpl>
    implements _$$MidtransItemRequestImplCopyWith<$Res> {
  __$$MidtransItemRequestImplCopyWithImpl(_$MidtransItemRequestImpl _value,
      $Res Function(_$MidtransItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? name = freezed,
  }) {
    return _then(_$MidtransItemRequestImpl(
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
class _$MidtransItemRequestImpl implements _MidtransItemRequest {
  _$MidtransItemRequestImpl({this.id, this.price, this.quantity, this.name});

  factory _$MidtransItemRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MidtransItemRequestImplFromJson(json);

  @override
  final String? id;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final String? name;

  @override
  String toString() {
    return 'MidtransItemRequest(id: $id, price: $price, quantity: $quantity, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransItemRequestImpl &&
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
  _$$MidtransItemRequestImplCopyWith<_$MidtransItemRequestImpl> get copyWith =>
      __$$MidtransItemRequestImplCopyWithImpl<_$MidtransItemRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransItemRequestImplToJson(
      this,
    );
  }
}

abstract class _MidtransItemRequest implements MidtransItemRequest {
  factory _MidtransItemRequest(
      {final String? id,
      final int? price,
      final int? quantity,
      final String? name}) = _$MidtransItemRequestImpl;

  factory _MidtransItemRequest.fromJson(Map<String, dynamic> json) =
      _$MidtransItemRequestImpl.fromJson;

  @override
  String? get id;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$MidtransItemRequestImplCopyWith<_$MidtransItemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
