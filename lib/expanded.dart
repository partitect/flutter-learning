import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.purple,
                child: Text("asfaskfnalsfn"),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Text("qşlrfmşqlmfsşalm"),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Text("asdasd"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
