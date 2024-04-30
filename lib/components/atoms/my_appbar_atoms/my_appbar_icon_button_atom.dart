import 'package:flutter/material.dart';

class MyAppbarIconButtonAtom extends StatelessWidget {
  final Function()? onPressed;
  final Widget icon;

  const MyAppbarIconButtonAtom({
    super.key,
    this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
    );
  }
}
