// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Precisa de ajuda?',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Precisa de ajuda?'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: const DropdownButtonScreen(),
      ),
    );
  }
}

class DropdownButtonScreen extends StatefulWidget {
  const DropdownButtonScreen({super.key});

  @override
  _DropdownButtonScreenState createState() => _DropdownButtonScreenState();
}

class _DropdownButtonScreenState extends State<DropdownButtonScreen> {
  String? _selectedOption;
  final List<String> _options = [
    'Problemas com o aplicativo',
    'Problema com outro usuário',
    'Problema com seus dados',
    'Outro'
  ];

  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedOption = _options.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Suporte'),
      ),
      backgroundColor: Colors.grey.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selecione uma opção:',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: _selectedOption,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
              items: _options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Fale sobre o problema',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String enteredText = _textEditingController.text.trim();
                if (enteredText.isNotEmpty && !_options.contains(enteredText)) {
                  setState(() {
                    _options.add(enteredText);
                  });
                  _showSnackBar('Seu problema foi reportado. Muito obrigado');
                } else {
                  _showSnackBar('Conte sobre o problema.');
                }
              },
              child: const Text(
                'Enviar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}

void main() {
  runApp(const HelpScreen());
}
