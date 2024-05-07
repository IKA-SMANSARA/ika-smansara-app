// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'threads_document.freezed.dart';
part 'threads_document.g.dart';

@freezed
class ThreadsDocument with _$ThreadsDocument {
  factory ThreadsDocument({
    @JsonKey(name: '\$id') String? id,
    @JsonKey(name: '\$collectionId') String? collectionId,
    @JsonKey(name: '\$databaseId') String? databaseId,
    @JsonKey(name: '\$createdAt') String? createdAt,
    @JsonKey(name: '\$updatedAt') String? updatedAt,
    @JsonKey(name: '\$permissions') @Default([]) List<dynamic>? permissions,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'threadContent') String? threadContent,
    @JsonKey(name: 'isQuestion') @Default(false) bool? isQuestion,
    @JsonKey(name: 'isAnswer') @Default(false) bool? isAnswer,
    @JsonKey(name: 'isOpen') @Default(false) bool? isOpen,
    @JsonKey(name: 'isDeleted') @Default(false) bool? isDeleted,
    @JsonKey(name: 'isEdited') @Default(false) bool? isEdited,
    @JsonKey(name: 'replyingThreadId') String? replyingThreadId,
  }) = _ThreadsDocument;

  factory ThreadsDocument.fromJson(Map<String, dynamic> json) =>
      _$ThreadsDocumentFromJson(json);
}
