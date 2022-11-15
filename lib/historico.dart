import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: const <Widget>[
          Text(
            'Últimos Serviços',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
