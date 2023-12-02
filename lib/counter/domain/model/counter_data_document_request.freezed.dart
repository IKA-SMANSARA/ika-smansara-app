// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_data_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterDataDocumentRequest _$CounterDataDocumentRequestFromJson(
    Map<String, dynamic> json) {
  return _CounterDataDocumentRequest.fromJson(json);
}

/// @nodoc
mixin _$CounterDataDocumentRequest {
  String? get counterValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterDataDocumentRequestCopyWith<CounterDataDocumentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDataDocumentRequestCopyWith<$Res> {
  factory $CounterDataDocumentRequestCopyWith(CounterDataDocumentRequest value,
          $Res Function(CounterDataDocumentRequest) then) =
      _$CounterDataDocumentRequestCopyWithImpl<$Res,
          CounterDataDocumentRequest>;
  @useResult
  $Res call({String? counterValue});
}

/// @nodoc
class _$CounterDataDocumentRequestCopyWithImpl<$Res,
        $Val extends CounterDataDocumentRequest>
    implements $CounterDataDocumentRequestCopyWith<$Res> {
  _$CounterDataDocumentRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$CounterDataDocumentRequestImplCopyWith<$Res>
    implements $CounterDataDocumentRequestCopyWith<$Res> {
  factory _$$CounterDataDocumentRequestImplCopyWith(
          _$CounterDataDocumentRequestImpl value,
          $Res Function(_$CounterDataDocumentRequestImpl) then) =
      __$$CounterDataDocumentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? counterValue});
}

/// @nodoc
class __$$CounterDataDocumentRequestImplCopyWithImpl<$Res>
    extends _$CounterDataDocumentRequestCopyWithImpl<$Res,
        _$CounterDataDocumentRequestImpl>
    implements _$$CounterDataDocumentRequestImplCopyWith<$Res> {
  __$$CounterDataDocumentRequestImplCopyWithImpl(
      _$CounterDataDocumentRequestImpl _value,
      $Res Function(_$CounterDataDocumentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counterValue = freezed,
  }) {
    return _then(_$CounterDataDocumentRequestImpl(
      counterValue: freezed == counterValue
          ? _value.counterValue
          : counterValue // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterDataDocumentRequestImpl implements _CounterDataDocumentRequest {
  const _$CounterDataDocumentRequestImpl({this.counterValue});

  factory _$CounterDataDocumentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CounterDataDocumentRequestImplFromJson(json);

  @override
  final String? counterValue;

  @override
  String toString() {
    return 'CounterDataDocumentRequest(counterValue: $counterValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterDataDocumentRequestImpl &&
            (identical(other.counterValue, counterValue) ||
                other.counterValue == counterValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, counterValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterDataDocumentRequestImplCopyWith<_$CounterDataDocumentRequestImpl>
      get copyWith => __$$CounterDataDocumentRequestImplCopyWithImpl<
          _$CounterDataDocumentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterDataDocumentRequestImplToJson(
      this,
    );
  }
}

abstract class _CounterDataDocumentRequest
    implements CounterDataDocumentRequest {
  const factory _CounterDataDocumentRequest({final String? counterValue}) =
      _$CounterDataDocumentRequestImpl;

  factory _CounterDataDocumentRequest.fromJson(Map<String, dynamic> json) =
      _$CounterDataDocumentRequestImpl.fromJson;

  @override
  String? get counterValue;
  @override
  @JsonKey(ignore: true)
  _$$CounterDataDocumentRequestImplCopyWith<_$CounterDataDocumentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
