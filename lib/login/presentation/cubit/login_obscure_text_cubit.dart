import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_obscure_text_cubit.freezed.dart';
part 'login_obscure_text_state.dart';

class LoginObscureTextCubit extends Cubit<LoginObscureTextState> {
  LoginObscureTextCubit() : super(const LoginObscureTextState.isVisible(true));

  void toggleVisibility() {
    emit(LoginObscureTextState.isVisible(!state.visible));
  }
}
