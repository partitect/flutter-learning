import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterApp();
}

class _CounterApp extends State<CounterApp> {
  var pageNumber = 0;
  @override
  void initState() {
    super.initState();
    print("sayfa ilk yüklendiğinde çalışır");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      backgroundColor: Colors.amberAccent,
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (pageNumber == 0)
              Center(
                  child: Text(
                "Home",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 100,
                    fontWeight: FontWeight.w700),
              )),
            if (pageNumber == 1)
              Center(
                child: Container(
                  //width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 100,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
          ],
        ),
      )),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        height: 70,
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  pageNumber = 0;
                });
              },
              child: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageNumber = 1;
                });
              },
              child: Icon(Icons.search_off_outlined),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageNumber = 2;
                });
              },
              child: Icon(Icons.add_a_photo_outlined),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageNumber = 3;
                });
              },
              child: Icon(Icons.favorite_border_outlined),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageNumber = 4;
                });
              },
              child: Icon(Icons.person_add_outlined),
            )
          ],
        ),
      ),
    );
  }
}
