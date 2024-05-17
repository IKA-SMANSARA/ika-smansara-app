// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'threads_request.freezed.dart';
part 'threads_request.g.dart';

@freezed
class ThreadsRequest with _$ThreadsRequest {

  factory ThreadsRequest({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'threadContent') String? threadContent,
    @JsonKey(name: 'isQuestion') @Default(false) bool? isQuestion,
    @JsonKey(name: 'isAnswer') @Default(false) bool? isAnswer,
    @JsonKey(name: 'isOpen') @Default(false) bool? isOpen,
    @JsonKey(name: 'isDeleted') @Default(false) bool? isDeleted,
    @JsonKey(name: 'isEdited') @Default(false) bool? isEdited,
    @JsonKey(name: 'replyingThreadId') String? replyingThreadId,
  }) = _ThreadsRequest;

  factory ThreadsRequest.fromJson(Map<String, dynamic> json) => _$ThreadsRequestFromJson(json);
}