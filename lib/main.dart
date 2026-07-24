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
          backgroundColor: colorGreen,
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          shape: null,
          titleSpacing: 16,

          title: Text(
            'Configurações',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey.shade700,
          unselectedItemColor: colorGreen,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
          ],
        ),
      ),
    );
  }
}
