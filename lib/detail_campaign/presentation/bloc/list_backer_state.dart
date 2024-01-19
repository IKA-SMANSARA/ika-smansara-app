part of 'list_backer_bloc.dart';

@freezed
class ListBackerState with _$ListBackerState {
  const factory ListBackerState.initial() = InitialListBacker;
  const factory ListBackerState.loading() = LoadingListBacker;
  const factory ListBackerState.success(
    ListBacker listBacker,
  ) = SuccessListBacker;
  const factory ListBackerState.error(String? errorMessage) = ErrorListBacker;
}
