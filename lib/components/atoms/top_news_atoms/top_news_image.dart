import 'package:flutter/material.dart';

class TopNewsImage extends StatelessWidget {
  const TopNewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
      ),
    );
  }
}
