// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormField _$FormFieldFromJson(Map<String, dynamic> json) {
  return _FormField.fromJson(json);
}

/// @nodoc
mixin _$FormField {
  String? get EmailField => throw _privateConstructorUsedError;

  String? get PasswordField => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormFieldCopyWith<FormField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldCopyWith<$Res> {
  factory $FormFieldCopyWith(FormField value, $Res Function(FormField) then) =
      _$FormFieldCopyWithImpl<$Res, FormField>;

  @useResult
  $Res call({String? EmailField, String? PasswordField});
}

/// @nodoc
class _$FormFieldCopyWithImpl<$Res, $Val extends FormField>
    implements $FormFieldCopyWith<$Res> {
  _$FormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? EmailField = freezed,
    Object? PasswordField = freezed,
  }) {
    return _then(_value.copyWith(
      EmailField: freezed == EmailField
          ? _value.EmailField
          : EmailField // ignore: cast_nullable_to_non_nullable
              as String?,
      PasswordField: freezed == PasswordField
          ? _value.PasswordField
          : PasswordField // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormFieldCopyWith<$Res> implements $FormFieldCopyWith<$Res> {
  factory _$$_FormFieldCopyWith(
          _$_FormField value, $Res Function(_$_FormField) then) =
      __$$_FormFieldCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String? EmailField, String? PasswordField});
}

/// @nodoc
class __$$_FormFieldCopyWithImpl<$Res>
    extends _$FormFieldCopyWithImpl<$Res, _$_FormField>
    implements _$$_FormFieldCopyWith<$Res> {
  __$$_FormFieldCopyWithImpl(
      _$_FormField _value, $Res Function(_$_FormField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? EmailField = freezed,
    Object? PasswordField = freezed,
  }) {
    return _then(_$_FormField(
      EmailField: freezed == EmailField
          ? _value.EmailField
          : EmailField // ignore: cast_nullable_to_non_nullable
              as String?,
      PasswordField: freezed == PasswordField
          ? _value.PasswordField
          : PasswordField // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormField implements _FormField {
  const _$_FormField({this.EmailField = '', this.PasswordField = ''});

  factory _$_FormField.fromJson(Map<String, dynamic> json) =>
      _$$_FormFieldFromJson(json);

  @override
  @JsonKey()
  final String? EmailField;
  @override
  @JsonKey()
  final String? PasswordField;

  @override
  String toString() {
    return 'FormField(EmailField: $EmailField, PasswordField: $PasswordField)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormField &&
            (identical(other.EmailField, EmailField) ||
                other.EmailField == EmailField) &&
            (identical(other.PasswordField, PasswordField) ||
                other.PasswordField == PasswordField));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, EmailField, PasswordField);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormFieldCopyWith<_$_FormField> get copyWith =>
      __$$_FormFieldCopyWithImpl<_$_FormField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormFieldToJson(
      this,
    );
  }
}

abstract class _FormField implements FormField {
  const factory _FormField(
      {final String? EmailField, final String? PasswordField}) = _$_FormField;

  factory _FormField.fromJson(Map<String, dynamic> json) =
      _$_FormField.fromJson;

  @override
  String? get EmailField;

  @override
  String? get PasswordField;

  @override
  @JsonKey(ignore: true)
  _$$_FormFieldCopyWith<_$_FormField> get copyWith =>
      throw _privateConstructorUsedError;
}
