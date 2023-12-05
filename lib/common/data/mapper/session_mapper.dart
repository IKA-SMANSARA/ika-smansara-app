import 'package:ika_smansara/common/common.dart';

extension SessionResponseDTOExtension on SessionResponseDTO {
  SessionResponse toSessionResponse() => SessionResponse(
        id: id,
        createdAt: createdAt,
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
