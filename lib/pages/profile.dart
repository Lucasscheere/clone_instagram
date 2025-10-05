import 'package:flutter/material.dart';
import '../widgets/app_bar_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarProfile(),
      endDrawer: Drawer(),
      body: Column(
        children: [
          Text('Lucas Scheere'),
          Text('Administração UVA')
        ],
      ),
    );
  }
}
