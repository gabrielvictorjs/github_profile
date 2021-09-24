import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/routes/args/repo_contributors_args.dart';
import '../../core/routes/args/user_profile_args.dart';
import '../../core/routes/routes.dart';
import '../../shared/notifiers/user_notifier.dart';
import '../../shared/widgets/loading_widget.dart';
import '../../utils/app_pipes.dart';
import 'notifiers/profile_loading_notifier.dart';
import 'notifiers/repos_notifier.dart';
import 'widgets/profile_info_widget.dart';
import 'widgets/repo_item_widget.dart';

class UserProfilePage extends HookWidget {
  final UserProfileArgs args;
  late final String nick;
  late final UserNotifierProvider userNotifierProvider;
  late final ReposNotifierProvider reposNotifierProvider;
  late final ProfileLoadingStateProvider profileLoadingStateProvider;

  UserProfilePage({
    Key? key,
    required this.args,
  }) : super(key: key) {
    final uniqueKey = UniqueKey().toString();
    nick = args.nickOrUser.fold(
      (nick) => nick,
      (user) => user.nick,
    );

    userNotifierProvider = userNotifierProviderFamily(uniqueKey);
    reposNotifierProvider = reposNotifierProviderFamily(uniqueKey);
    profileLoadingStateProvider = profileLoadingStateProviderFamily(uniqueKey);
  }

  @override
  Widget build(BuildContext context) {
    final userNotifier = useProvider(userNotifierProvider.notifier);
    final reposNotifier = useProvider(reposNotifierProvider.notifier);

    useEffect(() {
      args.nickOrUser.fold(userNotifier.fetch, userNotifier.update);
      reposNotifier.fetchAll(nick);
      return () {};
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(nick),
      ),
      body: Consumer(builder: (_, watch, __) {
        final isLoading = watch(profileLoadingStateProvider);

        if (isLoading.state) {
          return Center(child: LoadingWidget());
        }

        return CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ListBody(
                  children: [
                    _buildProfileInfo(),
                    const SizedBox(height: 32),
                    Text(
                      'Repositories',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ),
            _buildRepositories(),
          ],
        );
      }),
    );
  }

  Widget _buildRepositories() {
    return Consumer(
      builder: (context, watch, _) {
        final state = watch(reposNotifierProvider);

        return state.maybeMap(
          orElse: () => SliverToBoxAdapter(child: Container()),
          loadFailure: (_) => SliverToBoxAdapter(
            child: Center(child: Text('Unexpected error!')),
          ),
          loadInProgress: (_) => SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(child: LoadingWidget()),
            ),
          ),
          loadSuccess: (state) {
            final repos = state.data;

            return SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) {
                  final repo = repos[index];
                  return RepoItemWidget(
                    onTap: () {
                      AppRoutes.repoContributors.push(
                        context,
                        arguments: RepoContributorsArgs(
                          ownerNick: nick,
                          repo: repo.name,
                        ),
                      );
                    },
                    stars: repo.stars,
                    name: repo.name,
                    lastUpdate: AppPipes.formatDateTime(repo.updatedAt),
                    language: repo.language,
                    description: repo.description,
                  );
                },
                childCount: repos.length,
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildProfileInfo() {
    return Consumer(
      builder: (context, watch, _) {
        final state = watch(userNotifierProvider);

        return state.maybeMap(
          orElse: () => Container(),
          loadSuccess: (state) {
            final user = state.data;
            return ProfileInfoWidget(
              avatarUrl: user.avatarUrl,
              name: user.name,
              bio: user.bio,
            );
          },
        );
      },
    );
  }
}
