// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselItemResponse _$CarouselItemResponseFromJson(Map<String, dynamic> json) {
  return _CarouselItemResponse.fromJson(json);
}

/// @nodoc
mixin _$CarouselItemResponse {
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselItemResponseCopyWith<CarouselItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselItemResponseCopyWith<$Res> {
  factory $CarouselItemResponseCopyWith(CarouselItemResponse value,
          $Res Function(CarouselItemResponse) then) =
      _$CarouselItemResponseCopyWithImpl<$Res, CarouselItemResponse>;
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class _$CarouselItemResponseCopyWithImpl<$Res,
        $Val extends CarouselItemResponse>
    implements $CarouselItemResponseCopyWith<$Res> {
  _$CarouselItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarouselItemResponseCopyWith<$Res>
    implements $CarouselItemResponseCopyWith<$Res> {
  factory _$$_CarouselItemResponseCopyWith(_$_CarouselItemResponse value,
          $Res Function(_$_CarouselItemResponse) then) =
      __$$_CarouselItemResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? imageUrl});
}

/// @nodoc
class __$$_CarouselItemResponseCopyWithImpl<$Res>
    extends _$CarouselItemResponseCopyWithImpl<$Res, _$_CarouselItemResponse>
    implements _$$_CarouselItemResponseCopyWith<$Res> {
  __$$_CarouselItemResponseCopyWithImpl(_$_CarouselItemResponse _value,
      $Res Function(_$_CarouselItemResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$_CarouselItemResponse(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarouselItemResponse implements _CarouselItemResponse {
  _$_CarouselItemResponse({this.imageUrl});

  factory _$_CarouselItemResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CarouselItemResponseFromJson(json);

  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'CarouselItemResponse(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarouselItemResponse &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CarouselItemResponseCopyWith<_$_CarouselItemResponse> get copyWith =>
      __$$_CarouselItemResponseCopyWithImpl<_$_CarouselItemResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarouselItemResponseToJson(
      this,
    );
  }
}

abstract class _CarouselItemResponse implements CarouselItemResponse {
  factory _CarouselItemResponse({final String? imageUrl}) =
      _$_CarouselItemResponse;

  factory _CarouselItemResponse.fromJson(Map<String, dynamic> json) =
      _$_CarouselItemResponse.fromJson;

  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CarouselItemResponseCopyWith<_$_CarouselItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
