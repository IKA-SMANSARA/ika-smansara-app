// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_update_content_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignDocumentUpdateContentRequest
    _$CampaignDocumentUpdateContentRequestFromJson(Map<String, dynamic> json) {
  return _CampaignDocumentUpdateContentRequest.fromJson(json);
}

/// @nodoc
mixin _$CampaignDocumentUpdateContentRequest {
  CampaignDocumentDataContentRequest? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDocumentUpdateContentRequestCopyWith<
          CampaignDocumentUpdateContentRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentUpdateContentRequestCopyWith<$Res> {
  factory $CampaignDocumentUpdateContentRequestCopyWith(
          CampaignDocumentUpdateContentRequest value,
          $Res Function(CampaignDocumentUpdateContentRequest) then) =
      _$CampaignDocumentUpdateContentRequestCopyWithImpl<$Res,
          CampaignDocumentUpdateContentRequest>;
  @useResult
  $Res call({CampaignDocumentDataContentRequest? data});

  $CampaignDocumentDataContentRequestCopyWith<$Res>? get data;
}

/// @nodoc
class _$CampaignDocumentUpdateContentRequestCopyWithImpl<$Res,
        $Val extends CampaignDocumentUpdateContentRequest>
    implements $CampaignDocumentUpdateContentRequestCopyWith<$Res> {
  _$CampaignDocumentUpdateContentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CampaignDocumentDataContentRequest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CampaignDocumentDataContentRequestCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CampaignDocumentDataContentRequestCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CampaignDocumentUpdateContentRequestImplCopyWith<$Res>
    implements $CampaignDocumentUpdateContentRequestCopyWith<$Res> {
  factory _$$CampaignDocumentUpdateContentRequestImplCopyWith(
          _$CampaignDocumentUpdateContentRequestImpl value,
          $Res Function(_$CampaignDocumentUpdateContentRequestImpl) then) =
      __$$CampaignDocumentUpdateContentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CampaignDocumentDataContentRequest? data});

  @override
  $CampaignDocumentDataContentRequestCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CampaignDocumentUpdateContentRequestImplCopyWithImpl<$Res>
    extends _$CampaignDocumentUpdateContentRequestCopyWithImpl<$Res,
        _$CampaignDocumentUpdateContentRequestImpl>
    implements _$$CampaignDocumentUpdateContentRequestImplCopyWith<$Res> {
  __$$CampaignDocumentUpdateContentRequestImplCopyWithImpl(
      _$CampaignDocumentUpdateContentRequestImpl _value,
      $Res Function(_$CampaignDocumentUpdateContentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CampaignDocumentUpdateContentRequestImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CampaignDocumentDataContentRequest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignDocumentUpdateContentRequestImpl
    implements _CampaignDocumentUpdateContentRequest {
  _$CampaignDocumentUpdateContentRequestImpl({this.data});

  factory _$CampaignDocumentUpdateContentRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CampaignDocumentUpdateContentRequestImplFromJson(json);

  @override
  final CampaignDocumentDataContentRequest? data;

  @override
  String toString() {
    return 'CampaignDocumentUpdateContentRequest(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDocumentUpdateContentRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDocumentUpdateContentRequestImplCopyWith<
          _$CampaignDocumentUpdateContentRequestImpl>
      get copyWith => __$$CampaignDocumentUpdateContentRequestImplCopyWithImpl<
          _$CampaignDocumentUpdateContentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDocumentUpdateContentRequestImplToJson(
      this,
    );
  }
}

abstract class _CampaignDocumentUpdateContentRequest
    implements CampaignDocumentUpdateContentRequest {
  factory _CampaignDocumentUpdateContentRequest(
          {final CampaignDocumentDataContentRequest? data}) =
      _$CampaignDocumentUpdateContentRequestImpl;

  factory _CampaignDocumentUpdateContentRequest.fromJson(
          Map<String, dynamic> json) =
      _$CampaignDocumentUpdateContentRequestImpl.fromJson;

  @override
  CampaignDocumentDataContentRequest? get data;
  @override
  @JsonKey(ignore: true)
  _$$CampaignDocumentUpdateContentRequestImplCopyWith<
          _$CampaignDocumentUpdateContentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
