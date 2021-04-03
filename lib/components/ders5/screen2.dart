import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders5/screen1.dart';

class Screen2Example extends StatefulWidget {
  @override
  _Screen2ExampleState createState() => _Screen2ExampleState();
}

class _Screen2ExampleState extends State<Screen2Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Screen 2")),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Back ",
                ),
              )),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Screen1Example();
                  },
                ));
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
