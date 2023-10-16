import 'package:ika_smansara/common/common.dart';

extension UserResponseDTOExtension on UserResponseDTO {
  UserResponse toUserResponse() => UserResponse(
        createAt: createAt,
        email: email,
        hash: hash,
        id: id,
        label: label,
        name: name,
        password: password,
        passwordUpdate: passwordUpdate,
        phone: phone,
        registration: registration,
        status: status,
        updatedAt: updatedAt,
      );
}
