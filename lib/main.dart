import 'package:flutter/material.dart';
import 'pages/feed.dart';
import 'pages/profile.dart';
import 'widgets/navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Instagram',
      routes: {
        '/feed': (context) => const FeedPage(),
        '/profile': (context) => const ProfilePage(),
      },
      home: const MainPage(),
    );
  }
}

/// 🔹 Controlador principal — muda as páginas via bottom navigation
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    FeedPage(),
    Center(child: Text("Buscar")),
    Center(child: Text("Adicionar")),
    Center(child: Text("Reels")),
    ProfilePage(),
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: NavigationBarCustom(
        currentIndex: _currentIndex,
        onDestinationSelected: _onDestinationSelected,
      ),
    );
  }
}
