import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    required String name,
    required String email,
    required String phone,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['\$id'],
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
      );
}
