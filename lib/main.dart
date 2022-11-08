// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meindica/redefinir_senha.dart';

import 'criar_conta.dart';
import 'entrar.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      title: 'First Screen',
      home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('PIM'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/worker.png',
                  width: 200.0,
                  height: 200.0,
                ),
                const Text(
                  'PIM-3',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'TESTE DE FONTE',
                ),
                const SizedBox(
                  height: 110,
                  width: 100,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.purple,
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Já tenho conta',
                    textAlign: TextAlign.end,
                  ),
                ),
                const SizedBox(height: 40),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 59, 22, 161),
                    textStyle:
                        const TextStyle(fontSize: 30, fontFamily: 'Montserrat'),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()),
                    );
                  },
                  child: const Text(
                    'Criar Conta',
                    textAlign: TextAlign.end,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey[900],
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            iconSize: 20.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text('Tela de Login'),
        ),
        body: const LogScreen(),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: const Text(
            'Esqueci a senha',
            style: TextStyle(fontFamily: 'Montserrat'),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        body: const RedefinirSenha());
  }
}

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text('Criar nova conta'),
      ),
      backgroundColor: Colors.blueGrey,
      body: const AccountTexts(),
    );
  }
}
