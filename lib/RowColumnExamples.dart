import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: Text("Hello Flutter")),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Floating Clicked");
            },
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.car_rental,
              color: Colors.white,
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                                child: Text("H",
                                    style: TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                            Container(
                              height: 790 / 3,
                              width: 410 / 3,
                              color: Colors.black,
                              child: Center(
                                child: Text("E",
                                    style: TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                            Container(
                              height: 790 / 3,
                              width: 410 / 3,
                              color: Colors.red,
                              child: Center(
                                child: Text("L",
                                    style: TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
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
                              color: Colors.black,
                              child: Center(
                                child: Text("L",
                                    style: TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                            Container(
                              height: 790 / 3,
                              width: 410 / 3,
                              color: Colors.red,
                              child: Center(
                                child: Text("O",
                                    style: TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
                            ),
                            Container(
                              height: 790 / 3,
                              width: 410 / 3,
                              color: Colors.black,
                              child: Center(
                                child: Text("D",
                                    style: TextStyle(
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ),
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
                                child: Center(
                                  child: Text("A",
                                      style: TextStyle(
                                          fontSize: 100,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                              Container(
                                height: 790 / 3,
                                width: 410 / 3,
                                color: Colors.black,
                                child: Center(
                                  child: Text("R",
                                      style: TextStyle(
                                          fontSize: 100,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                              Container(
                                  height: 790 / 3,
                                  width: 410 / 3,
                                  color: Colors.red,
                                  child: Center(
                                    child: Text("T",
                                        style: TextStyle(
                                            fontSize: 100,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ))
                            ]))
                  ]))))));
}
