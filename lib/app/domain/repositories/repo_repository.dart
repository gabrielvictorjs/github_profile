import 'package:dartz/dartz.dart';

import '../core/failures/github_failure.dart';
import '../entities/repo_entity.dart';

typedef Result<T> = Future<Either<GithubFailure, T>>;

abstract class RepoRepository {
  Result<List<RepoEntity>> fetchAllByUser(String nick);
}
