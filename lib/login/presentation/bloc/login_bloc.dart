import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginEvent>(
      (event, emit) {
        event.when(
          loginEmailChange: (email) async {
            emit(
              state.copyWith(
                email: EmailValidation.dirty(
                  email ?? Constants.blankString,
                ),
                status: FormzSubmissionStatus.initial,
              ),
            );
          },
          loginPasswordChange: (password) {
            emit(
              state.copyWith(
                password:
                    PasswordValidation.dirty(password ?? Constants.blankString),
                status: FormzSubmissionStatus.initial,
              ),
            );
          },
          loginSubmitted: () {
            emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          },
        );
      },
    );
  }
}
