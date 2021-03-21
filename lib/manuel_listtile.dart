import 'package:flutter/material.dart';

class ManualList extends StatefulWidget {
  @override
  _ManualListState createState() => _ManualListState();
}

class _ManualListState extends State<ManualList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Container(
          height: 100,
          color: Colors.blueGrey,
          //child: Text('Entry ${entries[index]}'),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.all(10),
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/avatar/1.jpeg'))),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Telat',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Sublitle',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
      )),
    );
  }
}
