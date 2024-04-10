import 'package:flutter/material.dart';

class TopNewsLineAtom extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const TopNewsLineAtom({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
