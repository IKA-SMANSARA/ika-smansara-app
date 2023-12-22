// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_document_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselDocumentResponse _$CarouselDocumentResponseFromJson(
    Map<String, dynamic> json) {
  return _CarouselDocumentResponse.fromJson(json);
}

/// @nodoc
mixin _$CarouselDocumentResponse {
  int? get total => throw _privateConstructorUsedError;
  List<CarouselItemResponse>? get documents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselDocumentResponseCopyWith<CarouselDocumentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselDocumentResponseCopyWith<$Res> {
  factory $CarouselDocumentResponseCopyWith(CarouselDocumentResponse value,
          $Res Function(CarouselDocumentResponse) then) =
      _$CarouselDocumentResponseCopyWithImpl<$Res, CarouselDocumentResponse>;
  @useResult
  $Res call({int? total, List<CarouselItemResponse>? documents});
}

/// @nodoc
class _$CarouselDocumentResponseCopyWithImpl<$Res,
        $Val extends CarouselDocumentResponse>
    implements $CarouselDocumentResponseCopyWith<$Res> {
  _$CarouselDocumentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CarouselItemResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarouselDocumentResponseImplCopyWith<$Res>
    implements $CarouselDocumentResponseCopyWith<$Res> {
  factory _$$CarouselDocumentResponseImplCopyWith(
          _$CarouselDocumentResponseImpl value,
          $Res Function(_$CarouselDocumentResponseImpl) then) =
      __$$CarouselDocumentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<CarouselItemResponse>? documents});
}

/// @nodoc
class __$$CarouselDocumentResponseImplCopyWithImpl<$Res>
    extends _$CarouselDocumentResponseCopyWithImpl<$Res,
        _$CarouselDocumentResponseImpl>
    implements _$$CarouselDocumentResponseImplCopyWith<$Res> {
  __$$CarouselDocumentResponseImplCopyWithImpl(
      _$CarouselDocumentResponseImpl _value,
      $Res Function(_$CarouselDocumentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$CarouselDocumentResponseImpl(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<CarouselItemResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarouselDocumentResponseImpl implements _CarouselDocumentResponse {
  _$CarouselDocumentResponseImpl(
      {this.total, final List<CarouselItemResponse>? documents = const []})
      : _documents = documents;

  factory _$CarouselDocumentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarouselDocumentResponseImplFromJson(json);

  @override
  final int? total;
  final List<CarouselItemResponse>? _documents;
  @override
  @JsonKey()
  List<CarouselItemResponse>? get documents {
    final value = _documents;
    if (value == null) return null;
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CarouselDocumentResponse(total: $total, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselDocumentResponseImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselDocumentResponseImplCopyWith<_$CarouselDocumentResponseImpl>
      get copyWith => __$$CarouselDocumentResponseImplCopyWithImpl<
          _$CarouselDocumentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarouselDocumentResponseImplToJson(
      this,
    );
  }
}

abstract class _CarouselDocumentResponse implements CarouselDocumentResponse {
  factory _CarouselDocumentResponse(
          {final int? total, final List<CarouselItemResponse>? documents}) =
      _$CarouselDocumentResponseImpl;

  factory _CarouselDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$CarouselDocumentResponseImpl.fromJson;

  @override
  int? get total;
  @override
  List<CarouselItemResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$CarouselDocumentResponseImplCopyWith<_$CarouselDocumentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
