import 'package:flutter/material.dart';
import 'widgets/team_card_widget.dart';

class LigViewExample extends StatefulWidget {
  @override
  _LigViewExampleState createState() => _LigViewExampleState();
}

class _LigViewExampleState extends State<LigViewExample> {
  var teams = [
    {
      "team": "Galatasaray",
      "logo":
          "https://upload.wikimedia.org/wikipedia/commons/f/f6/Galatasaray_Sports_Club_Logo.png",
      "point": "4"
    },
    {
      "team": "Fenerbahçe",
      "logo":
          "https://upload.wikimedia.org/wikipedia/tr/archive/8/85/20161226202751%21200px-Fenerbah%C3%A7e.png",
      "point": "3"
    },
    {
      "team": "Beşiktaş",
      "logo":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Be%C5%9Fikta%C5%9F_Logo_Be%C5%9Fikta%C5%9F_Amblem_Be%C5%9Fikta%C5%9F_Arma.png/1200px-Be%C5%9Fikta%C5%9F_Logo_Be%C5%9Fikta%C5%9F_Amblem_Be%C5%9Fikta%C5%9F_Arma.png",
      "point": "3"
    },
    {
      "team": "Trabzonspor",
      "logo":
          "https://www.trabzonspor.org.tr/download/resources/logo_6367234456_-1x-1_false.png",
      "point": "1"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: teams.length,
            itemBuilder: (context, index) {
              return TeamCardWidget(
                team: teams[index]["team"],
                image: teams[index]["logo"],
                point: teams[index]["point"],
              );
            }));
  }
}
