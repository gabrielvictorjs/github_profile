import 'package:flutter/material.dart';

import '../../user_profile/widgets/avatar_widget.dart';

class ContributorItemWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;
  final String name;
  final int contributionCount;

  ContributorItemWidget({
    Key? key,
    required this.onTap,
    required this.imagePath,
    required this.name,
    required this.contributionCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.white.withOpacity(.1),
      splashColor: Colors.white.withOpacity(.1),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: AvatarWidget(
                radius: 20,
                imagePath: imagePath,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$contributionCount contributions',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
