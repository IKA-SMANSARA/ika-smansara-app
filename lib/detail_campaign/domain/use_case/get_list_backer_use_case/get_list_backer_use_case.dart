import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/detail_campaign.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetListBackerUseCase {
  GetListBackerUseCase(this._detailCampaignRepository);

  final DetailCampaignRepository _detailCampaignRepository;

  Future<Either<ErrorResponse, ListBacker>> call(String? documentId) async {
    final getTransactionsByCampaignId =
        await _detailCampaignRepository.getTransactionsByCampaignId(documentId);

    final listBacker = <BackerDocument>[];

    return getTransactionsByCampaignId.fold(
      (error) {
        return Left(ErrorResponse(message: error.message));
      },
      (responseGetTransactions) {
        responseGetTransactions.documents?.forEach(
          (element) async {
            final getUserByUserId =
                await _detailCampaignRepository.getUserByUserId(element.userId);

            getUserByUserId.fold(
              (errorUser) => null,
              (responseUser) {
                listBacker.add(
                  BackerDocument(
                    userName: responseUser.name,
                    amount: element.amount,
                    createdAt: element.createdAt,
                  ),
                );
              },
            );
          },
        );

        return Right(ListBacker(listBacker: listBacker));
      },
    );
  }
}
