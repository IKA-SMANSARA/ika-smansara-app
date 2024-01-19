import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DetailMyDonationRepository)
class DetailMyDonationRepositoryImpl implements DetailMyDonationRepository {
  DetailMyDonationRepositoryImpl(this._apiServices);

  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, DetailMyDonationDocumentResponse>>
      getMyDonationDetail(
    String? documentId,
  ) async {
    final responseDetailMyDonation =
        await _apiServices.getUserTransactionHistoryDetail(documentId ?? '');

    if (responseDetailMyDonation.isSuccessful) {
      return Right(
        TransactionDocumentResponseDTO.fromJson(
          responseDetailMyDonation.body as Map<String, dynamic>,
        ).toDetailMyDonationDocumentResponse(),
      );
    } else {
      return Left(
        ErrorResponseDTO.fromJson(
          responseDetailMyDonation.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
