import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/players_data.dart';
import 'package:flutter_application_1/data/teams_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';

class FootballPageScreen extends StatefulWidget {
  @override
  _FootballPageScreenState createState() => _FootballPageScreenState();
}

class _FootballPageScreenState extends State<FootballPageScreen> {
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
