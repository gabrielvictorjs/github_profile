import 'package:flutter/material.dart';

import '../../../utils/language_colors.dart';

class RepoItemWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final String name;
  final String description;
  final String language;
  final int stars;
  final String lastUpdate;

  const RepoItemWidget({
    Key? key,
    this.onTap,
    required this.name,
    required this.description,
    required this.language,
    required this.stars,
    required this.lastUpdate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.white.withOpacity(.1),
      splashColor: Colors.white.withOpacity(.1),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ).copyWith(right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 16, color: Colors.blue),
                  ),
                  if (description.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 14),
                    ),
                  ],
                  const SizedBox(height: 16),
                  _buildFooter(context),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          height: 14,
          width: 14,
          decoration: BoxDecoration(
            color: languageColors[language] ?? Colors.grey,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 4),
        _buildCaption(context, language),
        const SizedBox(width: 20),
        Icon(
          Icons.star_border_rounded,
          color: Colors.grey,
          size: 20,
        ),
        const SizedBox(width: 2),
        _buildCaption(context, stars.toString()),
        if (lastUpdate.isNotEmpty) ...[
          const SizedBox(width: 20),
          _buildCaption(
            context,
            'Updated on $lastUpdate',
          ),
        ]
      ],
    );
  }

  Widget _buildCaption(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.caption!,
    );
  }
}
