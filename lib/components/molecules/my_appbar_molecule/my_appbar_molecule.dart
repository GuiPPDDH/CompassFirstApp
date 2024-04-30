import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_icon_button_atom.dart';
import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_label_atom.dart';
import 'package:compass_first_app/components/atoms/my_appbar_atoms/my_appbar_logo_atom.dart';
import 'package:flutter/material.dart';

class MyAppBarMolecule extends StatelessWidget {
  const MyAppBarMolecule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 150,
            height: 60,
            child: Stack(
              children: [
                MyAppbarLogoAtom(),
                MyAppbarLabelAtom(),
              ],
            ),
          ),
          MyAppbarIconButtonAtom(
            onPressed: () {
              Navigator.of(context).pushNamed('/favorite_news');
            },
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
    // return const
    // );
  }
}
