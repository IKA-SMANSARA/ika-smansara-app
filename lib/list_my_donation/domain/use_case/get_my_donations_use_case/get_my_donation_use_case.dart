import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMyDonationUseCase {
  GetMyDonationUseCase(this._listMyDonationRepository);

  final ListMyDonationRepository _listMyDonationRepository;

  Future<Either<ErrorResponse, TransactionsCollectionsResponse>> call() async {
    final getUserAccountDetailUseCase = getIt<GetUserAccountDetailUseCase>();
    var userId = '';
    await getUserAccountDetailUseCase().then(
      (value) {
        value.fold(
          (error) {
            userId = '';
          },
          (response) {
            userId = response.id ?? '';
          },
        );
      },
    );

    return _listMyDonationRepository.getMyDonations(userId: userId);
  }
}
