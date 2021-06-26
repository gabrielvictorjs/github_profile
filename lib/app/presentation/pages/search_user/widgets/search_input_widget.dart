import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchInputWidget extends HookWidget {
  final TextEditingController controller;

  const SearchInputWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final focusNode = useFocusNode();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(focusNode),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        constraints: const BoxConstraints(
          minHeight: 48,
        ),
        alignment: Alignment.center,
        child: TextField(
          autocorrect: false,
          focusNode: focusNode,
          controller: controller,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            isDense: true,
            hintText: 'Search User',
          ),
        ),
      ),
    );
  }
}
