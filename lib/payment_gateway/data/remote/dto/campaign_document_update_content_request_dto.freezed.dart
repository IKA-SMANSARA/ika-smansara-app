// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_update_content_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignDocumentUpdateContentRequestDTO
    _$CampaignDocumentUpdateContentRequestDTOFromJson(
        Map<String, dynamic> json) {
  return _CampaignDocumentUpdateContentRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$CampaignDocumentUpdateContentRequestDTO {
  @JsonKey(name: 'data')
  CampaignDocumentDataContentRequestDTO? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignDocumentUpdateContentRequestDTOCopyWith<
          CampaignDocumentUpdateContentRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentUpdateContentRequestDTOCopyWith<$Res> {
  factory $CampaignDocumentUpdateContentRequestDTOCopyWith(
          CampaignDocumentUpdateContentRequestDTO value,
          $Res Function(CampaignDocumentUpdateContentRequestDTO) then) =
      _$CampaignDocumentUpdateContentRequestDTOCopyWithImpl<$Res,
          CampaignDocumentUpdateContentRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') CampaignDocumentDataContentRequestDTO? data});

  $CampaignDocumentDataContentRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$CampaignDocumentUpdateContentRequestDTOCopyWithImpl<$Res,
        $Val extends CampaignDocumentUpdateContentRequestDTO>
    implements $CampaignDocumentUpdateContentRequestDTOCopyWith<$Res> {
  _$CampaignDocumentUpdateContentRequestDTOCopyWithImpl(
      this._value, this._then);

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
              as CampaignDocumentDataContentRequestDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CampaignDocumentDataContentRequestDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CampaignDocumentDataContentRequestDTOCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CampaignDocumentUpdateContentRequestDTOImplCopyWith<$Res>
    implements $CampaignDocumentUpdateContentRequestDTOCopyWith<$Res> {
  factory _$$CampaignDocumentUpdateContentRequestDTOImplCopyWith(
          _$CampaignDocumentUpdateContentRequestDTOImpl value,
          $Res Function(_$CampaignDocumentUpdateContentRequestDTOImpl) then) =
      __$$CampaignDocumentUpdateContentRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') CampaignDocumentDataContentRequestDTO? data});

  @override
  $CampaignDocumentDataContentRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CampaignDocumentUpdateContentRequestDTOImplCopyWithImpl<$Res>
    extends _$CampaignDocumentUpdateContentRequestDTOCopyWithImpl<$Res,
        _$CampaignDocumentUpdateContentRequestDTOImpl>
    implements _$$CampaignDocumentUpdateContentRequestDTOImplCopyWith<$Res> {
  __$$CampaignDocumentUpdateContentRequestDTOImplCopyWithImpl(
      _$CampaignDocumentUpdateContentRequestDTOImpl _value,
      $Res Function(_$CampaignDocumentUpdateContentRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CampaignDocumentUpdateContentRequestDTOImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CampaignDocumentDataContentRequestDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignDocumentUpdateContentRequestDTOImpl
    implements _CampaignDocumentUpdateContentRequestDTO {
  _$CampaignDocumentUpdateContentRequestDTOImpl(
      {@JsonKey(name: 'data') this.data});

  factory _$CampaignDocumentUpdateContentRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CampaignDocumentUpdateContentRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final CampaignDocumentDataContentRequestDTO? data;

  @override
  String toString() {
    return 'CampaignDocumentUpdateContentRequestDTO(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDocumentUpdateContentRequestDTOImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDocumentUpdateContentRequestDTOImplCopyWith<
          _$CampaignDocumentUpdateContentRequestDTOImpl>
      get copyWith =>
          __$$CampaignDocumentUpdateContentRequestDTOImplCopyWithImpl<
              _$CampaignDocumentUpdateContentRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignDocumentUpdateContentRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _CampaignDocumentUpdateContentRequestDTO
    implements CampaignDocumentUpdateContentRequestDTO {
  factory _CampaignDocumentUpdateContentRequestDTO(
          {@JsonKey(name: 'data')
          final CampaignDocumentDataContentRequestDTO? data}) =
      _$CampaignDocumentUpdateContentRequestDTOImpl;

  factory _CampaignDocumentUpdateContentRequestDTO.fromJson(
          Map<String, dynamic> json) =
      _$CampaignDocumentUpdateContentRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  CampaignDocumentDataContentRequestDTO? get data;
  @override
  @JsonKey(ignore: true)
  _$$CampaignDocumentUpdateContentRequestDTOImplCopyWith<
          _$CampaignDocumentUpdateContentRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
