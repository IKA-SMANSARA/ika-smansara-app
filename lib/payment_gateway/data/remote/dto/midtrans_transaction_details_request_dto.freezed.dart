// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_transaction_details_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransTransactionDetailsRequestDTO
    _$MidtransTransactionDetailsRequestDTOFromJson(Map<String, dynamic> json) {
  return _MidtransTransactionDetailsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$MidtransTransactionDetailsRequestDTO {
  @JsonKey(name: 'order_id')
  String? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gross_amount')
  int? get grossAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransTransactionDetailsRequestDTOCopyWith<
          MidtransTransactionDetailsRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransTransactionDetailsRequestDTOCopyWith<$Res> {
  factory $MidtransTransactionDetailsRequestDTOCopyWith(
          MidtransTransactionDetailsRequestDTO value,
          $Res Function(MidtransTransactionDetailsRequestDTO) then) =
      _$MidtransTransactionDetailsRequestDTOCopyWithImpl<$Res,
          MidtransTransactionDetailsRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'gross_amount') int? grossAmount});
}

/// @nodoc
class _$MidtransTransactionDetailsRequestDTOCopyWithImpl<$Res,
        $Val extends MidtransTransactionDetailsRequestDTO>
    implements $MidtransTransactionDetailsRequestDTOCopyWith<$Res> {
  _$MidtransTransactionDetailsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? grossAmount = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MidtransTransactionDetailsRequestDTOImplCopyWith<$Res>
    implements $MidtransTransactionDetailsRequestDTOCopyWith<$Res> {
  factory _$$MidtransTransactionDetailsRequestDTOImplCopyWith(
          _$MidtransTransactionDetailsRequestDTOImpl value,
          $Res Function(_$MidtransTransactionDetailsRequestDTOImpl) then) =
      __$$MidtransTransactionDetailsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') String? orderId,
      @JsonKey(name: 'gross_amount') int? grossAmount});
}

/// @nodoc
class __$$MidtransTransactionDetailsRequestDTOImplCopyWithImpl<$Res>
    extends _$MidtransTransactionDetailsRequestDTOCopyWithImpl<$Res,
        _$MidtransTransactionDetailsRequestDTOImpl>
    implements _$$MidtransTransactionDetailsRequestDTOImplCopyWith<$Res> {
  __$$MidtransTransactionDetailsRequestDTOImplCopyWithImpl(
      _$MidtransTransactionDetailsRequestDTOImpl _value,
      $Res Function(_$MidtransTransactionDetailsRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? grossAmount = freezed,
  }) {
    return _then(_$MidtransTransactionDetailsRequestDTOImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      grossAmount: freezed == grossAmount
          ? _value.grossAmount
          : grossAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MidtransTransactionDetailsRequestDTOImpl
    implements _MidtransTransactionDetailsRequestDTO {
  const _$MidtransTransactionDetailsRequestDTOImpl(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'gross_amount') this.grossAmount});

  factory _$MidtransTransactionDetailsRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MidtransTransactionDetailsRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final String? orderId;
  @override
  @JsonKey(name: 'gross_amount')
  final int? grossAmount;

  @override
  String toString() {
    return 'MidtransTransactionDetailsRequestDTO(orderId: $orderId, grossAmount: $grossAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransTransactionDetailsRequestDTOImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.grossAmount, grossAmount) ||
                other.grossAmount == grossAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, grossAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MidtransTransactionDetailsRequestDTOImplCopyWith<
          _$MidtransTransactionDetailsRequestDTOImpl>
      get copyWith => __$$MidtransTransactionDetailsRequestDTOImplCopyWithImpl<
          _$MidtransTransactionDetailsRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransTransactionDetailsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionDetailsRequestDTO
    implements MidtransTransactionDetailsRequestDTO {
  const factory _MidtransTransactionDetailsRequestDTO(
          {@JsonKey(name: 'order_id') final String? orderId,
          @JsonKey(name: 'gross_amount') final int? grossAmount}) =
      _$MidtransTransactionDetailsRequestDTOImpl;

  factory _MidtransTransactionDetailsRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$MidtransTransactionDetailsRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  String? get orderId;
  @override
  @JsonKey(name: 'gross_amount')
  int? get grossAmount;
  @override
  @JsonKey(ignore: true)
  _$$MidtransTransactionDetailsRequestDTOImplCopyWith<
          _$MidtransTransactionDetailsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
