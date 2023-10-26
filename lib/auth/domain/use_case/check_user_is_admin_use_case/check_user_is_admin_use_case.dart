import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:injectable/injectable.dart';

@injectable
class CheckUserIsAdminUseCase {
  CheckUserIsAdminUseCase(
    this._getLabelUserFromLocalUseCase,
  );

  final GetLabelUserFromLocalUseCase _getLabelUserFromLocalUseCase;

  Future<AdminStatus> call() async {
    return _getLabelUserFromLocalUseCase().then(
      (value) async {
        final userLabelFromLocal = value.userLabel ?? Constants.blankString;

        if (userLabelFromLocal != Constants.blankString) {
          return AdminStatus(adminStatus: true);
        } else {
          return AdminStatus();
        }
      },
    );
  }
}
