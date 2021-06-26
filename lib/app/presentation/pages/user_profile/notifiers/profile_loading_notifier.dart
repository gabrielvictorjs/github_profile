import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/notifiers/user_notifier.dart';
import 'repos_notifier.dart';

typedef ProfileLoadingStateProvider = AutoDisposeStateProvider<bool>;

final profileLoadingStateProviderFamily =
    StateProvider.family.autoDispose<bool, String>((ref, id) {
  final reposState = ref.watch(reposNotifierProviderFamily(id));
  final userState = ref.watch(userNotifierProviderFamily(id));

  final userIsLoading = userState.maybeMap(
    loadInProgress: (_) => true,
    orElse: () => false,
  );

  final repoIsLoading = reposState.maybeMap(
    loadInProgress: (_) => true,
    orElse: () => false,
  );

  return userIsLoading && repoIsLoading;
});
