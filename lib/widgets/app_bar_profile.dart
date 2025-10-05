import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      title: Text('lucas_scheere'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
