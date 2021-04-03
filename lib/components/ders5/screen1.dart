import 'package:flutter/material.dart';

class Screen1Example extends StatefulWidget {
  @override
  _Screen1ExampleState createState() => _Screen1ExampleState();
}

class _Screen1ExampleState extends State<Screen1Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Column(
        children: [
          Center(child: Text("Screen 1")),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Screen 1 Navigate",
                ),
              )),
        ],
      ),
    );
  }
}
