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

          title: const Text(
            'Configurações',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color: const Color(0xffE8f5EE),
                    borderRadius: BorderRadius.circular(12),
                    border: null,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.notifications,
                          color: colorGreen,
                          size: 32,
                        ),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Notificações',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff1F1F1F),
                            ),
                          ),
                          Text(
                            'Gerencia seus alertas',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff8A8A8A),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey.shade700,
          unselectedItemColor: colorGreen,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurações',
            ),
          ],
        ),
      ),
    );
  }
}
