import 'package:flutter/material.dart';

class CustomScrolViewExample extends StatefulWidget {
  @override
  _CustomScrolViewExampleState createState() => _CustomScrolViewExampleState();
}

class _CustomScrolViewExampleState extends State<CustomScrolViewExample> {
  var appBarField = [
    {"title": "Appbar Title", "background": ""}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            //elevation: 10, //gölge
            //forceElevated: true, //gölgeyi zorla
            //shadowColor: Colors.red, //gölge rengi
            pinned: true, //appbarın yukarı yapışma özelliği
            floating: true, //liste aşağılara geldiğinde appbarın gözükmesi
            snap: false, //liste kayarken appbarın yüksekliğini sabit tutuyor
            backgroundColor: Colors.black.withOpacity(.5),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SliverAppBar"),
              titlePadding: EdgeInsets.all(10),
              centerTitle: true,
              //background: FlutterLogo(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
                width: 100,
                height: 100,
                child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                          top: -250.0,
                          child: Card(
                            child: Image.network(
                                "https://upload.wikimedia.org/wikipedia/tr/e/e6/Ka%C4%9F%C4%B1ttan_Hayatlar.JPG"),
                          ))
                    ])),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "asdasd",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
