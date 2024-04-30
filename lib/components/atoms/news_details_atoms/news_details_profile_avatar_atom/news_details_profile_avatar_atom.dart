import 'package:flutter/material.dart';

class NewsDetailsProfileAvatarAtom extends StatelessWidget {
  final Color? color;
  final String name;

  const NewsDetailsProfileAvatarAtom({
    super.key,
    required this.color,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
