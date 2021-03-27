import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggaredGridExample extends StatefulWidget {
  @override
  _StaggaredGridExampleState createState() => _StaggaredGridExampleState();
}

class _StaggaredGridExampleState extends State<StaggaredGridExample> {
  var students = [
    {"name": "Ali", "point": "61"},
    {"name": "İdris", "point": "60"},
    {"name": "Telat", "point": "75"},
    {"name": "Murat", "point": "30"},
    {"name": "Tamer", "point": "80"},
    {"name": null, "point": "0"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: students.length,
        itemBuilder: (BuildContext context, int index) => new Container(
            color: Colors.green,
            child: new Center(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text(students[index]["name"] ?? "noname"),
              ),
            )),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(index == 1 ? 2 : 1, index.isEven ? 1 : .75),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
