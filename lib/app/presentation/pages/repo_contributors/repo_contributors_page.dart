import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/routes/args/repo_contributors_args.dart';
import '../../core/routes/args/user_profile_args.dart';
import '../../core/routes/routes.dart';
import 'notifiers/contributors_notifier.dart';
import 'widgets/contributor_item_widget.dart';

class RepoContributorsPage extends HookWidget {
  final RepoContributorsArgs args;
  final contributorsNotifierProvider =
      contributorsNotifierProviderFamily(UniqueKey().toString());

  RepoContributorsPage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contributorsNotifier =
        useProvider(contributorsNotifierProvider.notifier);

    useEffect(() {
      contributorsNotifier.fetchAll(
        ownerNick: args.ownerNick,
        repo: args.repo,
      );
      return () {};
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(args.repo),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Consumer(
      builder: (context, watch, _) {
        final state = watch(contributorsNotifierProvider);

        return state.maybeMap(
          orElse: () => Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            final contributors = state.data;

            return ListView.builder(
              itemCount: contributors.length,
              itemBuilder: (_, index) {
                final contributor = contributors[index];

                return ContributorItemWidget(
                  onTap: () {
                    AppRoutes.userProfile.push(
                      context,
                      arguments: UserProfileArgs.nick(contributor.nick),
                    );
                  },
                  contributionCount: contributor.contributions,
                  imagePath: contributor.avatarUrl,
                  name: contributor.nick,
                );
              },
            );
          },
          loadFailure: (_) {
            return Center(child: Text('Undefined Error'));
          },
        );
      },
    );
  }
}
