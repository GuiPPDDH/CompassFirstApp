import 'package:flutter/material.dart';

class NewsDetailsProfileDescriptionAtom extends StatelessWidget {
  final String description;

  const NewsDetailsProfileDescriptionAtom({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.grey,
      ),
    );
  }
}
