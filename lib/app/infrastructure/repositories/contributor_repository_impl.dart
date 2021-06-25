import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/core/failures/github_failure.dart';
import '../../domain/entities/contributor_entity.dart';
import '../../domain/repositories/contributor_repository.dart';
import '../core/http/github_http_client.dart';
import '../models/contributor_model.dart';

final contributorRepositoryProvider = Provider(
  (ref) => ContributorRepositoryImpl(ref.read(githubHttpClientProvider)),
);

class ContributorRepositoryImpl implements ContributorRepository {
  final GithubHttpClient _client;

  ContributorRepositoryImpl(this._client);

  @override
  Response<List<ContributorEntity>> fetchAllByOwnerAndRepo({
    required String ownerNick,
    required String repo,
  }) async {
    try {
      final response = await _client.get(
        Uri.parse('/repos/$ownerNick/$repo/contributors'),
      );

      if (response.statusCode != 200) {
        return response.statusCode == 404
            ? left(GithubFailure.notFound())
            : left(GithubFailure.undefined());
      }

      final List body = json.decode(response.body);
      final contributors =
          body.map((e) => ContributorModel.fromMap(e)).toList();

      return right(contributors);
    } catch (e) {
      debugPrint(e.toString());
      return left(GithubFailure.undefined());
    }
  }
}
