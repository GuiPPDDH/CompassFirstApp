import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_label.dart';
import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_logo.dart';
import 'package:flutter/material.dart';

class MyAppBarMolecule extends StatelessWidget {
  const MyAppBarMolecule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 140,
      height: 60,
      child: Stack(
        children: [
          MyAppbarLogo(),
          MyAppbarLabel(),
        ],
      ),
    );
  }
}
