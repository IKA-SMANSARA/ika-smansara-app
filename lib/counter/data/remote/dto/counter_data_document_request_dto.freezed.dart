// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_data_document_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterDataDocumentRequestDTO _$CounterDataDocumentRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _CounterDataDocumentRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$CounterDataDocumentRequestDTO {
  @JsonKey(name: 'counter-value')
  String? get counterValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterDataDocumentRequestDTOCopyWith<CounterDataDocumentRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDataDocumentRequestDTOCopyWith<$Res> {
  factory $CounterDataDocumentRequestDTOCopyWith(
          CounterDataDocumentRequestDTO value,
          $Res Function(CounterDataDocumentRequestDTO) then) =
      _$CounterDataDocumentRequestDTOCopyWithImpl<$Res,
          CounterDataDocumentRequestDTO>;
  @useResult
  $Res call({@JsonKey(name: 'counter-value') String? counterValue});
}

/// @nodoc
class _$CounterDataDocumentRequestDTOCopyWithImpl<$Res,
        $Val extends CounterDataDocumentRequestDTO>
    implements $CounterDataDocumentRequestDTOCopyWith<$Res> {
  _$CounterDataDocumentRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterValue = freezed,
  }) {
    return _then(_value.copyWith(
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CounterDataDocumentRequestDTOCopyWith<$Res>
    implements $CounterDataDocumentRequestDTOCopyWith<$Res> {
  factory _$$_CounterDataDocumentRequestDTOCopyWith(
          _$_CounterDataDocumentRequestDTO value,
          $Res Function(_$_CounterDataDocumentRequestDTO) then) =
      __$$_CounterDataDocumentRequestDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'counter-value') String? counterValue});
}

/// @nodoc
class __$$_CounterDataDocumentRequestDTOCopyWithImpl<$Res>
    extends _$CounterDataDocumentRequestDTOCopyWithImpl<$Res,
        _$_CounterDataDocumentRequestDTO>
    implements _$$_CounterDataDocumentRequestDTOCopyWith<$Res> {
  __$$_CounterDataDocumentRequestDTOCopyWithImpl(
      _$_CounterDataDocumentRequestDTO _value,
      $Res Function(_$_CounterDataDocumentRequestDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterValue = freezed,
  }) {
    return _then(_$_CounterDataDocumentRequestDTO(
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CounterDataDocumentRequestDTO
    implements _CounterDataDocumentRequestDTO {
  const _$_CounterDataDocumentRequestDTO(
      {@JsonKey(name: 'counter-value') this.counterValue});

  factory _$_CounterDataDocumentRequestDTO.fromJson(
          Map<String, dynamic> json) =>
      _$$_CounterDataDocumentRequestDTOFromJson(json);

  @override
  @JsonKey(name: 'counter-value')
  final String? counterValue;

  @override
  String toString() {
    return 'CounterDataDocumentRequestDTO(counterValue: $counterValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CounterDataDocumentRequestDTO &&
            (identical(other.counterValue, counterValue) ||
                other.counterValue == counterValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, counterValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CounterDataDocumentRequestDTOCopyWith<_$_CounterDataDocumentRequestDTO>
      get copyWith => __$$_CounterDataDocumentRequestDTOCopyWithImpl<
          _$_CounterDataDocumentRequestDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CounterDataDocumentRequestDTOToJson(
      this,
    );
  }
}

abstract class _CounterDataDocumentRequestDTO
    implements CounterDataDocumentRequestDTO {
  const factory _CounterDataDocumentRequestDTO(
          {@JsonKey(name: 'counter-value') final String? counterValue}) =
      _$_CounterDataDocumentRequestDTO;

  factory _CounterDataDocumentRequestDTO.fromJson(Map<String, dynamic> json) =
      _$_CounterDataDocumentRequestDTO.fromJson;

  @override
  @JsonKey(name: 'counter-value')
  String? get counterValue;
  @override
  @JsonKey(ignore: true)
  _$$_CounterDataDocumentRequestDTOCopyWith<_$_CounterDataDocumentRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}