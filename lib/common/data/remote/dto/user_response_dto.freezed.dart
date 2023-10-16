// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponseDTO _$UserResponseDTOFromJson(Map<String, dynamic> json) {
  return _UserResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$UserResponseDTO {
  @JsonKey(name: '\$id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: '\$createdAt')
  String? get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: '\$updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'hash')
  String? get hash => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration')
  String? get registration => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'passwordUpdate')
  String? get passwordUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseDTOCopyWith<UserResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseDTOCopyWith<$Res> {
  factory $UserResponseDTOCopyWith(
          UserResponseDTO value, $Res Function(UserResponseDTO) then) =
      _$UserResponseDTOCopyWithImpl<$Res, UserResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$createdAt') String? createAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'hash') String? hash,
      @JsonKey(name: 'registration') String? registration,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'passwordUpdate') String? passwordUpdate,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class _$UserResponseDTOCopyWithImpl<$Res, $Val extends UserResponseDTO>
    implements $UserResponseDTOCopyWith<$Res> {
  _$UserResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? hash = freezed,
    Object? registration = freezed,
    Object? status = freezed,
    Object? label = freezed,
    Object? passwordUpdate = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      registration: freezed == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordUpdate: freezed == passwordUpdate
          ? _value.passwordUpdate
          : passwordUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserResponseDTOCopyWith<$Res>
    implements $UserResponseDTOCopyWith<$Res> {
  factory _$$_UserResponseDTOCopyWith(
          _$_UserResponseDTO value, $Res Function(_$_UserResponseDTO) then) =
      __$$_UserResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$id') String? id,
      @JsonKey(name: '\$createdAt') String? createAt,
      @JsonKey(name: '\$updatedAt') String? updatedAt,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'hash') String? hash,
      @JsonKey(name: 'registration') String? registration,
      @JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'passwordUpdate') String? passwordUpdate,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class __$$_UserResponseDTOCopyWithImpl<$Res>
    extends _$UserResponseDTOCopyWithImpl<$Res, _$_UserResponseDTO>
    implements _$$_UserResponseDTOCopyWith<$Res> {
  __$$_UserResponseDTOCopyWithImpl(
      _$_UserResponseDTO _value, $Res Function(_$_UserResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createAt = freezed,
    Object? updatedAt = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? hash = freezed,
    Object? registration = freezed,
    Object? status = freezed,
    Object? label = freezed,
    Object? passwordUpdate = freezed,
    Object? email = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_UserResponseDTO(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createAt: freezed == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      registration: freezed == registration
          ? _value.registration
          : registration // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordUpdate: freezed == passwordUpdate
          ? _value.passwordUpdate
          : passwordUpdate // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseDTO implements _UserResponseDTO {
  const _$_UserResponseDTO(
      {@JsonKey(name: '\$id') this.id,
      @JsonKey(name: '\$createdAt') this.createAt,
      @JsonKey(name: '\$updatedAt') this.updatedAt,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'password') this.password,
      @JsonKey(name: 'hash') this.hash,
      @JsonKey(name: 'registration') this.registration,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'passwordUpdate') this.passwordUpdate,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'phone') this.phone});

  factory _$_UserResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseDTOFromJson(json);

  @override
  @JsonKey(name: '\$id')
  final String? id;
  @override
  @JsonKey(name: '\$createdAt')
  final String? createAt;
  @override
  @JsonKey(name: '\$updatedAt')
  final String? updatedAt;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'hash')
  final String? hash;
  @override
  @JsonKey(name: 'registration')
  final String? registration;
  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'label')
  final String? label;
  @override
  @JsonKey(name: 'passwordUpdate')
  final String? passwordUpdate;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'phone')
  final String? phone;

  @override
  String toString() {
    return 'UserResponseDTO(id: $id, createAt: $createAt, updatedAt: $updatedAt, name: $name, password: $password, hash: $hash, registration: $registration, status: $status, label: $label, passwordUpdate: $passwordUpdate, email: $email, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponseDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.registration, registration) ||
                other.registration == registration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.passwordUpdate, passwordUpdate) ||
                other.passwordUpdate == passwordUpdate) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createAt,
      updatedAt,
      name,
      password,
      hash,
      registration,
      status,
      label,
      passwordUpdate,
      email,
      phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserResponseDTOCopyWith<_$_UserResponseDTO> get copyWith =>
      __$$_UserResponseDTOCopyWithImpl<_$_UserResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseDTOToJson(
      this,
    );
  }
}

abstract class _UserResponseDTO implements UserResponseDTO {
  const factory _UserResponseDTO(
      {@JsonKey(name: '\$id') final String? id,
      @JsonKey(name: '\$createdAt') final String? createAt,
      @JsonKey(name: '\$updatedAt') final String? updatedAt,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'password') final String? password,
      @JsonKey(name: 'hash') final String? hash,
      @JsonKey(name: 'registration') final String? registration,
      @JsonKey(name: 'status') final bool? status,
      @JsonKey(name: 'label') final String? label,
      @JsonKey(name: 'passwordUpdate') final String? passwordUpdate,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'phone') final String? phone}) = _$_UserResponseDTO;

  factory _UserResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_UserResponseDTO.fromJson;

  @override
  @JsonKey(name: '\$id')
  String? get id;
  @override
  @JsonKey(name: '\$createdAt')
  String? get createAt;
  @override
  @JsonKey(name: '\$updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'hash')
  String? get hash;
  @override
  @JsonKey(name: 'registration')
  String? get registration;
  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'label')
  String? get label;
  @override
  @JsonKey(name: 'passwordUpdate')
  String? get passwordUpdate;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseDTOCopyWith<_$_UserResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
