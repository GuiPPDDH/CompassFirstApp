import 'package:flutter/material.dart';

class TopNewsDescription extends StatelessWidget {
  final String description;

  const TopNewsDescription({
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
