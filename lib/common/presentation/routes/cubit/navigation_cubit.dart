import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';

part 'navigation_cubit.freezed.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState());

  void getNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(
          const NavigationState(),
        );
      case 1:
        emit(
          const NavigationState(
            bottomNavItems: Routes.myDonation,
            index: 1,
          ),
        );
      case 2:
        emit(
          const NavigationState(
            bottomNavItems: Routes.account,
            index: 2,
          ),
        );
    }
  }
}
