import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailCampaignUseCase {
  GetDetailCampaignUseCase(this._detailCampaignRepository);
  final DetailCampaignRepository _detailCampaignRepository;

  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>> call(
    String? documentId,
  ) =>
      _detailCampaignRepository.getCampaignDetail(
        documentId,
      );
}
