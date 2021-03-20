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
        body: Column(
          children: [
            Center(
              child: Container(
                //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //padding: EdgeInsets.all(30.0),
                width: 400,
                height: 700,
                child: Center(
                  child: Text(
                    "Hello Flutter",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 40,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                color: Colors.greenAccent,
              ),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.red,
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
      )));
}
