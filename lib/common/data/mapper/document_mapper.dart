import 'package:ika_smansara/common/common.dart';

extension DocumentResponseDTOExtension on DocumentResponseDTO {
  DocumentResponse toDocumentResponse() => DocumentResponse(
        collectionId: collectionId,
        createdAt: createdAt,
        databaseId: databaseId,
        id: id,
        permissions: permissions?.toList(),
        updatedAt: updatedAt,
      );
}
