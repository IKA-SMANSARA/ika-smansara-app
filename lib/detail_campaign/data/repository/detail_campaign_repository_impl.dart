import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DetailCampaignRepository)
class DetailCampaignRepositoryImpl implements DetailCampaignRepository {
  DetailCampaignRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>>
      getCampaignDetail(String? documentId) async {
    final responseDetailCampaign =
        await _apiServices.getCampaignDetail(documentId ?? '');

    if (responseDetailCampaign.isSuccessful) {
      return Right(
        DetailCampaignDocumentResponseDTO.fromJson(
          responseDetailCampaign.body as Map<String, dynamic>,
        ).toDetailCampaignDocumentResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseDetailCampaign.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
