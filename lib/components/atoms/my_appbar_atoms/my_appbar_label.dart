import 'package:flutter/material.dart';

class MyAppbarLabel extends StatelessWidget {
  const MyAppbarLabel({super.key});

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
