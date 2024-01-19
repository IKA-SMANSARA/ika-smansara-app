import 'package:freezed_annotation/freezed_annotation.dart';

part 'backer_document.freezed.dart';
part 'backer_document.g.dart';

@freezed
class BackerDocument with _$BackerDocument {
  factory BackerDocument({
    String? userName,
    int? amount,
    String? createdAt,
  }) = _BackerDocument;

  factory BackerDocument.fromJson(Map<String, dynamic> json) =>
      _$BackerDocumentFromJson(json);
}
