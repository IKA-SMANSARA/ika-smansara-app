import 'package:ika_smansara/common/common.dart';

extension UserResponseDTOExtension on UserResponseDTO {
  UserResponse toUserResponse() => UserResponse(
        accessedAt: accessedAt,
        createdAt: createdAt,
        email: email,
        id: id,
        labels: labels,
        name: name,
        phone: phone,
        registration: registration,
        status: status,
        updatedAt: updatedAt,
      );
}
