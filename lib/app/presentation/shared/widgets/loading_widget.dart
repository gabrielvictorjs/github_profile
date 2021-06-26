import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        Theme.of(context).primaryColor,
      ),
    );
  }
}
