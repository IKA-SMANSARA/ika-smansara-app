import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

abstract class DetailCampaignRepository {
  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>>
      getCampaignDetail(String? documentId);

  Future<Either<ErrorResponse, TransactionsCollectionsResponse>>
      getTransactionsByCampaignId(String? documentId);

  Future<Either<ErrorResponse, UserResponse>> getUserByUserId(String? userId);
}
