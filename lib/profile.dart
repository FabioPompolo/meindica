import 'package:flutter/material.dart';
import 'package:meindica/help.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
                'https://t.ctcdn.com.br/y83nUX4m-qsvDaK74oes12XsQd8=/1244x700/smart/i641694.jpeg'),
          ),
          const Text(
            "Meu Perfil",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            width: double.infinity,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black)),
              onPressed: () {},
              child: const Text(
                "Meus dados",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HelpScreen()),
                );
              },
              child: const Text(
                "Ajuda",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
