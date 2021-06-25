import 'package:dartz/dartz.dart';

import '../core/failures/github_failure.dart';
import '../entities/user_entity.dart';

typedef Response<T> = Future<Either<GithubFailure, T>>;

abstract class UserRepository {
  Response<UserEntity> fetch(String nick);
}
