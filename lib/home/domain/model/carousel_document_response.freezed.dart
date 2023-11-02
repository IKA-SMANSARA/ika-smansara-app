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
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents')
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
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CarouselItemResponse>? documents});
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
abstract class _$$_CarouselDocumentResponseCopyWith<$Res>
    implements $CarouselDocumentResponseCopyWith<$Res> {
  factory _$$_CarouselDocumentResponseCopyWith(
          _$_CarouselDocumentResponse value,
          $Res Function(_$_CarouselDocumentResponse) then) =
      __$$_CarouselDocumentResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total') int? total,
      @JsonKey(name: 'documents') List<CarouselItemResponse>? documents});
}

/// @nodoc
class __$$_CarouselDocumentResponseCopyWithImpl<$Res>
    extends _$CarouselDocumentResponseCopyWithImpl<$Res,
        _$_CarouselDocumentResponse>
    implements _$$_CarouselDocumentResponseCopyWith<$Res> {
  __$$_CarouselDocumentResponseCopyWithImpl(_$_CarouselDocumentResponse _value,
      $Res Function(_$_CarouselDocumentResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? documents = freezed,
  }) {
    return _then(_$_CarouselDocumentResponse(
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
class _$_CarouselDocumentResponse implements _CarouselDocumentResponse {
  _$_CarouselDocumentResponse(
      {@JsonKey(name: 'total') this.total,
      @JsonKey(name: 'documents') final List<CarouselItemResponse>? documents})
      : _documents = documents;

  factory _$_CarouselDocumentResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CarouselDocumentResponseFromJson(json);

  @override
  @JsonKey(name: 'total')
  final int? total;
  final List<CarouselItemResponse>? _documents;
  @override
  @JsonKey(name: 'documents')
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarouselDocumentResponse &&
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
  _$$_CarouselDocumentResponseCopyWith<_$_CarouselDocumentResponse>
      get copyWith => __$$_CarouselDocumentResponseCopyWithImpl<
          _$_CarouselDocumentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarouselDocumentResponseToJson(
      this,
    );
  }
}

abstract class _CarouselDocumentResponse implements CarouselDocumentResponse {
  factory _CarouselDocumentResponse(
          {@JsonKey(name: 'total') final int? total,
          @JsonKey(name: 'documents')
          final List<CarouselItemResponse>? documents}) =
      _$_CarouselDocumentResponse;

  factory _CarouselDocumentResponse.fromJson(Map<String, dynamic> json) =
      _$_CarouselDocumentResponse.fromJson;

  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'documents')
  List<CarouselItemResponse>? get documents;
  @override
  @JsonKey(ignore: true)
  _$$_CarouselDocumentResponseCopyWith<_$_CarouselDocumentResponse>
      get copyWith => throw _privateConstructorUsedError;
}
