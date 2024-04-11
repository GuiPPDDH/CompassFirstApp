import 'package:flutter/material.dart';

class NewsDetailsProfileAvatarAtom extends StatelessWidget {
  final Color? color;

  const NewsDetailsProfileAvatarAtom({super.key, required this.color,});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
    );
  }
}
