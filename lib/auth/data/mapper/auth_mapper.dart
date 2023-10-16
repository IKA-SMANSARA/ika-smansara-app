import 'package:ika_smansara/auth/auth.dart';

extension EmailSessionRequestExtension on EmailSessionRequest {
  EmailSessionRequestDTO toEmailSessionRequestDTO() => EmailSessionRequestDTO(
        email: email,
        password: password,
      );
}

extension EmailSessionSuccessResponseDTOExtension
    on EmailSessionSuccessResponseDTO {
  EmailSessionSuccessResponse toEmailSessionSuccessResponse() =>
      EmailSessionSuccessResponse(
        id: id,
        createAt: createAt,
        userId: userId,
        expire: expire,
        provider: provider,
        providerUid: providerUid,
        providerAccessToken: providerAccessToken,
        providerTokenExpiry: providerTokenExpiry,
        providerRefreshToken: providerRefreshToken,
        ip: ip,
        osCode: osCode,
        onName: onName,
        osVersion: osVersion,
        clientType: clientType,
        clientCode: clientCode,
        clientName: clientName,
        clientVersion: clientVersion,
        clientEngine: clientEngine,
        clientEngineVersion: clientEngineVersion,
        deviceName: deviceName,
        deviceBrand: deviceBrand,
        deviceModel: deviceModel,
        countryCode: countryCode,
        countryName: countryName,
        current: current,
      );
}

extension EmailSessionFailureResponseDTOExtension
    on EmailSessionFailureResponseDTO {
  EmailSessionFailureResponse toEmailSessionFailureResponse() =>
      EmailSessionFailureResponse(
        message: message,
        code: code,
        type: type,
        version: version,
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
