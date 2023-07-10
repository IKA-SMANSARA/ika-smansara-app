import 'package:ika_smansara/counter/counter.dart';

extension CounterDocumentResponseDTOExtension on CounterDocumentResponseDTO {
  CounterDocumentResponse toCounterDocumentResponse() =>
      CounterDocumentResponse(
        id: id,
        collectionId: collectionId,
        databaseId: databaseId,
        createdAt: createdAt,
        updatedAt: updatedAt,
        permissions: permissions,
        counterValue: counterValue,
      );
}

extension CounterDataDocumentRequestExtension on CounterDataDocumentRequest {
  CounterDataDocumentRequestDTO toCounterDataDocumentRequestDTO() =>
      CounterDataDocumentRequestDTO(
        counterValue: counterValue,
      );
}

extension CounterDocumentRequestExtension on CounterDocumentRequest {
  CounterDocumentRequestDTO toCounterDocumentRequestDTO() =>
      CounterDocumentRequestDTO(
        documentId: documentId,
        data: data?.toCounterDataDocumentRequestDTO(),
        permissions: permissions,
      );
}
