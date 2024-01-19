part of 'list_backer_bloc.dart';

@freezed
class ListBackerEvent with _$ListBackerEvent {
  const factory ListBackerEvent.started() = _Started;
  const factory ListBackerEvent.fetchData(String? documentId) = _FetchData;
}
