import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meindica/redefinir_senha.dart';
import 'criar_conta.dart';
import 'entrar.dart';
import 'tela_inicial.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'OpenSans-Regular'),
      title: 'First Screen',
      home: const FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.openSans().fontFamily),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ME INDICA',
            style: TextStyle(fontFamily: 'OpenSans-Regular'),
          ),
          backgroundColor: Colors.orange,
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
                'ME INDICA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontFamily: 'OpenSans-Regular'),
              ),
              const SizedBox(
                height: 110,
                width: 100,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                  textStyle: const TextStyle(
                    fontSize: 30,
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
                  foregroundColor: const Color.fromARGB(255, 59, 22, 161),
                  textStyle: const TextStyle(fontSize: 30),
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
            ],
          ),
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
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey[900],
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.arrow_back),
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
            style: TextStyle(),
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

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        title: const Text('Me Indica'),
      ),
      backgroundColor: Colors.black,
      body: const Center(
          child: Text(
        'initial Screen',
        style: TextStyle(color: Colors.white),
      )),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
