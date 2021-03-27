import 'package:flutter/material.dart';

class ListPageViewExample extends StatefulWidget {
  @override
  _ListPageViewExampleState createState() => _ListPageViewExampleState();
}

class _ListPageViewExampleState extends State<ListPageViewExample> {
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
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (context, index) {
            tempIndex = index;
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                color: int.parse(students[index]["point"]) > 60
                    ? Colors.blue
                    : int.parse(students[index]["point"]) == 60
                        ? Colors.red
                        : Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(students[index]["name"] ?? "İsim Yok",
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  Column(
                    children: [
                      Text(
                        int.parse(students[index]["point"]) > 60
                            ? "Geçti ${students[index]["point"]}"
                            : int.parse(students[index]["point"]) == 60
                                ? "Kaldı ${students[index]["point"]}"
                                : "Sorunlu Geçti ${students[index]["point"]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
