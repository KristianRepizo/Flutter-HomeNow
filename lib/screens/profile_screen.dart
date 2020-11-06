import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_project/main.dart';
import 'package:flutter_app_project/screens/profile_screen.dart';
import 'package:flutter_app_project/screens/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
                'https://rw-media.s3.amazonaws.com/residential-offices/wp-content/blogs.dir/sites/785/2016/03/18045751/Capture.png'),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Column(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Home Now',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.favorite,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      FlatButton == Colors.grey;
                    },
                    child: Text(
                      'Lista de favoritos',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      FlatButton == Colors.grey;
                    },
                    child: Text(
                      'Tu ubicación',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.notifications,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      FlatButton == Colors.grey;
                    },
                    child: Text(
                      'Notificaciones',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.vpn_lock,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      FlatButton == Colors.grey;
                    },
                    child: Text(
                      'Idioma',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      FlatButton == Colors.grey;
                    },
                    child: Text(
                      'Acerca de',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.android,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  FlatButton(
                    onPressed: () {
                      FlatButton == Colors.grey;
                    },
                    child: Text(
                      'Version',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.grey[500],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Salir',
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        ),
                      ],
                    ),
                    onPressed: () {
                      FlatButton == Colors.grey;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('¿Seguro que quieres salir?'),
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.black54,
              alignment: Alignment.center,
              child: Image.network(
                  'https://www.flinders.edu.au/content/dam/images/study/testimonials/Hayley-chenoweth-profile-circle.png.flinders-image.970.low.png',
                  height: 230),
            ),
            Column(
              children: [
                Text(
                  'Maria Ramos',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 18, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Vive en: Bogota',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.work, size: 18, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Trabaja en: Bienes raices',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, size: 18, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Contacto: ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                Text(
                  'Movil',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                )
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.contacts, size: 18, color: Colors.white),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Contacto: ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                Text(
                  'Correo',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(height: 1, color: Colors.white10),
            Container(
              color: Colors.black45,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(Icons.fingerprint, size: 20, color: Colors.white54),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Informacion',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.white54,
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.white10,
            ),
            Container(
              color: Colors.black45,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.collections,
                    size: 20,
                    color: Colors.white54,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Contenido',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white54,
                    ),
                  ),
                  SizedBox(
                    width: 155,
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.white54,
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.white10,
            ),
            Container(
              color: Colors.black45,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.white54,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Favorito',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white54,
                    ),
                  ),
                  SizedBox(
                    width: 175,
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.white54,
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.white10,
            ),
            Container(
              color: Colors.black45,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(
                    Icons.chat,
                    size: 20,
                    color: Colors.white54,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Conversaciones',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white54),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.white54,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff161211),
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
              title: Text('Ajustes'), icon: Icon(Icons.settings, size: 25)),
        ],
      ),
    );
  }
}
