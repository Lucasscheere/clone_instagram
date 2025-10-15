import 'package:flutter/material.dart';

class NavigationBarCustom extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;
  final double sizeIcon = 25.0;

  const NavigationBarCustom({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: [
        NavigationDestination(
          icon: Icon(Icons.home_outlined),
          selectedIcon: Icon(Icons.home),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.search, size: sizeIcon),
          selectedIcon: Icon(Icons.search, size: sizeIcon),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.add_box_outlined, size: sizeIcon),
          selectedIcon: Icon(Icons.add_box, size: sizeIcon),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.video_library_outlined, size: sizeIcon),
          selectedIcon: Icon(Icons.video_library, size: sizeIcon),
          label: '',
        ),
        NavigationDestination(
          icon: Icon(Icons.person_outline),
          selectedIcon: Icon(Icons.person),
          label: '',
        ),
      ],
    );
  }
}
