import 'package:flutter/material.dart';

class InstagramViewExample extends StatefulWidget {
  @override
  _InstagramViewExampleState createState() => _InstagramViewExampleState();
}

class _InstagramViewExampleState extends State<InstagramViewExample> {
  var posts = [
    {
      "user": "Telat Kaya",
      "avatar":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToo_T2a0_cR0mQ54EcvqaJORPVg54gBPjSYw&usqp=CAU",
      "post": "https://via.placeholder.com/450x200",
      "height": "200",
      "desc":
          "Nulla consequat massa quis enim. Nullam quis ante. Integer tincidunt. Quisque id mi. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi."
    },
    {
      "user": "Selman Göktaş",
      "avatar":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8wPDpthUPanSp0ch2UwhxjSaWVzOarOtCVQ&usqp=CAU",
      "post": "https://via.placeholder.com/450x400",
      "height": "400",
      "desc": "Lorem Ipslum Dolor Sit Amet Sit Amet"
    },
    {
      "user": "Ali Demircan",
      "avatar":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8wPDpthUPanSp0ch2UwhxjSaWVzOarOtCVQ&usqp=CAU",
      "post": "https://via.placeholder.com/450x100",
      "height": "100",
      "desc": "Lorem Ipslum Dolor Sit Amet Sit Amet"
    },
  ];
  @override
  Widget build(BuildContext context) {
    var InstagramViewExample = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
          body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            width: InstagramViewExample,
            color: Colors.white,
            // height: 60,
            child: Column(
              children: [
                Container(
                  width: InstagramViewExample,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: InstagramViewExample * .85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: InstagramViewExample * .10,
                              margin: EdgeInsets.only(right: 1),
                              child: Icon(
                                Icons.person,
                              ),
                            ),
                            Container(
                              width: InstagramViewExample * .70,
                              child: Text(
                                posts[index]["user"],
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: InstagramViewExample * .10,
                        child: Icon(
                          Icons.menu,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: InstagramViewExample,
                  height: double.parse(posts[index]["height"]),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(posts[index]["post"]),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Container(
                  width: InstagramViewExample,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: InstagramViewExample * .3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.favorite,
                            ),
                            Icon(
                              Icons.comment,
                            ),
                            Icon(
                              Icons.send,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: InstagramViewExample * .1,
                          child: Icon(
                            Icons.add,
                          ))
                    ],
                  ),
                )
              ],
            ),
          );
        },
      )),
    );
  }
}

/*
Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            color: int.parse(students[index]['point']) > 60
                ? Colors.green
                : int.parse(students[index]['point']) == 60
                    ? Colors.yellow
                    : Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  students[index]['name'] ?? 'Ad verisi girilmemiş',
                ),
                Column(
                  children: [
                    Text(
                      students[index]['point'],
                    ),
                    Text(
                      int.parse(students[index]['point']) > 60
                          ? 'Geçti'
                          : int.parse(students[index]['point']) == 60
                              ? 'Sorunlu geçti'
                              : 'Kaldı',
                    ),
                  ],
                )
              ],
            ),
          )
*/
