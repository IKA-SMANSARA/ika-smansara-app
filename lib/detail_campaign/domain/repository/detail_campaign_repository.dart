import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';

abstract class DetailCampaignRepository {
  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>>
      getCampaignDetail(String? documentId);
}
