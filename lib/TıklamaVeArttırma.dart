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
  var number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Counter App")),
        backgroundColor: Colors.amberAccent,
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                "$number",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 100,
                    fontWeight: FontWeight.w700),
              )),
              InkWell(
                onTap: () {
                  setState(() {
                    number++;
                  });
                  print("Sayı Arttırıldı Yeni Sayı $number");
                },
                onLongPress: () {
                  print("uzun basıldı");
                },
                child: Center(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  //width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Tıkla",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
              ),
            ],
          ),
        )));
  }
}
