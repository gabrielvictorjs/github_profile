import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/core/failures/github_failure.dart';
import '../../../../domain/entities/contributor_entity.dart';
import '../../../../domain/repositories/contributor_repository.dart';
import '../../../../infrastructure/repositories/contributor_repository_impl.dart';
import '../../../core/common_state/common_state.dart';

final contributorsNotifierProviderFamily = StateNotifierProvider.family
    .autoDispose<ContributorsNotifier, ContributorsState, String>(
  (ref, id) => ContributorsNotifier(ref.read(contributorRepositoryProvider)),
);

typedef ContributorsState = CommonState<GithubFailure, List<ContributorEntity>>;

class ContributorsNotifier extends StateNotifier<ContributorsState> {
  final ContributorRepository _repository;

  ContributorsNotifier(this._repository) : super(ContributorsState.initial());

  Future<void> fetchAll({
    required String ownerNick,
    required String repo,
  }) async {
    final result = await _repository.fetchAllByOwnerAndRepo(
      ownerNick: ownerNick,
      repo: repo,
    );

    state = result.fold(
      (failure) => ContributorsState.loadFailure(failure),
      (contributors) => ContributorsState.loadSuccess(contributors),
    );
  }
}
