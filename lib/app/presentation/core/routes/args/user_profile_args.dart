import 'package:dartz/dartz.dart';

import '../../../../domain/entities/user_entity.dart';

class UserProfileArgs {
  final Either<String, UserEntity> nickOrUser;

  UserProfileArgs.nick(String nick) : nickOrUser = left(nick);
  UserProfileArgs.user(UserEntity user) : nickOrUser = right(user);
}
