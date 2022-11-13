import 'package:flutter/material.dart';
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'E-mail ou Telefone'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Senha')),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 59, 22, 161),
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
              foregroundColor: const Color.fromARGB(255, 59, 22, 161),
              textStyle:
                  const TextStyle(fontSize: 30, fontFamily: 'Montserrat'),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const InitialScreen()),
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
