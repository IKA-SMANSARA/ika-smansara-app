// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'midtrans_transaction_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MidtransTransactionRequestDTO _$MidtransTransactionRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _MidtransTransactionRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$MidtransTransactionRequestDTO {
  @JsonKey(name: 'transaction_details')
  MidtransTransactionDetailsRequestDTO?
      get midtransTransactionDetailsRequestDTO =>
          throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_card')
  MidtransCreditCardRequestDTO? get midtransCreditCardRequestDTO =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'item_details')
  List<MidtransItemRequestDTO>? get midtransItemDetailsRequestDTO =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_details')
  MidtransCustomerDetailsRequestDTO? get midtransCustomerDetailsRequestDTO =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MidtransTransactionRequestDTOCopyWith<MidtransTransactionRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MidtransTransactionRequestDTOCopyWith<$Res> {
  factory $MidtransTransactionRequestDTOCopyWith(
          MidtransTransactionRequestDTO value,
          $Res Function(MidtransTransactionRequestDTO) then) =
      _$MidtransTransactionRequestDTOCopyWithImpl<$Res,
          MidtransTransactionRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transaction_details')
      MidtransTransactionDetailsRequestDTO?
          midtransTransactionDetailsRequestDTO,
      @JsonKey(name: 'credit_card')
      MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO,
      @JsonKey(name: 'item_details')
      List<MidtransItemRequestDTO>? midtransItemDetailsRequestDTO,
      @JsonKey(name: 'customer_details')
      MidtransCustomerDetailsRequestDTO? midtransCustomerDetailsRequestDTO});

  $MidtransTransactionDetailsRequestDTOCopyWith<$Res>?
      get midtransTransactionDetailsRequestDTO;
  $MidtransCreditCardRequestDTOCopyWith<$Res>? get midtransCreditCardRequestDTO;
  $MidtransCustomerDetailsRequestDTOCopyWith<$Res>?
      get midtransCustomerDetailsRequestDTO;
}

/// @nodoc
class _$MidtransTransactionRequestDTOCopyWithImpl<$Res,
        $Val extends MidtransTransactionRequestDTO>
    implements $MidtransTransactionRequestDTOCopyWith<$Res> {
  _$MidtransTransactionRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransTransactionDetailsRequestDTO = freezed,
    Object? midtransCreditCardRequestDTO = freezed,
    Object? midtransItemDetailsRequestDTO = freezed,
    Object? midtransCustomerDetailsRequestDTO = freezed,
  }) {
    return _then(_value.copyWith(
      midtransTransactionDetailsRequestDTO: freezed ==
              midtransTransactionDetailsRequestDTO
          ? _value.midtransTransactionDetailsRequestDTO
          : midtransTransactionDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransTransactionDetailsRequestDTO?,
      midtransCreditCardRequestDTO: freezed == midtransCreditCardRequestDTO
          ? _value.midtransCreditCardRequestDTO
          : midtransCreditCardRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransCreditCardRequestDTO?,
      midtransItemDetailsRequestDTO: freezed == midtransItemDetailsRequestDTO
          ? _value.midtransItemDetailsRequestDTO
          : midtransItemDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as List<MidtransItemRequestDTO>?,
      midtransCustomerDetailsRequestDTO: freezed ==
              midtransCustomerDetailsRequestDTO
          ? _value.midtransCustomerDetailsRequestDTO
          : midtransCustomerDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransCustomerDetailsRequestDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MidtransTransactionDetailsRequestDTOCopyWith<$Res>?
      get midtransTransactionDetailsRequestDTO {
    if (_value.midtransTransactionDetailsRequestDTO == null) {
      return null;
    }

    return $MidtransTransactionDetailsRequestDTOCopyWith<$Res>(
        _value.midtransTransactionDetailsRequestDTO!, (value) {
      return _then(
          _value.copyWith(midtransTransactionDetailsRequestDTO: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MidtransCreditCardRequestDTOCopyWith<$Res>?
      get midtransCreditCardRequestDTO {
    if (_value.midtransCreditCardRequestDTO == null) {
      return null;
    }

    return $MidtransCreditCardRequestDTOCopyWith<$Res>(
        _value.midtransCreditCardRequestDTO!, (value) {
      return _then(
          _value.copyWith(midtransCreditCardRequestDTO: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MidtransCustomerDetailsRequestDTOCopyWith<$Res>?
      get midtransCustomerDetailsRequestDTO {
    if (_value.midtransCustomerDetailsRequestDTO == null) {
      return null;
    }

    return $MidtransCustomerDetailsRequestDTOCopyWith<$Res>(
        _value.midtransCustomerDetailsRequestDTO!, (value) {
      return _then(
          _value.copyWith(midtransCustomerDetailsRequestDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MidtransTransactionRequestDTOImplCopyWith<$Res>
    implements $MidtransTransactionRequestDTOCopyWith<$Res> {
  factory _$$MidtransTransactionRequestDTOImplCopyWith(
          _$MidtransTransactionRequestDTOImpl value,
          $Res Function(_$MidtransTransactionRequestDTOImpl) then) =
      __$$MidtransTransactionRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transaction_details')
      MidtransTransactionDetailsRequestDTO?
          midtransTransactionDetailsRequestDTO,
      @JsonKey(name: 'credit_card')
      MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO,
      @JsonKey(name: 'item_details')
      List<MidtransItemRequestDTO>? midtransItemDetailsRequestDTO,
      @JsonKey(name: 'customer_details')
      MidtransCustomerDetailsRequestDTO? midtransCustomerDetailsRequestDTO});

  @override
  $MidtransTransactionDetailsRequestDTOCopyWith<$Res>?
      get midtransTransactionDetailsRequestDTO;
  @override
  $MidtransCreditCardRequestDTOCopyWith<$Res>? get midtransCreditCardRequestDTO;
  @override
  $MidtransCustomerDetailsRequestDTOCopyWith<$Res>?
      get midtransCustomerDetailsRequestDTO;
}

/// @nodoc
class __$$MidtransTransactionRequestDTOImplCopyWithImpl<$Res>
    extends _$MidtransTransactionRequestDTOCopyWithImpl<$Res,
        _$MidtransTransactionRequestDTOImpl>
    implements _$$MidtransTransactionRequestDTOImplCopyWith<$Res> {
  __$$MidtransTransactionRequestDTOImplCopyWithImpl(
      _$MidtransTransactionRequestDTOImpl _value,
      $Res Function(_$MidtransTransactionRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransTransactionDetailsRequestDTO = freezed,
    Object? midtransCreditCardRequestDTO = freezed,
    Object? midtransItemDetailsRequestDTO = freezed,
    Object? midtransCustomerDetailsRequestDTO = freezed,
  }) {
    return _then(_$MidtransTransactionRequestDTOImpl(
      midtransTransactionDetailsRequestDTO: freezed ==
              midtransTransactionDetailsRequestDTO
          ? _value.midtransTransactionDetailsRequestDTO
          : midtransTransactionDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransTransactionDetailsRequestDTO?,
      midtransCreditCardRequestDTO: freezed == midtransCreditCardRequestDTO
          ? _value.midtransCreditCardRequestDTO
          : midtransCreditCardRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransCreditCardRequestDTO?,
      midtransItemDetailsRequestDTO: freezed == midtransItemDetailsRequestDTO
          ? _value._midtransItemDetailsRequestDTO
          : midtransItemDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as List<MidtransItemRequestDTO>?,
      midtransCustomerDetailsRequestDTO: freezed ==
              midtransCustomerDetailsRequestDTO
          ? _value.midtransCustomerDetailsRequestDTO
          : midtransCustomerDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransCustomerDetailsRequestDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MidtransTransactionRequestDTOImpl
    implements _MidtransTransactionRequestDTO {
  const _$MidtransTransactionRequestDTOImpl(
      {@JsonKey(name: 'transaction_details')
      this.midtransTransactionDetailsRequestDTO,
      @JsonKey(name: 'credit_card') this.midtransCreditCardRequestDTO,
      @JsonKey(name: 'item_details')
      final List<MidtransItemRequestDTO>? midtransItemDetailsRequestDTO,
      @JsonKey(name: 'customer_details')
      this.midtransCustomerDetailsRequestDTO})
      : _midtransItemDetailsRequestDTO = midtransItemDetailsRequestDTO;

  factory _$MidtransTransactionRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MidtransTransactionRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'transaction_details')
  final MidtransTransactionDetailsRequestDTO?
      midtransTransactionDetailsRequestDTO;
  @override
  @JsonKey(name: 'credit_card')
  final MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO;
  final List<MidtransItemRequestDTO>? _midtransItemDetailsRequestDTO;
  @override
  @JsonKey(name: 'item_details')
  List<MidtransItemRequestDTO>? get midtransItemDetailsRequestDTO {
    final value = _midtransItemDetailsRequestDTO;
    if (value == null) return null;
    if (_midtransItemDetailsRequestDTO is EqualUnmodifiableListView)
      return _midtransItemDetailsRequestDTO;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'customer_details')
  final MidtransCustomerDetailsRequestDTO? midtransCustomerDetailsRequestDTO;

  @override
  String toString() {
    return 'MidtransTransactionRequestDTO(midtransTransactionDetailsRequestDTO: $midtransTransactionDetailsRequestDTO, midtransCreditCardRequestDTO: $midtransCreditCardRequestDTO, midtransItemDetailsRequestDTO: $midtransItemDetailsRequestDTO, midtransCustomerDetailsRequestDTO: $midtransCustomerDetailsRequestDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MidtransTransactionRequestDTOImpl &&
            (identical(other.midtransTransactionDetailsRequestDTO,
                    midtransTransactionDetailsRequestDTO) ||
                other.midtransTransactionDetailsRequestDTO ==
                    midtransTransactionDetailsRequestDTO) &&
            (identical(other.midtransCreditCardRequestDTO,
                    midtransCreditCardRequestDTO) ||
                other.midtransCreditCardRequestDTO ==
                    midtransCreditCardRequestDTO) &&
            const DeepCollectionEquality().equals(
                other._midtransItemDetailsRequestDTO,
                _midtransItemDetailsRequestDTO) &&
            (identical(other.midtransCustomerDetailsRequestDTO,
                    midtransCustomerDetailsRequestDTO) ||
                other.midtransCustomerDetailsRequestDTO ==
                    midtransCustomerDetailsRequestDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      midtransTransactionDetailsRequestDTO,
      midtransCreditCardRequestDTO,
      const DeepCollectionEquality().hash(_midtransItemDetailsRequestDTO),
      midtransCustomerDetailsRequestDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MidtransTransactionRequestDTOImplCopyWith<
          _$MidtransTransactionRequestDTOImpl>
      get copyWith => __$$MidtransTransactionRequestDTOImplCopyWithImpl<
          _$MidtransTransactionRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MidtransTransactionRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _MidtransTransactionRequestDTO
    implements MidtransTransactionRequestDTO {
  const factory _MidtransTransactionRequestDTO(
          {@JsonKey(name: 'transaction_details')
          final MidtransTransactionDetailsRequestDTO?
              midtransTransactionDetailsRequestDTO,
          @JsonKey(name: 'credit_card')
          final MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO,
          @JsonKey(name: 'item_details')
          final List<MidtransItemRequestDTO>? midtransItemDetailsRequestDTO,
          @JsonKey(name: 'customer_details')
          final MidtransCustomerDetailsRequestDTO?
              midtransCustomerDetailsRequestDTO}) =
      _$MidtransTransactionRequestDTOImpl;

  factory _MidtransTransactionRequestDTO.fromJson(Map<String, dynamic> json) =
      _$MidtransTransactionRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'transaction_details')
  MidtransTransactionDetailsRequestDTO?
      get midtransTransactionDetailsRequestDTO;
  @override
  @JsonKey(name: 'credit_card')
  MidtransCreditCardRequestDTO? get midtransCreditCardRequestDTO;
  @override
  @JsonKey(name: 'item_details')
  List<MidtransItemRequestDTO>? get midtransItemDetailsRequestDTO;
  @override
  @JsonKey(name: 'customer_details')
  MidtransCustomerDetailsRequestDTO? get midtransCustomerDetailsRequestDTO;
  @override
  @JsonKey(ignore: true)
  _$$MidtransTransactionRequestDTOImplCopyWith<
          _$MidtransTransactionRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
