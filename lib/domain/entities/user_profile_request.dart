import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_request.freezed.dart';
part 'user_profile_request.g.dart';

@freezed
class UserProfileRequest with _$UserProfileRequest {
  factory UserProfileRequest({
    String? name,
    String? email,
    String? address,
    String? phone,
    @Default(false) bool isAlumni,
    @Default(false) bool isAdmin,
    @Default(false) bool isDeleted,
    @Default('0') String graduateYear,
    String? authKey,
    String? photoProfileUrl,
  }) = _UserProfileRequest;

  factory UserProfileRequest.fromJson(Map<String, dynamic> json) =>
      UserProfileRequest(
        address: json['address'],
        authKey: json['authKey'],
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
