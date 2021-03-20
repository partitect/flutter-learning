import 'package:flutter/material.dart';
import 'dart:convert';

class ListWidget extends StatefulWidget {
  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    "E",
    "F",
    "G",
    "H",
    "I"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          print(index);
          return InkWell(
            onTap: () {
              print("Pressed $index Tıklandı ${entries[index]}");
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              height: 80,
              color: Colors.blueGrey,
              //child: Text('Entry ${entries[index]}'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/avatar/$index.jpeg'))),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Entry Test A B ${entries[index]}',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Entry ${entries[index]}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "3 Min Ago",
                              style: TextStyle(color: Colors.white),
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "2 Incoming",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
