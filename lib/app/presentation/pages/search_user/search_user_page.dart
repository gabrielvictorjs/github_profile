import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../core/routes/routes.dart';
import '../../shared/widgets/github_logo_widget.dart';
import 'widgets/search_input_widget.dart';

class SearchUserPage extends HookWidget {
  SearchUserPage({Key? key}) : super(key: key);

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
                Container(
                  width: MediaQuery.of(context).size.width * .3,
                  child: ElevatedButton(
                    onPressed: () {
                      AppRoutes.searchUser.push(context, arguments: noArgs);
                    },
                    child: Text('Search'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
