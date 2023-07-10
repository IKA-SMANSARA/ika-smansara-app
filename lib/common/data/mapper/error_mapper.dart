import 'package:ika_smansara/common/common.dart';

extension ErrorResponseDTOExtention on ErrorResponseDTO {
  ErrorResponse toErrorResponse() => ErrorResponse(
        message: message,
        code: code,
        type: type,
        version: version,
      );
}
