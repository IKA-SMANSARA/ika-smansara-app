// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_doc_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterDocRequest _$UserRegisterDocRequestFromJson(
    Map<String, dynamic> json) {
  return _UserRegisterDocRequest.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterDocRequest {
  String? get documentId => throw _privateConstructorUsedError;
  UserProfileDocRequest? get data => throw _privateConstructorUsedError;
  List<String> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterDocRequestCopyWith<UserRegisterDocRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterDocRequestCopyWith<$Res> {
  factory $UserRegisterDocRequestCopyWith(UserRegisterDocRequest value,
          $Res Function(UserRegisterDocRequest) then) =
      _$UserRegisterDocRequestCopyWithImpl<$Res, UserRegisterDocRequest>;
  @useResult
  $Res call(
      {String? documentId,
      UserProfileDocRequest? data,
      List<String> permissions});

  $UserProfileDocRequestCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserRegisterDocRequestCopyWithImpl<$Res,
        $Val extends UserRegisterDocRequest>
    implements $UserRegisterDocRequestCopyWith<$Res> {
  _$UserRegisterDocRequestCopyWithImpl(this._value, this._then);

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
              as UserProfileDocRequest?,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDocRequestCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserProfileDocRequestCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserRegisterDocRequestImplCopyWith<$Res>
    implements $UserRegisterDocRequestCopyWith<$Res> {
  factory _$$UserRegisterDocRequestImplCopyWith(
          _$UserRegisterDocRequestImpl value,
          $Res Function(_$UserRegisterDocRequestImpl) then) =
      __$$UserRegisterDocRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? documentId,
      UserProfileDocRequest? data,
      List<String> permissions});

  @override
  $UserProfileDocRequestCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserRegisterDocRequestImplCopyWithImpl<$Res>
    extends _$UserRegisterDocRequestCopyWithImpl<$Res,
        _$UserRegisterDocRequestImpl>
    implements _$$UserRegisterDocRequestImplCopyWith<$Res> {
  __$$UserRegisterDocRequestImplCopyWithImpl(
      _$UserRegisterDocRequestImpl _value,
      $Res Function(_$UserRegisterDocRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = freezed,
    Object? data = freezed,
    Object? permissions = null,
  }) {
    return _then(_$UserRegisterDocRequestImpl(
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserProfileDocRequest?,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterDocRequestImpl implements _UserRegisterDocRequest {
  _$UserRegisterDocRequestImpl(
      {this.documentId, this.data, final List<String> permissions = const []})
      : _permissions = permissions;

  factory _$UserRegisterDocRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegisterDocRequestImplFromJson(json);

  @override
  final String? documentId;
  @override
  final UserProfileDocRequest? data;
  final List<String> _permissions;
  @override
  @JsonKey()
  List<String> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'UserRegisterDocRequest(documentId: $documentId, data: $data, permissions: $permissions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterDocRequestImpl &&
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
  _$$UserRegisterDocRequestImplCopyWith<_$UserRegisterDocRequestImpl>
      get copyWith => __$$UserRegisterDocRequestImplCopyWithImpl<
          _$UserRegisterDocRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterDocRequestImplToJson(
      this,
    );
  }
}

abstract class _UserRegisterDocRequest implements UserRegisterDocRequest {
  factory _UserRegisterDocRequest(
      {final String? documentId,
      final UserProfileDocRequest? data,
      final List<String> permissions}) = _$UserRegisterDocRequestImpl;

  factory _UserRegisterDocRequest.fromJson(Map<String, dynamic> json) =
      _$UserRegisterDocRequestImpl.fromJson;

  @override
  String? get documentId;
  @override
  UserProfileDocRequest? get data;
  @override
  List<String> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$UserRegisterDocRequestImplCopyWith<_$UserRegisterDocRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
