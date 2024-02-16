import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@freezed
class Session with _$Session {
  factory Session({
    required String sessionId,
    required String userId,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        sessionId: json['\$id'],
        userId: json['userId'],
      );
}
