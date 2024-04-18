import 'package:flutter/material.dart';

class MyAppbarLogoAtom extends StatelessWidget {
  const MyAppbarLogoAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 95,
      child: Container(
        width: 55,
        height: 65,
        padding: const EdgeInsets.only(
          left: 4,
          bottom: 3,
        ),
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
    );
  }
}
