import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateCounterDataUseCase {
  UpdateCounterDataUseCase(this._counterRepository);

  final CounterRepository _counterRepository;

  Future<Resource<CounterDocumentResponse>> call(
    String documentId,
    CounterDocumentRequest counterDocumentRequest,
  ) async =>
      _counterRepository.updateCounterData(documentId, counterDocumentRequest);
}
