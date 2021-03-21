import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';
import 'package:flutter_application_1/example_screen_navigate.dart';

class ExampleUi extends StatefulWidget {
  @override
  _ExampleUiState createState() => _ExampleUiState();
}

class _ExampleUiState extends State<ExampleUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colorFromHex("8DA9F8"),
        title: SizedBox(
            height: 100,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset(
                      "assets/img/snapchat.png",
                      width: 30,
                    ),
                  ),
                  Text(
                    "Inbox",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: InkWell(
                              onTap: () {
                                print("Search");
                              },
                              child: Icon(Icons.search_outlined)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        toolbarHeight: 120,
      ),
      body: ListWidget(),
      bottomNavigationBar: Container(
        height: 75,
        color: _colorFromHex("8DA9F8"),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.search_outlined,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.add_a_photo_outlined,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.favorite_outline,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 35,
            )
          ],
        ),
      ),
    );
  }
}

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}
