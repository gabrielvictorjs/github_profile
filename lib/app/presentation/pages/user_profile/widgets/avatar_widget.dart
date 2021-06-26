import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final double radius;
  final String imagePath;

  const AvatarWidget({
    Key? key,
    required this.radius,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = radius * 2;

    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
      ),
      child: imagePath.isNotEmpty
          ? ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: FadeInImage.assetNetwork(
                fadeInDuration: const Duration(milliseconds: 100),
                placeholder: '',
                image: imagePath,
                fit: BoxFit.cover,
                height: size,
                width: size,
                imageErrorBuilder: (_, child, __) {
                  return _buildDefaultImage();
                },
                placeholderErrorBuilder: (_, child, __) {
                  return _buildDefaultImage();
                },
              ),
            )
          : _buildDefaultImage(),
    );
  }

  Widget _buildDefaultImage() {
    return Center(
      child: Icon(
        Icons.person,
        color: Colors.grey[800],
        size: radius,
      ),
    );
  }
}
