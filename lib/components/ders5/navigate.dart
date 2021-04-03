import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders5/screen1.dart';
import 'package:flutter_application_1/components/ders5/screen2.dart';

class NavigateExample extends StatefulWidget {
  @override
  _NavigateExampleState createState() => _NavigateExampleState();
}

class _NavigateExampleState extends State<NavigateExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return Screen1Example();
                  },
                ));
              },
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Push Replacement",
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Screen2Example();
                  },
                ));
              },
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(10),
                child: Text(
                  "Screen 2 Navigate",
                ),
              )),
        ],
      )),
    );
  }
}
