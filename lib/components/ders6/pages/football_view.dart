import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FootballPageScreen extends StatefulWidget {
  @override
  _FootballPageScreenState createState() => _FootballPageScreenState();
}

class _FootballPageScreenState extends State<FootballPageScreen> {
  var playerList = [
    {
      "teamId": 1,
      "name": "Bruno Fernandes",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p141746.png"
    },
    {
      "teamId": 2,
      "name": "Pierre-Emerick Aubameyang",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p54694.png"
    },
    {
      "teamId": 3,
      "name": "Tammy Abraham",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p173879.png"
    },
    {
      "teamId": 4,
      "name": "Sergio Agüero",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p37572.png"
    },
    {
      "teamId": 5,
      "name": "Ozan Kabak",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p438277.png"
    },
    {
      "teamId": 6,
      "name": "Harry Kane",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p78830.png"
    },
    {
      "teamId": 7,
      "name": "Çağlar Söyüncü",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p218031.png"
    },
    {
      "teamId": 8,
      "name": "Raúl Jiménez",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p102057.png"
    },
    {
      "teamId": 9,
      "name": "James Rodríguez",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p60025.png"
    },
    {
      "teamId": 10,
      "name": "Jack Grealish",
      "image":
          "https://resources.premierleague.com/premierleague/photos/players/250x250/p114283.png"
    }
  ];
  var teamList = {
    1: [
      {
        "name": "Manchester United",
        "color1": Color.fromRGBO(251, 225, 34, 1),
        "color2": Color.fromRGBO(218, 41, 8, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/50/t1@x2.png"
      }
    ],
    2: [
      {
        "name": "Arsenal",
        "color1": Color.fromRGBO(6, 54, 114, 1),
        "color2": Color.fromRGBO(239, 1, 7, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t3@x2.png"
      }
    ],
    3: [
      {
        "name": "Chelsea",
        "color1": Color.fromRGBO(3, 70, 148, 1),
        "color2": Color.fromRGBO(238, 36, 44, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t8@x2.png"
      }
    ],
    4: [
      {
        "name": "Manchester City",
        "color1": Color.fromRGBO(28, 44, 91, 1),
        "color2": Color.fromRGBO(108, 171, 221, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t43@x2.png"
      }
    ],
    5: [
      {
        "name": "Liverpool",
        "color1": Color.fromRGBO(0, 178, 169, 1),
        "color2": Color.fromRGBO(200, 16, 46, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t14@x2.png"
      }
    ],
    6: [
      {
        "name": "Tottenham Hotspur",
        "color1": Color.fromRGBO(255, 255, 255, 1),
        "color2": Color.fromRGBO(19, 34, 87, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t6@x2.png"
      }
    ],
    7: [
      {
        "name": "Leicester City",
        "color1": Color.fromRGBO(253, 190, 17, 1),
        "color2": Color.fromRGBO(0, 83, 160, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t13@x2.png"
      }
    ],
    8: [
      {
        "name": "Wolverhampton Wanderers",
        "color1": Color.fromRGBO(35, 31, 32, 1),
        "color2": Color.fromRGBO(253, 185, 19, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t39@x2.png"
      }
    ],
    9: [
      {
        "name": "Everton",
        "color1": Color.fromRGBO(255, 255, 255, 1),
        "color2": Color.fromRGBO(39, 68, 136, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t11@x2.png"
      }
    ],
    10: [
      {
        "name": "Aston Villa",
        "color1": Color.fromRGBO(149, 191, 229, 1),
        "color2": Color.fromRGBO(103, 14, 54, 1),
        "logo":
            "https://resources.premierleague.com/premierleague/badges/70/t7@x2.png"
      }
    ]
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 30),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: playerList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width / 1.15,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(left: 7, right: 7),
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  teamList[playerList[index]["teamId"]][0]["color1"],
                  teamList[playerList[index]["teamId"]][0]["color1"],
                  teamList[playerList[index]["teamId"]][0]["color1"],
                  teamList[playerList[index]["teamId"]][0]["color1"],
                  teamList[playerList[index]["teamId"]][0]["color2"],
                  teamList[playerList[index]["teamId"]][0]["color2"],
                  teamList[playerList[index]["teamId"]][0]["color2"],
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    playerList[index]["name"],
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: teamList[playerList[index]["teamId"]][0]
                            ["color2"],
                        fontSize: 45,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                CachedNetworkImage(
                  imageUrl: teamList[playerList[index]["teamId"]][0]["logo"],
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 100,
                    height: 100,
                  ),
                  placeholder: (context, url) => Center(
                      child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRIjWxC9U0X8xSIyrW6_NYLQn-v6XhfogoWA&usqp=CAU",
                    width: 100,
                    height: 100,
                  )),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                CachedNetworkImage(
                  imageUrl: playerList[index]["image"],
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 360,
                  ),
                  placeholder: (context, url) => Center(
                      child: Image.network(
                    "https://resources.premierleague.com/premierleague/photos/players/250x250/Photo-Missing.png",
                    width: MediaQuery.of(context).size.width,
                    height: 360,
                  )),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
