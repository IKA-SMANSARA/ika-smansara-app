import 'package:bloc/bloc.dart';

class WebViewVisibilitiesCubit extends Cubit<bool> {
  WebViewVisibilitiesCubit() : super(true);

  void isFinished() => emit(false);
}
