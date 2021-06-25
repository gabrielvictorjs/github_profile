import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/failures/github_failure.dart';
import '../../domain/entities/repo_entity.dart';
import '../../domain/repositories/repo_repository.dart';
import '../core/http/github_http_client.dart';
import '../models/repo_model.dart';

final repoRepositoryProvider = Provider(
  (ref) => RepoRepositoryImpl(ref.read(githubHttpClientProvider)),
);

class RepoRepositoryImpl implements RepoRepository {
  final GithubHttpClient _client;

  RepoRepositoryImpl(this._client);

  @override
  Result<List<RepoEntity>> fetchAllByUser(String nick) async {
    try {
      final response = await _client.get(Uri.parse('/users/$nick/repos'));

      if (response.statusCode != 200) {
        return response.statusCode == 404
            ? left(GithubFailure.notFound())
            : left(GithubFailure.undefined());
      }

      final List body = json.decode(response.body);
      final repos = body.map((e) => RepoModel.fromMap(e)).toList();
      return right(repos);
    } catch (e) {
      debugPrint(e.toString());
      return left(GithubFailure.undefined());
    }
  }
}
