// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_doc_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDocRequestDTOImpl _$$UserProfileDocRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDocRequestDTOImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      isAlumni: json['isAlumni'] as bool? ?? false,
      graduateYear: json['graduateYear'] as String? ?? '',
      createAt: json['createAt'] as String?,
      updateAt: json['updateAt'] as String?,
      isAdmin: json['isAdmin'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      authKey: json['auth_key'] as String?,
    );

Map<String, dynamic> _$$UserProfileDocRequestDTOImplToJson(
        _$UserProfileDocRequestDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'isAlumni': instance.isAlumni,
      'graduateYear': instance.graduateYear,
      'createAt': instance.createAt,
      'updateAt': instance.updateAt,
      'isAdmin': instance.isAdmin,
      'isDeleted': instance.isDeleted,
      'auth_key': instance.authKey,
    };
