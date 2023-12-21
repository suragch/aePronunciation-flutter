import 'package:flutter/material.dart';
import 'learn_page.dart'; // Assuming you have a file named learn_page.dart with LearnPage widget
import 'practice_page.dart'; // Assuming you have a file named practice_page.dart with PracticePage widget
import 'test_page.dart'; // Assuming you have a file named test_page.dart with TestPage widget

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    LearnPage(),
    PracticePage(),
    TestPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit),
            label: 'Practice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'Test',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
