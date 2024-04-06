import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('chats')),
      body: Column(children: [
        Container(
          color: Colors.grey.shade300,
          child: const TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: ('Digite aqui...')),
          ),
        )
      ]));
}
