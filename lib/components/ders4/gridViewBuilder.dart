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
        body: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: students.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  students[index]["name"] ?? "Ad Yok",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
