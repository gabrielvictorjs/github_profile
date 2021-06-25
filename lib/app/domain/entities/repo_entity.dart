import 'package:equatable/equatable.dart';

class RepoEntity extends Equatable {
  final String name;
  final String description;
  final int stars;
  final String language;
  final DateTime? updatedAt;

  RepoEntity({
    required this.name,
    required this.description,
    required this.stars,
    required this.language,
    required this.updatedAt,
  });

  @override
  List<Object?> get props {
    return [
      name,
      description,
      stars,
      language,
      updatedAt,
    ];
  }

  @override
  bool get stringify => true;
}
