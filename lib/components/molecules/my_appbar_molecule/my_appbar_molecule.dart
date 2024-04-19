import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_label_atom.dart';
import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_logo_atom.dart';
import 'package:flutter/material.dart';

class MyAppBarMolecule extends StatelessWidget {
  const MyAppBarMolecule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 150,
      height: 60,
      child: Stack(
        children: [
          MyAppbarLogoAtom(),
          MyAppbarLabelAtom(),
        ],
      ),
    );
  }
}
