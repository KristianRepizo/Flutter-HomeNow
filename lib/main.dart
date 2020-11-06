import 'package:flutter/material.dart';
import 'package:flutter_app_project/screens/home_screen.dart';
import 'package:flutter_app_project/screens/profile_screen.dart';
import 'package:flutter_app_project/screens/settings_screen.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  Widget _showPage = new HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (tabIndex) {
          print(tabIndex);

          if (tabIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          }
          if (tabIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          if (tabIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          }
        },
        backgroundColor: Colors.red,
        selectedFontSize: 15,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            title: Text('Perfil'),
            icon: Icon(
              Icons.person,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(
              Icons.home,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            title: Text('Ajustes'),
            icon: Icon(Icons.settings, size: 25),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: _showPage,
        ),
      ),
      backgroundColor: Colors.white10,
    );
  }
}
