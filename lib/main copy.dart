import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Test"),
            ),
            body: Container(
              width: 420,
              height: 850,
              child: (Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 790 / 3,
                      width: 420,
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              "Galatasaray",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow),
                            )),
                          ),
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "Beşiktaş",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                          ),
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.yellow,
                            child: Center(
                                child: Text(
                              "Fenerbahçe",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                          ),
                        ],
                      )),
                  Container(
                      height: 790 / 3,
                      width: 420,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.orange,
                            child: Center(
                                child: Text(
                              "Başakşehir",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            )),
                          ),
                          Container(
                              height: 790 / 3,
                              width: 410 / 3,
                              child: Image(
                                  image: AssetImage("assets/img/gs.png"))),
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.black,
                          ),
                        ],
                      )),
                  Container(
                      height: 790 / 3,
                      width: 420,
                      color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.red,
                          ),
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.black,
                          ),
                          Container(
                            height: 790 / 3,
                            width: 410 / 3,
                            color: Colors.red,
                          ),
                        ],
                      ))
                ],
              )),
            ))),
  );
}
