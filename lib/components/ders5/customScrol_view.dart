import 'dart:ui';

import 'package:flutter/material.dart';

class CustomScrolViewExample extends StatefulWidget {
  @override
  _CustomScrolViewExampleState createState() => _CustomScrolViewExampleState();
}

class _CustomScrolViewExampleState extends State<CustomScrolViewExample> {
  var posts = [
    {
      "user": "Telat Kaya",
      "avatar":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToo_T2a0_cR0mQ54EcvqaJORPVg54gBPjSYw&usqp=CAU",
      "post":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdMYZ6oh0KnH_cTORCcwO1PuPyBxDZ4TOxsg&usqp=CAU",
      "height": "200",
      "desc":
          "Nulla consequat massa quis enim. Nullam quis ante. Integer tincidunt. Quisque id mi. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi."
    },
    {
      "user": "Selman Göktaş",
      "avatar":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8wPDpthUPanSp0ch2UwhxjSaWVzOarOtCVQ&usqp=CAU",
      "post":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6-w9GepodvBt50jsK1RW4YKhiyM0mjmPjrg&usqp=CAU",
      "height": "300",
      "desc": "Lorem Ipslum Dolor Sit Amet Sit Amet"
    },
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
              title: Text("Kağıttan Hayatlar"),
              titlePadding: EdgeInsets.all(10),
              centerTitle: true,
              background: Image.network(
                "https://cdn.karar.com/news/1350628.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(posts[index]["avatar"]),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(posts[index]["user"])
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .9,
                        height: double.parse(posts[index]["height"]),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(posts[index]["post"]),
                            fit: BoxFit.contain,
                            colorFilter: ColorFilter.mode(
                              Colors.red.withOpacity(.5),
                              BlendMode.darken,
                            ),
                            
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .9,
                            child: Text(
                              posts[index]["desc"],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
    );
  }
}
