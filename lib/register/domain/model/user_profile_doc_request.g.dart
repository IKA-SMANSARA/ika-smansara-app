// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_doc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDocRequest _$$_UserProfileDocRequestFromJson(
        Map<String, dynamic> json) =>
    _$_UserProfileDocRequest(
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
    );

Map<String, dynamic> _$$_UserProfileDocRequestToJson(
        _$_UserProfileDocRequest instance) =>
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
    };
