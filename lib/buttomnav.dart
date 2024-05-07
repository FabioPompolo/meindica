import 'package:flutter/material.dart';
import 'package:meindica/historico.dart';
import 'package:meindica/inicio.dart';
import 'package:meindica/profile.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedTab = 0;
  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.grey.shade50,
      body: Center(
        child: _pages.elementAt(_selectedTab),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade400,
        onTap: handleItemTap,
        currentIndex: _selectedTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent.shade400,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
            ),
            label: 'Histórico',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
            ),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }

  void handleItemTap(int selectedTab) {
    setState(() {
      _selectedTab = selectedTab;
    });
  }
}
