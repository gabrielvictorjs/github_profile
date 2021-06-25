import 'dart:convert';

import '../../domain/entities/contributor_entity.dart';

class ContributorModel extends ContributorEntity {
  ContributorModel({
    required String nick,
    required String avatarUrl,
    required int contributions,
  }) : super(
          nick: nick,
          avatarUrl: avatarUrl,
          contributions: contributions,
        );

  factory ContributorModel.fromMap(Map<String, dynamic> map) {
    return ContributorModel(
      nick: map['login'] ?? '',
      avatarUrl: map['avatar_url'] ?? '',
      contributions: map['contributions'] ?? 0,
    );
  }

  factory ContributorModel.fromJson(String source) =>
      ContributorModel.fromMap(json.decode(source));
}
