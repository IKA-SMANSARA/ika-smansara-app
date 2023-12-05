import 'package:ika_smansara/auth/auth.dart';

extension EmailSessionRequestExtension on EmailSessionRequest {
  EmailSessionRequestDTO toEmailSessionRequestDTO() => EmailSessionRequestDTO(
        email: email,
        password: password,
      );
}

extension EmailRegisterRequestExtension on EmailRegisterRequest {
  EmailRegisterRequestDTO toEmailRegisterRequestDTO() =>
      EmailRegisterRequestDTO(
        userId: userId,
        email: email,
        password: password,
        name: name,
      );
}
