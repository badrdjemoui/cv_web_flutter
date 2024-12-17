import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/experience_screen.dart';
import 'screens/language_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon CV',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.grey[800], fontSize: 18),
          bodyMedium: TextStyle(color: Colors.grey[600], fontSize: 16),
          titleLarge: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    AboutScreen(),
    ExperienceScreen(),
    LanguageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mon CV fr',
          style: TextStyle(color: Colors.white), // تغيير لون النص داخل AppBar
        ),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.deepPurple,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _buildBottomNavItem(Icons.home, 'Accueil', 0),
          _buildBottomNavItem(Icons.person, 'À propos', 1),
          _buildBottomNavItem(Icons.work, 'Expériences', 2),
          _buildBottomNavItem(Icons.language, 'Langues', 3),
        ],
      ),
    );
  }

  // Function to build BottomNavigationBarItem with animation
  BottomNavigationBarItem _buildBottomNavItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300), // Duration of animation
        child: _currentIndex == index
            ? Transform.scale(
                scale: 1.2, // Scale the icon when it's selected
                child: Icon(
                  icon,
                  key: ValueKey<int>(index),
                  color: Colors.deepPurple,
                  size: 30,
                ),
              )
            : Icon(
                icon,
                key: ValueKey<int>(index),
                color: Colors.grey,
                size: 30,
              ),
      ),
      label: label,
    );
  }
}
