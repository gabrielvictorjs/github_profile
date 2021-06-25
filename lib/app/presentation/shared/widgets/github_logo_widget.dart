import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GithubLogoWidget extends StatelessWidget {
  const GithubLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * .3;

    return SvgPicture.asset(
      'assets/github-logo.svg',
      color: Colors.white,
      height: size,
      width: size,
    );
  }
}
