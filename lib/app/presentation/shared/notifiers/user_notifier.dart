import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/core/failures/github_failure.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/repositories/user_repository.dart';
import '../../../infrastructure/repositories/user_repository_impl.dart';
import '../../core/common_state/common_state.dart';

final userNotifierProviderTo =
    StateNotifierProvider.family.autoDispose<UserNotifier, UserState, String>(
  (ref, id) => UserNotifier(ref.read(userRepositoryProvider)),
);

typedef UserState = CommonState<GithubFailure, UserEntity>;

class UserNotifier extends StateNotifier<UserState> {
  final UserRepository _repository;

  UserNotifier(this._repository) : super(UserState.initial());

  Future<void> fetch(String nick) async {
    state = UserState.loadInProgress();
    final result = await _repository.fetch(nick);

    state = result.fold(
      (failure) => UserState.loadFailure(failure),
      (user) => UserState.loadSuccess(user),
    );
  }

  void update(UserEntity user) {
    state = UserState.loadSuccess(user);
  }
}
