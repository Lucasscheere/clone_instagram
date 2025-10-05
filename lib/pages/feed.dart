import 'package:flutter/material.dart';
import '../widgets/app_bar_feed.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarFeed(),
      body: Center(
        child: Text("Feed Page"),
      ),
    );
  }
}
