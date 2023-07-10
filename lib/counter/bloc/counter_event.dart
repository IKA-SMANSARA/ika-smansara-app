part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.started() = _Started;

  const factory CounterEvent.fetchData({@Default('') String? documentId}) =
      _FetchData;

  const factory CounterEvent.increment(String? documentId) = _Increment;

  const factory CounterEvent.decrement(String? documentId) = _Decrement;
}
