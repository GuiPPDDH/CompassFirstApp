import 'package:flutter/material.dart';

class TopNewsTitleAtom extends StatelessWidget {
  final String title;

  const TopNewsTitleAtom({
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
