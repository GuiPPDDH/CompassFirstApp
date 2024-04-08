import 'package:flutter/material.dart';

class TopNewsDivisor extends StatelessWidget {
  const TopNewsDivisor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 3,
          color: const Color(0xfffa8072),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          width: 2,
          height: 3,
          color: const Color(0xfffa8072),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          width: 2,
          height: 3,
          color: const Color(0xfffa8072),
        ),
        const SizedBox(
          width: 3,
        ),
        Container(
          width: 2,
          height: 3,
          color: const Color(0xfffa8072),
        ),
      ],
    );
  }
}
