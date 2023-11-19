import 'package:ika_smansara/register/register.dart';

extension UserProfileDocRequestExtension on UserProfileDocRequest {
  UserProfileDocRequestDTO toUserProfileDocRequestDTO() =>
      UserProfileDocRequestDTO(
        address: address,
        createAt: createAt,
        email: email,
        graduateYear: graduateYear,
        isAdmin: isAdmin,
        isAlumni: isAlumni,
        isDeleted: isDeleted,
        name: name,
        phone: phone,
        updateAt: updateAt,
        authKey: authKey,
      );
}

extension UserRegisterDocRequestExtension on UserRegisterDocRequest {
  UserRegisterDocRequestDTO toUserRegisterDocRequestDTO() =>
      UserRegisterDocRequestDTO(
        documentId: documentId,
        data: data?.toUserProfileDocRequestDTO(),
        permissions: permissions.toList(),
      );
}
