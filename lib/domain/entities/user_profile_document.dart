import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_document.freezed.dart';
part 'user_profile_document.g.dart';

@freezed
class UserProfileDocument with _$UserProfileDocument {
  factory UserProfileDocument({
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic> permissions,
    String? name,
    String? email,
    String? address,
    String? phone,
    @Default(false) bool isAlumni,
    @Default(false) bool isAdmin,
    @Default(false) bool isDeleted,
    @Default('') String graduateYear,
    String? authKey,
    String? photoProfileUrl,
  }) = _UserProfileDocument;

  factory UserProfileDocument.fromJson(Map<String, dynamic> json) =>
      UserProfileDocument(
        id: json['\$id'],
        collectionId: json['\$collectionId'],
        databaseId: json['\$databaseId'],
        createdAt: json['\$createdAt'],
        updatedAt: json['\$updatedAt'],
        permissions: json['\$permissions'],
        address: json['address'],
        authKey: json['auth_key'],
        email: json['email'],
        graduateYear: json['graduateYear'],
        isAdmin: json['isAdmin'],
        isAlumni: json['isAlumni'],
        isDeleted: json['isDeleted'],
        name: json['name'],
        phone: json['phone'],
        photoProfileUrl: json['photoProfileUrl'],
      );
}
