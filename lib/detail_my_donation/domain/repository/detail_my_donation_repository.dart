import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';

abstract class DetailMyDonationRepository {
  Future<Either<ErrorResponse, DetailMyDonationDocumentResponse>>
      getMyDonationDetail(String? documentId);
}
