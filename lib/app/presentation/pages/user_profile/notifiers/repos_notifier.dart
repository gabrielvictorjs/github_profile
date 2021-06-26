import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/core/failures/github_failure.dart';
import '../../../../domain/entities/repo_entity.dart';
import '../../../../domain/repositories/repo_repository.dart';
import '../../../../infrastructure/repositories/repo_repository_impl.dart';
import '../../../core/common_state/common_state.dart';

typedef ReposState = CommonState<GithubFailure, List<RepoEntity>>;

typedef ReposNotifierProvider
    = AutoDisposeStateNotifierProvider<ReposNotifier, ReposState>;

final reposNotifierProviderFamily =
    StateNotifierProvider.family.autoDispose<ReposNotifier, ReposState, String>(
  (ref, id) => ReposNotifier(ref.read(repoRepositoryProvider)),
);

class ReposNotifier extends StateNotifier<ReposState> {
  final RepoRepository _repository;

  ReposNotifier(this._repository) : super(ReposState.initial());

  Future<void> fetchAll(String userNick) async {
    state = ReposState.loadInProgress();
    final result = await _repository.fetchAllByUser(userNick);

    state = result.fold(
      (failure) => ReposState.loadFailure(failure),
      (repos) => ReposState.loadSuccess(repos),
    );
  }
}
