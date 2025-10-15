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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: CircleAvatar(radius: 30,
                    backgroundImage: NetworkImage(
                      'https://pm1.aminoapps.com/6685/a4732eb0ea200d8554265ef7ceb31694eb286f93_128.jpg',
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lucas Scheere',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Info posts, follows and followers
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Column(
                            children: [
                              Text(
                                '16',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text('posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '100',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text('seguidores'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '150',
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text('seguindo'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Info bio
            const SizedBox(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Administração UVA'),
            ),
            const SizedBox(height: 8),

            // Buttons
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
      ),
    );
  }
}
