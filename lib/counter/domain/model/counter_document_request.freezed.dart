// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_document_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CounterDocumentRequest _$CounterDocumentRequestFromJson(
    Map<String, dynamic> json) {
  return _CounterDocumentRequest.fromJson(json);
}

/// @nodoc
mixin _$CounterDocumentRequest {
  String? get documentId => throw _privateConstructorUsedError;
  CounterDataDocumentRequest? get data => throw _privateConstructorUsedError;
  List<String?>? get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CounterDocumentRequestCopyWith<CounterDocumentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterDocumentRequestCopyWith<$Res> {
  factory $CounterDocumentRequestCopyWith(CounterDocumentRequest value,
          $Res Function(CounterDocumentRequest) then) =
      _$CounterDocumentRequestCopyWithImpl<$Res, CounterDocumentRequest>;
  @useResult
  $Res call(
      {String? documentId,
      CounterDataDocumentRequest? data,
      List<String?>? permissions});

  $CounterDataDocumentRequestCopyWith<$Res>? get data;
}

/// @nodoc
class _$CounterDocumentRequestCopyWithImpl<$Res,
        $Val extends CounterDocumentRequest>
    implements $CounterDocumentRequestCopyWith<$Res> {
  _$CounterDocumentRequestCopyWithImpl(this._value, this._then);

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
              as CounterDataDocumentRequest?,
      permissions: freezed == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CounterDataDocumentRequestCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CounterDataDocumentRequestCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CounterDocumentRequestImplCopyWith<$Res>
    implements $CounterDocumentRequestCopyWith<$Res> {
  factory _$$CounterDocumentRequestImplCopyWith(
          _$CounterDocumentRequestImpl value,
          $Res Function(_$CounterDocumentRequestImpl) then) =
      __$$CounterDocumentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? documentId,
      CounterDataDocumentRequest? data,
      List<String?>? permissions});

  @override
  $CounterDataDocumentRequestCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CounterDocumentRequestImplCopyWithImpl<$Res>
    extends _$CounterDocumentRequestCopyWithImpl<$Res,
        _$CounterDocumentRequestImpl>
    implements _$$CounterDocumentRequestImplCopyWith<$Res> {
  __$$CounterDocumentRequestImplCopyWithImpl(
      _$CounterDocumentRequestImpl _value,
      $Res Function(_$CounterDocumentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = freezed,
  }) {
    return _then(_$CounterDocumentRequestImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CounterDataDocumentRequest?,
      permissions: freezed == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CounterDocumentRequestImpl implements _CounterDocumentRequest {
  const _$CounterDocumentRequestImpl(
      {this.documentId, this.data, final List<String?>? permissions})
      : _permissions = permissions;

  factory _$CounterDocumentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CounterDocumentRequestImplFromJson(json);

  @override
  final String? documentId;
  @override
  final CounterDataDocumentRequest? data;
  final List<String?>? _permissions;
  @override
  List<String?>? get permissions {
    final value = _permissions;
    if (value == null) return null;
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CounterDocumentRequest(documentId: $documentId, data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterDocumentRequestImpl &&
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
  _$$CounterDocumentRequestImplCopyWith<_$CounterDocumentRequestImpl>
      get copyWith => __$$CounterDocumentRequestImplCopyWithImpl<
          _$CounterDocumentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CounterDocumentRequestImplToJson(
      this,
    );
  }
}

abstract class _CounterDocumentRequest implements CounterDocumentRequest {
  const factory _CounterDocumentRequest(
      {final String? documentId,
      final CounterDataDocumentRequest? data,
      final List<String?>? permissions}) = _$CounterDocumentRequestImpl;

  factory _CounterDocumentRequest.fromJson(Map<String, dynamic> json) =
      _$CounterDocumentRequestImpl.fromJson;

  @override
  String? get documentId;
  @override
  CounterDataDocumentRequest? get data;
  @override
  List<String?>? get permissions;
  @override
  @JsonKey(ignore: true)
  _$$CounterDocumentRequestImplCopyWith<_$CounterDocumentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
