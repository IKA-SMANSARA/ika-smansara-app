// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_doc_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterDocRequestDTO _$UserRegisterDocRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _UserRegisterDocRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterDocRequestDTO {
  @JsonKey(name: 'documentId')
  String? get documentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserProfileDocRequestDTO? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'permissions')
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterDocRequestDTOCopyWith<UserRegisterDocRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterDocRequestDTOCopyWith<$Res> {
  factory $UserRegisterDocRequestDTOCopyWith(UserRegisterDocRequestDTO value,
          $Res Function(UserRegisterDocRequestDTO) then) =
      _$UserRegisterDocRequestDTOCopyWithImpl<$Res, UserRegisterDocRequestDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'documentId') String? documentId,
      @JsonKey(name: 'data') UserProfileDocRequestDTO? data,
      @JsonKey(name: 'permissions') List<String> permissions});

  $UserProfileDocRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserRegisterDocRequestDTOCopyWithImpl<$Res,
        $Val extends UserRegisterDocRequestDTO>
    implements $UserRegisterDocRequestDTOCopyWith<$Res> {
  _$UserRegisterDocRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileDocRequestDTO?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDocRequestDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserProfileDocRequestDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRegisterDocRequestDTOImplCopyWith<$Res>
    implements $UserRegisterDocRequestDTOCopyWith<$Res> {
  factory _$$UserRegisterDocRequestDTOImplCopyWith(
          _$UserRegisterDocRequestDTOImpl value,
          $Res Function(_$UserRegisterDocRequestDTOImpl) then) =
      __$$UserRegisterDocRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'documentId') String? documentId,
      @JsonKey(name: 'data') UserProfileDocRequestDTO? data,
      @JsonKey(name: 'permissions') List<String> permissions});

  @override
  $UserProfileDocRequestDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserRegisterDocRequestDTOImplCopyWithImpl<$Res>
    extends _$UserRegisterDocRequestDTOCopyWithImpl<$Res,
        _$UserRegisterDocRequestDTOImpl>
    implements _$$UserRegisterDocRequestDTOImplCopyWith<$Res> {
  __$$UserRegisterDocRequestDTOImplCopyWithImpl(
      _$UserRegisterDocRequestDTOImpl _value,
      $Res Function(_$UserRegisterDocRequestDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = null,
  }) {
    return _then(_$UserRegisterDocRequestDTOImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileDocRequestDTO?,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterDocRequestDTOImpl implements _UserRegisterDocRequestDTO {
  _$UserRegisterDocRequestDTOImpl(
      {@JsonKey(name: 'documentId') this.documentId,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'permissions') final List<String> permissions = const []})
      : _permissions = permissions;

  factory _$UserRegisterDocRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegisterDocRequestDTOImplFromJson(json);

  @override
  @JsonKey(name: 'documentId')
  final String? documentId;
  @override
  @JsonKey(name: 'data')
  final UserProfileDocRequestDTO? data;
  final List<String> _permissions;
  @override
  @JsonKey(name: 'permissions')
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'UserRegisterDocRequestDTO(documentId: $documentId, data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterDocRequestDTOImpl &&
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
  _$$UserRegisterDocRequestDTOImplCopyWith<_$UserRegisterDocRequestDTOImpl>
      get copyWith => __$$UserRegisterDocRequestDTOImplCopyWithImpl<
          _$UserRegisterDocRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterDocRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _UserRegisterDocRequestDTO implements UserRegisterDocRequestDTO {
  factory _UserRegisterDocRequestDTO(
          {@JsonKey(name: 'documentId') final String? documentId,
          @JsonKey(name: 'data') final UserProfileDocRequestDTO? data,
          @JsonKey(name: 'permissions') final List<String> permissions}) =
      _$UserRegisterDocRequestDTOImpl;

  factory _UserRegisterDocRequestDTO.fromJson(Map<String, dynamic> json) =
      _$UserRegisterDocRequestDTOImpl.fromJson;

  @override
  @JsonKey(name: 'documentId')
  String? get documentId;
  @override
  @JsonKey(name: 'data')
  UserProfileDocRequestDTO? get data;
  @override
  @JsonKey(name: 'permissions')
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$UserRegisterDocRequestDTOImplCopyWith<_$UserRegisterDocRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
