import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders6/pages/favorite_view.dart';
import 'package:flutter_application_1/components/ders6/pages/football_view.dart';
import 'package:flutter_application_1/components/ders6/pages/forms_view.dart';
import 'package:flutter_application_1/components/ders6/pages/home_view.dart';
import 'package:flutter_application_1/components/ders6/pages/profile_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PageControllerView extends StatefulWidget {
  @override
  _PageControllerViewState createState() => _PageControllerViewState();
}

class _PageControllerViewState extends State<PageControllerView> {
  var bottomBarList = [
    {"cIndex": 0, "title": "Home", "icon": "home"},
    {"cIndex": 1, "title": "Forms", "icon": "popcorn"},
    {"cIndex": 2, "title": "Companies", "icon": "diamond"},
    {"cIndex": 3, "title": "Profile", "icon": "biography"},
    {"cIndex": 4, "title": "Settings", "icon": "gear"},
  ];
  List<Widget> pages = [
    HomePageScreen(),
    FormsViewExample(),
    FootballPageScreen(),
    ProfileViewExample(),
    FavoriteViewExample(),
  ];
  var currentPage = 2;
  Color _bgColor = Colors.transparent;
  double _iconSize = 30;
  double _position = -30;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Spor App"),
        ),
        body: pages[currentPage],
        bottomNavigationBar: Container(
          color: Colors.blue,
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.only(
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: bottomBarList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return AnimatedContainer(
                      transform: Matrix4.translationValues(
                        0.0,
                        index == currentPage ? _position : 0,
                        0.0,
                      ),
                      curve: Curves.bounceInOut,
                      duration: Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                        color: index == currentPage
                            ? _bgColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            currentPage = bottomBarList[index]["cIndex"];
                            _bgColor = Colors.purple;
                            _iconSize = 40;
                            _position = -30;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/${bottomBarList[index]["icon"]}.svg',
                                height: index == currentPage ? _iconSize : 20,
                                width: index == currentPage ? _iconSize : 20,
                                color: null,
                              ),
                              Text(
                                bottomBarList[index]["title"],
                                style: GoogleFonts.notoSans(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
