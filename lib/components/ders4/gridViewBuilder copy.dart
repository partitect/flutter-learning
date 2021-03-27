import 'package:flutter/material.dart';

class GridPageViewExample extends StatefulWidget {
  @override
  _GridPageViewExampleState createState() => _GridPageViewExampleState();
}

class _GridPageViewExampleState extends State<GridPageViewExample> {
  var names = ["ali", "taner", "telat", "idris", "selman"];
  var students = [
    {"name": "Ali", "point": "61"},
    {"name": "İdris", "point": "60"},
    {"name": "Telat", "point": "75"},
    {"name": "Murat", "point": "30"},
    {"name": "Tamer", "point": "80"},
    {"name": null, "point": "0"},
  ];
  var tempIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listeler"),
        ),
        body: GridView.count(
          scrollDirection: Axis.vertical,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          //reverse: true,
          children: [
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  "GridView",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            )
          ],
        ));
  }
}
