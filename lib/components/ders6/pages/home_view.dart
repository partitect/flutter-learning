import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Adınızı Giriniz",
                  border: OutlineInputBorder(),
                ),
                maxLength: 20,
                maxLines: 4,
                onChanged: (String val) {
                  setState(() {
                    text = val;
                  });
                },
              ),
              Text('Girilen Metin $text')
            ],
          ),
        ),
      ),
    );
  }
}
