import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/routes/args/user_profile_args.dart';
import '../../core/routes/routes.dart';
import '../../shared/notifiers/user_notifier.dart';
import '../../shared/widgets/github_logo_widget.dart';
import '../../shared/widgets/loading_widget.dart';
import 'widgets/search_input_widget.dart';

class SearchUserPage extends HookWidget {
  final userNotifierProvider =
      userNotifierProviderFamily(UniqueKey().toString());

  SearchUserPage({Key? key}) : super(key: key);

  void _fetchUser(BuildContext context, String nick) {
    if (nick.isNotEmpty) {
      FocusScope.of(context).unfocus();
      context.read(userNotifierProvider.notifier).fetch(nick);
    } else {
      _showError(context, 'Please, enter a valid user');
    }
  }

  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final searchController = useTextEditingController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Hero(
                  tag: 'github-logo',
                  child: GithubLogoWidget(),
                ),
                const SizedBox(height: 64),
                SearchInputWidget(
                  controller: searchController,
                ),
                const SizedBox(height: 20),
                _buildSearchButton(searchController),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchButton(TextEditingController searchController) {
    return ProviderListener<UserState>(
      provider: userNotifierProvider,
      onChange: (context, state) {
        state.maybeMap(
          loadSuccess: (state) {
            AppRoutes.userProfile.push(
              context,
              arguments: UserProfileArgs.user(state.data),
            );
          },
          loadFailure: (state) => _showError(
            context,
            state.failure.map(
              notFound: (_) => 'User not found',
              undefined: (_) => 'Undefined Error',
            ),
          ),
          orElse: () {},
        );
      },
      child: Consumer(
        builder: (context, watch, _) {
          final userState = watch(userNotifierProvider);

          return Container(
            width: MediaQuery.of(context).size.width * .3,
            height: 48,
            child: userState.maybeMap(
              loadInProgress: (_) => Center(child: LoadingWidget()),
              orElse: () => ElevatedButton(
                onPressed: () {
                  _fetchUser(context, searchController.text);
                },
                child: Text('Search'),
              ),
            ),
          );
        },
      ),
    );
  }
}
