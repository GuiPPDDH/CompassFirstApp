import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 80,
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffffbba8),
            ),
            child: const Text(
              textAlign: TextAlign.center,
              '9',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xfffa8072),
              ),
            ),
          ),
        ),
        const Text(
          'News',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
