import 'dart:convert';

import '../../domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String nick,
    required String name,
    required String avatarUrl,
    required String bio,
  }) : super(
          nick: nick,
          name: name,
          avatarUrl: avatarUrl,
          bio: bio,
        );

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      nick: map['login'] ?? '',
      name: map['name'] ?? '',
      avatarUrl: map['avatar_url'] ?? '',
      bio: map['bio'] ?? '',
    );
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
