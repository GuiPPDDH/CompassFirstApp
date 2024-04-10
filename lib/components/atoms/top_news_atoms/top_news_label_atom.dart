import 'package:flutter/material.dart';

class TopNewsLabelAtom extends StatelessWidget {
  const TopNewsLabelAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Top News',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
