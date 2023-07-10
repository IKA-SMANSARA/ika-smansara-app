import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCounterDataUseCase {
  GetCounterDataUseCase(this._counterRepository);

  final CounterRepository _counterRepository;

  Future<Resource<CounterDocumentResponse>> call(String documentId) async =>
      _counterRepository.getCounterData(documentId);
}
