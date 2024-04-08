import 'package:flutter/material.dart';

class TopNewsLabel extends StatelessWidget {
  const TopNewsLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Top News',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
