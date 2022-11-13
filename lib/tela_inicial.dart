import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey[900],
      onTap: handleItemTap,
      currentIndex: _selectedTab,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          label: 'Procurar',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
            color: Colors.blue,
          ),
          label: 'Histórico',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_box,
            color: Colors.blue,
          ),
          label: 'Test',
        ),
      ],
    );
  }

  void handleItemTap(int selectedTab) {
    setState(() {
      _selectedTab = selectedTab;
    });
  }
}


/*
Widget build(BuildContext context) => BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('Início')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_search), label: ('Procurar')
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: ('Histórico')
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: ('Minha Conta')
              ),
        ],
      );
      */




      /*
      Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey[900],
      onTap: handleItemTap,
      currentIndex: _selectedTab,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.blue,
          ),
          label: 'Procurar',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.history,
            color: Colors.blue,
          ),
          label: 'Histórico',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_box,
            color: Colors.blue,
          ),
          label: 'Test',
        ),
      ],
    );
  }
*/