import 'package:flutter/material.dart';
import '../widgets/app_bar_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarProfile(),
      endDrawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://pm1.aminoapps.com/6685/a4732eb0ea200d8554265ef7ceb31694eb286f93_128.jpg',
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lucas Scheere', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),


                      // Info posts, follows and followers
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text('10', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), Text('publicações')],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text('150', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), Text('seguidores')],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text('250', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), Text('seguindo')],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Info Bio
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Administração UVA'),
          ),



          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Editar perfil'),
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text('Compartilhar perfil'),
              ),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Icon(Icons.person_add_alt_1_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
