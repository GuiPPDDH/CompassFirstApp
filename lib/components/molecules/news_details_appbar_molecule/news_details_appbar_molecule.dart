import 'package:flutter/material.dart';

class NewsDetailsAppbarMolecule extends AppBar {
  NewsDetailsAppbarMolecule({super.key})
      : super(
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
                color: Colors.black,
              ),
            ),
          ],
        );
}
