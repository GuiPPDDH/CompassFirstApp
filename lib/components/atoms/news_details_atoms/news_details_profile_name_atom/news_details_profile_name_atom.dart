import 'package:flutter/material.dart';

class NewsDetailsProfileNameAtom extends StatelessWidget {
  final String name;

  const NewsDetailsProfileNameAtom({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
