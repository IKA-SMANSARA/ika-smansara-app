import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CounterRepository)
class CounterRepositoryImpl implements CounterRepository {
  CounterRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Resource<CounterDocumentResponse>> getCounterData(
    String documentId,
  ) async {
    Resource<CounterDocumentResponse> result;

    try {
      final responseGetCounter = await _apiServices.getCounter(documentId);

      if (responseGetCounter.isSuccessful) {
        result = Resource.success(
          CounterDocumentResponseDTO.fromJson(
            responseGetCounter.body as Map<String, dynamic>,
          ).toCounterDocumentResponse(),
        );
      } else {
        result = Resource.error(
          ErrorResponseDTO.fromJson(
                responseGetCounter.body as Map<String, dynamic>,
              ).toErrorResponse().message ??
              '',
          null,
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(e.toString(), null);
    }

    return result;
  }

  @override
  Future<Resource<CounterDocumentResponse>> updateCounterData(
    String documentId,
    CounterDocumentRequest counterDocumentRequest,
  ) async {
    Resource<CounterDocumentResponse> result;

    try {
      final responseGetCounter = await _apiServices.updateCounter(
        documentId,
        counterDocumentRequest.toCounterDocumentRequestDTO(),
      );
      if (responseGetCounter.isSuccessful) {
        result = Resource.success(
          CounterDocumentResponseDTO.fromJson(
            responseGetCounter.body as Map<String, dynamic>,
          ).toCounterDocumentResponse(),
        );
      } else {
        result = Resource.error(
          ErrorResponseDTO.fromJson(
                responseGetCounter.body as Map<String, dynamic>,
              ).toErrorResponse().message ??
              '',
          null,
        );
      }
    } catch (e) {
      Constants.logger.e(e.toString());
      result = Resource.error(e.toString(), null);
    }

    return result;
  }
}
