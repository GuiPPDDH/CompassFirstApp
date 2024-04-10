import 'package:flutter/material.dart';

class AppbarNewsDetailsMolecule extends AppBar {
  AppbarNewsDetailsMolecule({super.key})
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
