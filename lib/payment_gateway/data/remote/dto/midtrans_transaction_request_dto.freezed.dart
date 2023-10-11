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
      MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO});

  $MidtransTransactionDetailsRequestDTOCopyWith<$Res>?
      get midtransTransactionDetailsRequestDTO;
  $MidtransCreditCardRequestDTOCopyWith<$Res>? get midtransCreditCardRequestDTO;
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
}

/// @nodoc
abstract class _$$_MidtransTransactionRequestDTOCopyWith<$Res>
    implements $MidtransTransactionRequestDTOCopyWith<$Res> {
  factory _$$_MidtransTransactionRequestDTOCopyWith(
          _$_MidtransTransactionRequestDTO value,
          $Res Function(_$_MidtransTransactionRequestDTO) then) =
      __$$_MidtransTransactionRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transaction_details')
      MidtransTransactionDetailsRequestDTO?
          midtransTransactionDetailsRequestDTO,
      @JsonKey(name: 'credit_card')
      MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO});

  @override
  $MidtransTransactionDetailsRequestDTOCopyWith<$Res>?
      get midtransTransactionDetailsRequestDTO;
  @override
  $MidtransCreditCardRequestDTOCopyWith<$Res>? get midtransCreditCardRequestDTO;
}

/// @nodoc
class __$$_MidtransTransactionRequestDTOCopyWithImpl<$Res>
    extends _$MidtransTransactionRequestDTOCopyWithImpl<$Res,
        _$_MidtransTransactionRequestDTO>
    implements _$$_MidtransTransactionRequestDTOCopyWith<$Res> {
  __$$_MidtransTransactionRequestDTOCopyWithImpl(
      _$_MidtransTransactionRequestDTO _value,
      $Res Function(_$_MidtransTransactionRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? midtransTransactionDetailsRequestDTO = freezed,
    Object? midtransCreditCardRequestDTO = freezed,
  }) {
    return _then(_$_MidtransTransactionRequestDTO(
      midtransTransactionDetailsRequestDTO: freezed ==
              midtransTransactionDetailsRequestDTO
          ? _value.midtransTransactionDetailsRequestDTO
          : midtransTransactionDetailsRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransTransactionDetailsRequestDTO?,
      midtransCreditCardRequestDTO: freezed == midtransCreditCardRequestDTO
          ? _value.midtransCreditCardRequestDTO
          : midtransCreditCardRequestDTO // ignore: cast_nullable_to_non_nullable
              as MidtransCreditCardRequestDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MidtransTransactionRequestDTO
    implements _MidtransTransactionRequestDTO {
  const _$_MidtransTransactionRequestDTO(
      {@JsonKey(name: 'transaction_details')
      this.midtransTransactionDetailsRequestDTO,
      @JsonKey(name: 'credit_card') this.midtransCreditCardRequestDTO});

  factory _$_MidtransTransactionRequestDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_MidtransTransactionRequestDTOFromJson(json);

  @override
  @JsonKey(name: 'transaction_details')
  final MidtransTransactionDetailsRequestDTO?
      midtransTransactionDetailsRequestDTO;
  @override
  @JsonKey(name: 'credit_card')
  final MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO;

  @override
  String toString() {
    return 'MidtransTransactionRequestDTO(midtransTransactionDetailsRequestDTO: $midtransTransactionDetailsRequestDTO, midtransCreditCardRequestDTO: $midtransCreditCardRequestDTO)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MidtransTransactionRequestDTO &&
            (identical(other.midtransTransactionDetailsRequestDTO,
                    midtransTransactionDetailsRequestDTO) ||
                other.midtransTransactionDetailsRequestDTO ==
                    midtransTransactionDetailsRequestDTO) &&
            (identical(other.midtransCreditCardRequestDTO,
                    midtransCreditCardRequestDTO) ||
                other.midtransCreditCardRequestDTO ==
                    midtransCreditCardRequestDTO));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      midtransTransactionDetailsRequestDTO, midtransCreditCardRequestDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MidtransTransactionRequestDTOCopyWith<_$_MidtransTransactionRequestDTO>
      get copyWith => __$$_MidtransTransactionRequestDTOCopyWithImpl<
          _$_MidtransTransactionRequestDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MidtransTransactionRequestDTOToJson(
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
          final MidtransCreditCardRequestDTO? midtransCreditCardRequestDTO}) =
      _$_MidtransTransactionRequestDTO;

  factory _MidtransTransactionRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_MidtransTransactionRequestDTO.fromJson;

  @override
  @JsonKey(name: 'transaction_details')
  MidtransTransactionDetailsRequestDTO?
      get midtransTransactionDetailsRequestDTO;
  @override
  @JsonKey(name: 'credit_card')
  MidtransCreditCardRequestDTO? get midtransCreditCardRequestDTO;
  @override
  @JsonKey(ignore: true)
  _$$_MidtransTransactionRequestDTOCopyWith<_$_MidtransTransactionRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}
