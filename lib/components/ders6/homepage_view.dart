import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders6/widgets/card_widget.dart';
import 'details/renk_detail.dart';

class HomePageViewExample extends StatefulWidget {
  @override
  _HomePageViewExampleState createState() => _HomePageViewExampleState();
}

class _HomePageViewExampleState extends State<HomePageViewExample> {
  var colors = ["kırmızı", "mavi", "yeşil", "lila", "mor", "pembe"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return HomeCardWidget(
                text: colors[index],
                image:
                    "https://images.unsplash.com/photo-1532073150508-0c1df022bdd1?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDk5fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
              );
            }));
  }
}
