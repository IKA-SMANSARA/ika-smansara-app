import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/common/data/mapper/user_mapper.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';
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
        CampaignDocumentResponseDTO.fromJson(
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

  @override
  Future<Either<ErrorResponse, TransactionsCollectionsResponse>>
      getTransactionsByCampaignId(String? documentId) async {
    final responseGetTransactionsByCampaignId =
        await _apiServices.getUserTransactionHistory(
      'search("campaignId", ["$documentId"])',
    );

    if (responseGetTransactionsByCampaignId.isSuccessful) {
      return Right(
        TransactionsCollectionsResponseDTO.fromJson(
          responseGetTransactionsByCampaignId.body as Map<String, dynamic>,
        ).toTransactionsCollectionsResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseGetTransactionsByCampaignId.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }

  @override
  Future<Either<ErrorResponse, UserResponse>> getUserByUserId(
    String? userId,
  ) async {
    final responseGetUserByUserId = await _apiServices.getUserByUserId(
      userId ?? '',
    );

    if (responseGetUserByUserId.isSuccessful) {
      return Right(
        UserResponseDTO.fromJson(
          responseGetUserByUserId.body as Map<String, dynamic>,
        ).toUserResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseGetUserByUserId.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
