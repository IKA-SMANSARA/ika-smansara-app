import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_bank_document.freezed.dart';
part 'list_bank_document.g.dart';

@freezed
class ListBankDocument with _$ListBankDocument {
  factory ListBankDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic>? permissions,
    String? bankCode,
    String? bankName,
  }) = _ListBankDocument;

  factory ListBankDocument.fromJson(Map<String, dynamic> json) =>
      ListBankDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
        bankCode: json['bankCode'],
        bankName: json['bankName'],
      );
}
