// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_document_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterDocumentRequestDTO _$CounterDocumentRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _CounterDocumentRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$CounterDocumentRequestDTO {
  @JsonKey(name: 'documentId')
  String? get documentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CounterDataDocumentRequestDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'permissions')
  List<String?>? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterDocumentRequestDTOCopyWith<CounterDocumentRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDocumentRequestDTOCopyWith<$Res> {
  factory $CounterDocumentRequestDTOCopyWith(CounterDocumentRequestDTO value,
          $Res Function(CounterDocumentRequestDTO) then) =
      _$CounterDocumentRequestDTOCopyWithImpl<$Res, CounterDocumentRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'documentId') String? documentId,
      @JsonKey(name: 'data') CounterDataDocumentRequestDTO? data,
      @JsonKey(name: 'permissions') List<String?>? permissions});

  $CounterDataDocumentRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$CounterDocumentRequestDTOCopyWithImpl<$Res,
        $Val extends CounterDocumentRequestDTO>
    implements $CounterDocumentRequestDTOCopyWith<$Res> {
  _$CounterDocumentRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_value.copyWith(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CounterDataDocumentRequestDTO?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounterDataDocumentRequestDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CounterDataDocumentRequestDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CounterDocumentRequestDTOImplCopyWith<$Res>
    implements $CounterDocumentRequestDTOCopyWith<$Res> {
  factory _$$CounterDocumentRequestDTOImplCopyWith(
          _$CounterDocumentRequestDTOImpl value,
          $Res Function(_$CounterDocumentRequestDTOImpl) then) =
      __$$CounterDocumentRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'documentId') String? documentId,
      @JsonKey(name: 'data') CounterDataDocumentRequestDTO? data,
      @JsonKey(name: 'permissions') List<String?>? permissions});

  @override
  $CounterDataDocumentRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CounterDocumentRequestDTOImplCopyWithImpl<$Res>
    extends _$CounterDocumentRequestDTOCopyWithImpl<$Res,
        _$CounterDocumentRequestDTOImpl>
    implements _$$CounterDocumentRequestDTOImplCopyWith<$Res> {
  __$$CounterDocumentRequestDTOImplCopyWithImpl(
      _$CounterDocumentRequestDTOImpl _value,
      $Res Function(_$CounterDocumentRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_$CounterDocumentRequestDTOImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CounterDataDocumentRequestDTO?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterDocumentRequestDTOImpl implements _CounterDocumentRequestDTO {
  const _$CounterDocumentRequestDTOImpl(
      {@JsonKey(name: 'documentId') this.documentId,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'permissions') final List<String?>? permissions})
      : _permissions = permissions;

  factory _$CounterDocumentRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CounterDocumentRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'documentId')
  final String? documentId;
  @override
  @JsonKey(name: 'data')
  final CounterDataDocumentRequestDTO? data;
  final List<String?>? _permissions;
  @override
  @JsonKey(name: 'permissions')
  List<String?>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CounterDocumentRequestDTO(documentId: $documentId, data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterDocumentRequestDTOImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, documentId, data,
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterDocumentRequestDTOImplCopyWith<_$CounterDocumentRequestDTOImpl>
      get copyWith => __$$CounterDocumentRequestDTOImplCopyWithImpl<
          _$CounterDocumentRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterDocumentRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _CounterDocumentRequestDTO implements CounterDocumentRequestDTO {
  const factory _CounterDocumentRequestDTO(
          {@JsonKey(name: 'documentId') final String? documentId,
          @JsonKey(name: 'data') final CounterDataDocumentRequestDTO? data,
          @JsonKey(name: 'permissions') final List<String?>? permissions}) =
      _$CounterDocumentRequestDTOImpl;

  factory _CounterDocumentRequestDTO.fromJson(Map<String, dynamic> json) =
      _$CounterDocumentRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'documentId')
  String? get documentId;
  @override
  @JsonKey(name: 'data')
  CounterDataDocumentRequestDTO? get data;
  @override
  @JsonKey(name: 'permissions')
  List<String?>? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$CounterDocumentRequestDTOImplCopyWith<_$CounterDocumentRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
