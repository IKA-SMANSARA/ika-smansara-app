// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryItemResponse _$CategoryItemResponseFromJson(Map<String, dynamic> json) {
  return _CategoryItemResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryItemResponse {
  String? get nameCategory => throw _privateConstructorUsedError;
  String? get categoryIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryItemResponseCopyWith<CategoryItemResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemResponseCopyWith<$Res> {
  factory $CategoryItemResponseCopyWith(CategoryItemResponse value,
          $Res Function(CategoryItemResponse) then) =
      _$CategoryItemResponseCopyWithImpl<$Res, CategoryItemResponse>;
  @useResult
  $Res call({String? nameCategory, String? categoryIcon});
}

/// @nodoc
class _$CategoryItemResponseCopyWithImpl<$Res,
        $Val extends CategoryItemResponse>
    implements $CategoryItemResponseCopyWith<$Res> {
  _$CategoryItemResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameCategory = freezed,
    Object? categoryIcon = freezed,
  }) {
    return _then(_value.copyWith(
      nameCategory: freezed == nameCategory
          ? _value.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemResponseImplCopyWith<$Res>
    implements $CategoryItemResponseCopyWith<$Res> {
  factory _$$CategoryItemResponseImplCopyWith(_$CategoryItemResponseImpl value,
          $Res Function(_$CategoryItemResponseImpl) then) =
      __$$CategoryItemResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nameCategory, String? categoryIcon});
}

/// @nodoc
class __$$CategoryItemResponseImplCopyWithImpl<$Res>
    extends _$CategoryItemResponseCopyWithImpl<$Res, _$CategoryItemResponseImpl>
    implements _$$CategoryItemResponseImplCopyWith<$Res> {
  __$$CategoryItemResponseImplCopyWithImpl(_$CategoryItemResponseImpl _value,
      $Res Function(_$CategoryItemResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameCategory = freezed,
    Object? categoryIcon = freezed,
  }) {
    return _then(_$CategoryItemResponseImpl(
      nameCategory: freezed == nameCategory
          ? _value.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemResponseImpl implements _CategoryItemResponse {
  _$CategoryItemResponseImpl({this.nameCategory, this.categoryIcon});

  factory _$CategoryItemResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemResponseImplFromJson(json);

  @override
  final String? nameCategory;
  @override
  final String? categoryIcon;

  @override
  String toString() {
    return 'CategoryItemResponse(nameCategory: $nameCategory, categoryIcon: $categoryIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemResponseImpl &&
            (identical(other.nameCategory, nameCategory) ||
                other.nameCategory == nameCategory) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nameCategory, categoryIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemResponseImplCopyWith<_$CategoryItemResponseImpl>
      get copyWith =>
          __$$CategoryItemResponseImplCopyWithImpl<_$CategoryItemResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryItemResponse implements CategoryItemResponse {
  factory _CategoryItemResponse(
      {final String? nameCategory,
      final String? categoryIcon}) = _$CategoryItemResponseImpl;

  factory _CategoryItemResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryItemResponseImpl.fromJson;

  @override
  String? get nameCategory;
  @override
  String? get categoryIcon;
  @override
  @JsonKey(ignore: true)
  _$$CategoryItemResponseImplCopyWith<_$CategoryItemResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
