import 'package:dartz/dartz.dart';

import '../core/failures/github_failure.dart';
import '../entities/contributor_entity.dart';

typedef Response<T> = Future<Either<GithubFailure, T>>;

abstract class ContributorRepository {
  Response<List<ContributorEntity>> fetchAllByOwnerAndRepo({
    required String ownerNick,
    required String repo,
  });
}
