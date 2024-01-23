import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/domain/model/error_response.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

abstract interface class ListMyDonationRepository {
  Future<Either<ErrorResponse, TransactionsCollectionsResponse>>
      getMyDonations({
    String? userId,
  });
}
