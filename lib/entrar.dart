import 'package:flutter/material.dart';
import 'buttomnav.dart';
import 'main.dart';

class LogScreen extends StatelessWidget {
  const LogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Bem-vindo de volta!!',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  hintText: 'E-mail ou Telefone'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: TextField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    labelText: 'Senha')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 15),
              ),
              child: const Text(
                'Esqueceu a senha?',
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPassword()),
                );
              },
            ),
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle:
                  const TextStyle(fontSize: 30, fontFamily: 'Montserrat'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BottomNavigationScreen()),
              );
            },
            child: const Text(
              'Entrar',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
