import 'package:flutter/material.dart';

class NotifictionsPage extends StatelessWidget {
  const NotifictionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificações'),
      ),
      body: Center(child: Text('Notificação simples'),),
    );
  }
}
