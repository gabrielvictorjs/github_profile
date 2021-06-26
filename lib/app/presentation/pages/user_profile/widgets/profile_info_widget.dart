import 'package:flutter/material.dart';

import 'avatar_widget.dart';

class ProfileInfoWidget extends StatelessWidget {
  final String avatarUrl;
  final String name;
  final String bio;
  final bool busy;

  ProfileInfoWidget({
    Key? key,
    required this.avatarUrl,
    required this.name,
    required this.bio,
    this.busy = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Hero(
          tag: 'github-logo',
          child: AvatarWidget(
            radius: 40,
            imagePath: avatarUrl,
          ),
        ),
        const SizedBox(width: 20),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: textTheme.bodyText1!.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                bio,
                style: textTheme.caption!.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
