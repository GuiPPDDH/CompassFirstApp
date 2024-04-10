import 'package:flutter/material.dart';

class BottomNavigationBarMolecule extends StatelessWidget {
  const BottomNavigationBarMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_filled),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.auto_graph_rounded),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.splitscreen),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.document_scanner),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.video_camera_back),
          label: '',
        ),
      ],
    );
  }
}
