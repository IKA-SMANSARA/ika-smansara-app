import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';

part 'check_admin_status_state.dart';
part 'check_admin_status_cubit.freezed.dart';

class CheckAdminStatusCubit extends Cubit<CheckAdminStatusState> {
  CheckAdminStatusCubit() : super(const CheckAdminStatusState.isUser());

  final _checkUserIsAdminUseCase = getIt<CheckUserIsAdminUseCase>();

  void checkUserStatus() {
    _checkUserIsAdminUseCase().then(
      (value) {
        final adminStatus = value.adminStatus ?? false;

        if (!adminStatus) {
          emit(const CheckAdminStatusState.isUser());
        } else {
          emit(const CheckAdminStatusState.isAdmin());
        }
      },
    );
  }
}
