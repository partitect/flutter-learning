import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders6/pages/favorite_view.dart';
import 'package:flutter_application_1/components/ders6/pages/football_view.dart';
import 'package:flutter_application_1/components/ders6/pages/forms_view.dart';
import 'package:flutter_application_1/components/ders6/pages/home_view.dart';
import 'package:flutter_application_1/components/ders6/pages/profile_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  var currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Spor App"),
          ),
          body: pages[currentPage],
          bottomNavigationBar: Container(
            color: Colors.blue,
            width: double.infinity,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: bottomBarList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              currentPage = bottomBarList[index]["cIndex"];
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/${bottomBarList[index]["icon"]}.svg',
                                  height: 30.0,
                                  width: 30.0,
                                  color: null,
                                ),
                                Text(
                                  bottomBarList[index]["title"],
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
