import 'package:flutter/material.dart';

class TopNewsDescriptionAtom extends StatelessWidget {
  final String description;

  const TopNewsDescriptionAtom({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      maxLines: 2,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.grey,
      ),
    );
  }
}
