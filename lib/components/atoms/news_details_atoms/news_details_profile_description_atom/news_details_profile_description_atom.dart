import 'package:flutter/material.dart';

class NewsDetailsProfileUrlAtom extends StatelessWidget {
  final String url;

  const NewsDetailsProfileUrlAtom({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      url,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.grey,
      ),
    );
  }
}
