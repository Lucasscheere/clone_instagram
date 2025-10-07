import 'package:flutter/material.dart';
import '../widgets/app_bar_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarProfile(),
      endDrawer: Drawer(),
      body: Column(
        children: [Text('Lucas Scheere'), Text('Administração UVA'),
        Row(
          children: [
            FilledButton(onPressed: (){}, child: Text('Editar perfil')),
            FilledButton(onPressed: (){}, child: Text('Compartilhar perfil')),
            FilledButton(onPressed: (){}, child: Icon(Icons.person_add_alt_1_outlined)),
          ],
        )
        ],
      ),
    );
  }
}
