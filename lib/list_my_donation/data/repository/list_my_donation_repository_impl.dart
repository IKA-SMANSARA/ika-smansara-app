import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ListMyDonationRepository)
class ListMyDonationRepositoryImpl implements ListMyDonationRepository {
  ListMyDonationRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, TransactionsCollectionsResponse>>
      getMyDonations({
    String? userId,
  }) async {
    final responseGetListMyDonation =
        await _apiServices.getUserTransactionHistory(
      'search("userId", ["$userId"])&queries[]=orderAsc("\$createdAt")',
    );

    if (responseGetListMyDonation.isSuccessful) {
      return Right(
        TransactionsCollectionsResponseDTO.fromJson(
          responseGetListMyDonation.body as Map<String, dynamic>,
        ).toTransactionsCollectionsResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseGetListMyDonation.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
