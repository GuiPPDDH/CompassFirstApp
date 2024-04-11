import 'package:flutter/material.dart';

class NewsDetailsDescriptionAtom extends StatelessWidget {
  final String description;

  const NewsDetailsDescriptionAtom({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
