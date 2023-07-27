part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    @Default(Routes.home) String bottomNavItems,
    @Default(0) int index,
  }) = _NavigationState;
}
