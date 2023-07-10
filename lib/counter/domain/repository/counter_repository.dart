import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';

abstract class CounterRepository {
  Future<Resource<CounterDocumentResponse>> getCounterData(String documentId);

  Future<Resource<CounterDocumentResponse>> updateCounterData(
    String documentId,
    CounterDocumentRequest counterDocumentRequest,
  );
}
