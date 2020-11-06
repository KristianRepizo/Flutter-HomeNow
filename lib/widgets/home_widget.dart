import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_project/data/home_repository.dart';
import 'package:flutter_app_project/models/home.dart';
import 'package:flutter_app_project/screens/home_screen.dart';

class HomeWidget extends StatefulWidget {
  final Home home;

  HomeWidget({this.home});

  @override
  HomeWidgetState createState() => HomeWidgetState();
}

class HomeWidgetState extends State<HomeWidget> {
  final homeRepository = HomeRepository();
  Color colorLink = CupertinoColors.link;

  Color typeToColor(String type) {
    switch (type) {
      case 'Casa':
        return Color(0xff4592c4);
      case 'Apartamento':
        return Color(0xfffe7e24);
    }
  }

  Color modToColor(String mod) {
    switch (mod) {
      case 'Venta':
        return Color(0xff009400);
      case 'Arriendo':
        return Color(0xff9901ae);
    }
  }

  @override
  Widget build(BuildContext context) {
    var widgetType = (String type) => Container(
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: typeToColor(type),
          ),
          child: Text(type,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        );
    var widgetMod = (String mod) => Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: modToColor(mod),
          ),
          child: Text(mod,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              )),
        );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Image.network(
                    widget.home.photoUrlone,
                    height: 180,
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Image.network(
                    widget.home.photoUrltwo,
                    height: 250,
                    width: 350,
                    alignment: Alignment.center,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Image.network(
                    widget.home.photoUrlthree,
                    height: 180,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                widgetType(widget.home.type),
              ]),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  widgetMod(widget.home.mod),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.home.nameUser}',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.contact_phone,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Informacion del contacto...',
                        style: TextStyle(
                          color: CupertinoColors.link,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(children: [
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      'Antes: ${widget.home.cost}',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text(
                      'Valor: ${widget.home.costNow}',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Ciudad: ${widget.home.site}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Container(
                      height: 3,
                      color: Colors.grey,
                    )
                  ]),
                ],
              )
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 2,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
