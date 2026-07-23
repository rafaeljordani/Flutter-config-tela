import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final Color colorGreen = const Color(0xFF146C43);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF146C43),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,

          leading: Icon(Icons.arrow_back, color: Colors.white),
          title: Text(
            'Perfil',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(Icons.menu, color: Colors.white, size: 24),
            Padding(padding: EdgeInsets.only(right: 16)),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          ],
        ),
      ),
    );
  }
}
