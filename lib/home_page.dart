import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //children: [Image.asset("assets/img/gs.png")],
          children: [
            Expanded(
                child: Image.asset(
              "assets/img/gs.png",
              width: 100,
              height: 400,
              fit: BoxFit.cover,
            )),
            Expanded(
              child: Image.network(
                "https://img.fanatik.com.tr/img/78/740x418/5e8c380cae298b45f69da18c.jpg",
                width: 100,
                height: 400,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
