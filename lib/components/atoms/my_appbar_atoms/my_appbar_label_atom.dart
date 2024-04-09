import 'package:flutter/material.dart';

class MyAppbarLabelAtom extends StatelessWidget {
  const MyAppbarLabelAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'News',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
