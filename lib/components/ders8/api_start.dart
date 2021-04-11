import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiStartedExample extends StatefulWidget {
  @override
  _ApiStartedExampleState createState() => _ApiStartedExampleState();
}

class _ApiStartedExampleState extends State<ApiStartedExample> {
  var title;
  var imageUrl;
  var thumbnailUrl;

  var isLoading = true;
  getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    var response = await http.get(url);
    var albums = json.decode(response.body);

    setState(() {
      title = albums[0]["title"];
      imageUrl = albums[0]["url"];
      thumbnailUrl = albums[0]["thumbnailUrl"];

      isLoading = false;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Api Started",
        ),
      ),
      body: Column(
        children: [
          isLoading == false
              ? Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    backgroundBlendMode: BlendMode.screen,
                    color: Colors.brown,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              : Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                )
        ],
      ),
    );
  }
}
