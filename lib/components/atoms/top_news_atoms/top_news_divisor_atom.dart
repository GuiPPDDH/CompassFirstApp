import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_dot_atom.dart';
import 'package:compass_first_app/components/atoms/top_news_atoms/top_news_line_atom.dart';
import 'package:flutter/material.dart';

class TopNewsDivisorAtom extends StatelessWidget {
  const TopNewsDivisorAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        TopNewsLineAtom(
          width: 50,
          height: 3,
          color: Color(0xfffa8072),
        ),
        SizedBox(
          width: 3,
        ),
        TopNewsDotAtom(
          width: 2,
          height: 3,
          color: Color(0xfffa8072),
        ),
        SizedBox(
          width: 3,
        ),
        TopNewsDotAtom(
          width: 2,
          height: 3,
          color: Color(0xfffa8072),
        ),
        SizedBox(
          width: 3,
        ),
        TopNewsDotAtom(
          width: 2,
          height: 3,
          color: Color(0xfffa8072),
        ),
      ],
    );
  }
}
