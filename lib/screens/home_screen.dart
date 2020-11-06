import 'dart:ui';
import 'package:flutter_app_project/data/home_repository.dart';
import 'package:flutter_app_project/screens/login_screen.dart';
import 'package:flutter_app_project/screens/profile_screen.dart';
import 'package:flutter_app_project/screens/settings_screen.dart';
import 'package:flutter_app_project/widgets/home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/flutter_search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  SearchBar searchBar;
  final homeRepository = HomeRepository();
  var showMenu = false;
  var limit;
  var order;

  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
        backgroundColor: Colors.red,
        title: new Text(
          '',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 20),
        ),
        actions: [searchBar.getSearchAction(context)]);
  }

  HomeScreenState() {
    searchBar = new SearchBar(
        inBar: false,
        setState: setState,
        onSubmitted: print,
        buildDefaultAppBar: buildAppBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: searchBar.build(context),
      backgroundColor: Colors.white70,
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
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
        child: Wrap(
          children: homeRepository
              .getAll(limit: limit, order: order)
              .map(
                (home) => GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: HomeWidget(
                    home: home,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
