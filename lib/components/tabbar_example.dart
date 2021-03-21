import 'package:flutter/material.dart';

class TabBarViewExample extends StatefulWidget {
  @override
  _TabBarViewExampleState createState() => _TabBarViewExampleState();
}

class _TabBarViewExampleState extends State<TabBarViewExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
              Tab(
                icon: Icon(Icons.panorama_photosphere),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text('It\'s cloudy here'),
            ),
            Center(
              child: Text('It\'s rainy here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
            Center(
              child: Text('It\'s panaroma here'),
            ),
          ],
        ),
      ),
    );
  }
}
