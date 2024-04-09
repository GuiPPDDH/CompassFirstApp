import 'package:flutter/material.dart';

class TopNewsTitle extends StatelessWidget {
  final String title;

  const TopNewsTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
