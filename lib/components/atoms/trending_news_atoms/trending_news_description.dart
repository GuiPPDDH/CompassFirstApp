import 'package:flutter/material.dart';

class TrendingNewsDescription extends StatelessWidget {

  const TrendingNewsDescription({ super.key });

   @override
   Widget build(BuildContext context) {
       return const Text(
      textAlign: TextAlign.start,
      'A crypto first? What happens when a blockchain like Terra dies',
      style: TextStyle(
        fontSize: 23,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}