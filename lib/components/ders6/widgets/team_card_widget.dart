import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders6/details/team_detail.dart';

class TeamCardWidget extends StatelessWidget {
  final image;
  final team;
  final point;
  const TeamCardWidget(
      {Key key,
      @required this.image,
      @required this.team,
      @required this.point})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return TeamDetail(
                    team: team,
                    image: image,
                    point: point,
                  );
                },
              ));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(image),
                  colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(.5),
                    BlendMode.darken,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              width: MediaQuery.of(context).size.width / 1.2,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    team,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
