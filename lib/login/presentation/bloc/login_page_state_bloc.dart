import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/di/injection.dart';

part 'login_page_state_event.dart';
part 'login_page_state_state.dart';
part 'login_page_state_bloc.freezed.dart';

class LoginPageStateBloc
    extends Bloc<LoginPageStateEvent, LoginPageStateState> {
  LoginPageStateBloc() : super(const LoginPageStateState.initial()) {
    on<LoginPageStateEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading
            emit(const LoginPageStateState.loading());
          },
          authentication: () async {
            await _checkUserSessionStatusUseCase().then(
              (value) {
                final authStatus = value.authStatus ?? false;

                if (authStatus) {
                  emit(const LoginPageStateState.authenticated());
                } else {
                  emit(const LoginPageStateState.unauthenticated());
                }
              },
            );
          },
        );
      },
    );
  }

  final _checkUserSessionStatusUseCase = getIt<CheckUserSessionStatusUseCase>();
}
