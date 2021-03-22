import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurvedBottomBar extends StatefulWidget {
  @override
  _CurvedBottomBarState createState() => _CurvedBottomBarState();
}

class _CurvedBottomBarState extends State<CurvedBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        //backgroundColor: Colors.blueAccent,
        height: 55.0,
        items: <Widget>[
          SvgPicture.asset(
            'assets/svg/leader.svg',
            height: 30.0,
            width: 30.0,
          ),
          SvgPicture.asset(
            'assets/svg/flower.svg',
            height: 30.0,
            width: 30.0,
          ),
          SvgPicture.asset(
            'assets/svg/idea.svg',
            height: 30.0,
            width: 30.0,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
        animationCurve: Curves.easeInOut,
        color: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        //buttonBackgroundColor: Colors.white.withOpacity(1),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(width: 0, color: Colors.blueAccent),
        ),
      ),
    );
  }
}
