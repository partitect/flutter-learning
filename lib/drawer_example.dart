import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerExample extends StatefulWidget {
  @override
  _DrawerExampleState createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Example'),
      ),
      drawer: Drawer(
        child: Center(
          child: Container(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/5.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.blue),
                  child: Container(
                    child: Center(
                      child: Text(
                        'Flutter Drawer',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/3.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        blurRadius: 5,
                        offset: Offset(0, 1),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  width: 300,
                  height: 100,
                  child: Center(
                    child: Container(
                      child: Text(
                        'Flutter',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          //physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/img/1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.5),
                              blurRadius: 5,
                              offset: Offset(0, 1),
                              spreadRadius: 1)
                        ]),
                    //width: 300,
                    height: 400,
                    child: Center(
                        child: Container(
                      child: Text(
                        'Hello Flutter',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ))),
                Card(
                  child: Container(
                    color: Colors.lightBlue,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        'Hello Flutter',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue,
                  child: ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "List Tile",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.subdirectory_arrow_right_rounded,
                      color: Colors.white,
                    ),
                    subtitle: Text(
                      "Subtitle",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.hourglass_empty_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.cake_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.notifications_paused_sharp,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
