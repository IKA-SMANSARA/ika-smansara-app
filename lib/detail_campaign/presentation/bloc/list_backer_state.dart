part of 'list_backer_bloc.dart';

@freezed
class ListBackerState with _$ListBackerState {
  const factory ListBackerState.initialListBacker() = InitialListBacker;
  const factory ListBackerState.loadingListBacker() = LoadingListBacker;
  const factory ListBackerState.successListBacker(
    List<BackerDocument> listBacker,
  ) = SuccessListBacker;
  const factory ListBackerState.errorErrorListBacker(String? errorMessage) =
      ErrorListBacker;
}
