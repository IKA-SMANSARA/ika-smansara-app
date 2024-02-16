import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_document.freezed.dart';
part 'category_document.g.dart';

@freezed
class CategoryDocument with _$CategoryDocument {
  factory CategoryDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic>? permissions,
    String? nameCategory,
    String? categoryIcon,
  }) = _CategoryDocument;

  factory CategoryDocument.fromJson(Map<String, dynamic> json) =>
      CategoryDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
        categoryIcon: json['categoryIcon'],
        nameCategory: json['nameCategory'],
      );
}
