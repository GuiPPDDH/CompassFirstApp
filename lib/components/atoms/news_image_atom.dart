import 'package:flutter/material.dart';

class NewsImageAtom extends StatelessWidget {
  final double? width;
  final double? height;
  final Color color;
  final String imagePath;

  const NewsImageAtom({
    super.key,
    this.width,
    this.height,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            imagePath,
          ),
        ),
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: null,
    );
  }
}
