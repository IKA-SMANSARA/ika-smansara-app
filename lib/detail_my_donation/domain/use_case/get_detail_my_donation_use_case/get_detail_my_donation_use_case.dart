import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDetailMyDonationUseCase {
  GetDetailMyDonationUseCase(this._detailMyDonationRepository);

  final DetailMyDonationRepository _detailMyDonationRepository;

  Future<Either<ErrorResponse, DetailMyDonationDocumentResponse>> call(
    String? documentId,
  ) {
    return _detailMyDonationRepository.getMyDonationDetail(documentId);
  }
}
