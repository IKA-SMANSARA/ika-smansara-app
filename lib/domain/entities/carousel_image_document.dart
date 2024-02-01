import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_image_document.freezed.dart';
part 'carousel_image_document.g.dart';

@freezed
class CarouselImageDocument with _$CarouselImageDocument {
  factory CarouselImageDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic> permissions,
    String? imageUrl,
  }) = _CarouselImageDocument;

  factory CarouselImageDocument.fromJson(Map<String, dynamic> json) =>
      CarouselImageDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
        imageUrl: json['imageUrl'],
      );
}
