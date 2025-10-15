import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clone_instagram/pages/notifications.dart';
import 'package:clone_instagram/pages/messages.dart';

class AppBarFeed extends StatelessWidget implements PreferredSizeWidget {
  const AppBarFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      centerTitle: false,
      title: Text(
        'Instagram',
        style: GoogleFonts.satisfy(fontSize: 28, color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.favorite_border,
            size: 26,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsPage()),
            );
          },
        ),
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.facebookMessenger,
            size: 22,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MessagesPage()),
            );
          },
        ),
        const SizedBox(width: 4),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
