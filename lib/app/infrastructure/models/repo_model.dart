import 'dart:convert';

import '../../domain/entities/repo_entity.dart';

class RepoModel extends RepoEntity {
  RepoModel({
    required String name,
    required String description,
    required int stars,
    required String language,
    required DateTime? updatedAt,
  }) : super(
          name: name,
          description: description,
          stars: stars,
          language: language,
          updatedAt: updatedAt,
        );

  factory RepoModel.fromMap(Map<String, dynamic> map) {
    return RepoModel(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      stars: map['stargazers_count'] ?? 0,
      language: map['language'] ?? '',
      updatedAt: DateTime.tryParse(map['updated_at'] ?? ''),
    );
  }

  factory RepoModel.fromJson(String source) =>
      RepoModel.fromMap(json.decode(source));
}
