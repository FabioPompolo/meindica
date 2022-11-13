import 'package:flutter/material.dart';

class RedefinirSenha extends StatelessWidget {
  const RedefinirSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'E-mail'),
          ),
        ),
        const Text(
          'OU',
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Telefone'),
          ),
        ),
        ElevatedButton(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 59, 22, 161),
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          onPressed: () {},
          child: const Text(
            'Receber Código',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
