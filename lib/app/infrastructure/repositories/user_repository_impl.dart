import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/failures/github_failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../core/http/github_http_client.dart';
import '../models/user_model.dart';

final userRepositoryProvider = Provider(
  (ref) => UserRepositoryImpl(ref.read(githubHttpClientProvider)),
);

class UserRepositoryImpl implements UserRepository {
  final GithubHttpClient _client;

  UserRepositoryImpl(this._client);

  @override
  Response<UserEntity> fetch(String nick) async {
    try {
      final response = await _client.get(Uri.parse('/users/$nick'));

      if (response.statusCode != 200) {
        return response.statusCode == 404
            ? left(GithubFailure.notFound())
            : left(GithubFailure.undefined());
      }

      return right(UserModel.fromJson(response.body));
    } catch (e) {
      debugPrint(e.toString());
      return left(GithubFailure.undefined());
    }
  }
}
