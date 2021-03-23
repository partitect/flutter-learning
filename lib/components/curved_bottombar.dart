import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_application_1/components/bottom_screens/screen_1.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../example_screen_navigate.dart';
import 'bottom_screens/screen_2.dart';
import 'bottom_screens/screen_3.dart';

class CurvedBottomBar extends StatefulWidget {
  @override
  _CurvedBottomBarState createState() => _CurvedBottomBarState();
}

class _CurvedBottomBarState extends State<CurvedBottomBar> {
  //State class
  int selectedIdx = 0;

  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0.0,
        title: Transform(
          // you can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(15.0, 0.0, 0.0),
          child: Text(
            selectedIdx == 0
                ? "Landscape"
                : selectedIdx == 1
                    ? "Fashion"
                    : "Animals",
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
        shadowColor: Colors.black54,
        brightness: Brightness.dark,
      ),
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        height: 60.0,
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
        onTap: (idx) => setState(() {
          selectedIdx = idx;
        }),
        animationCurve: Curves.easeInOut,
        color: Colors.blueAccent,
        animationDuration: Duration(milliseconds: 300),
        buttonBackgroundColor: Colors.white.withOpacity(1),
        backgroundColor: Colors.white.withOpacity(0),
      ),
      body: IndexedStack(
        index: selectedIdx,
        children: [
          Screen1(),
          Screen2(),
          Screen3(),
        ],
      ),
    );
  }
}
