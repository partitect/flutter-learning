import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackViewExample extends StatefulWidget {
  @override
  _StackViewExampleState createState() => _StackViewExampleState();
}

class _StackViewExampleState extends State<StackViewExample> {
  final List<String> entries = <String>[
    'A',
    'B',
    'C',
    'D',
    "E",
    "F",
    "G",
    "H",
    "I",
    "J"
  ];
  var bottomNaviIndex = 0;
  @override
  Widget build(BuildContext context) {
    print(bottomNaviIndex);
    return Scaffold(
        appBar: AppBar(
          title: Text("Stack Example"),
          shadowColor: Colors.red,
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          child: Container(
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/5.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.blue,
                  ),
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
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.teal,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.black.withOpacity(.2),
                      ),
                      padding: EdgeInsets.zero,
                      itemCount: entries.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(0),
                        child: ListTile(
                          title: Text(
                            "List Tile ${entries[index]}",
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Stack(
              alignment: bottomNaviIndex == 0
                  ? Alignment.bottomCenter
                  : bottomNaviIndex == 1
                      ? Alignment.bottomLeft
                      : bottomNaviIndex == 2
                          ? Alignment.topCenter
                          : bottomNaviIndex == 3
                              ? Alignment.topLeft
                              : Alignment.bottomRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
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
                    image: DecorationImage(
                      image: AssetImage("assets/img/5.jpeg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.red.withOpacity(.5),
                        BlendMode.colorBurn,
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 2.5,
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
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
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
                    image: DecorationImage(
                      image: AssetImage("assets/img/3.jpeg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.red.withOpacity(.5),
                        BlendMode.colorBurn,
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Center(child: Text("TeKa")),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
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
                    image: DecorationImage(
                      image: AssetImage("assets/img/2.jpeg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.red.withOpacity(.5),
                        BlendMode.colorBurn,
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Center(
                    child: Text(
                      'Stack Example',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 70,
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      bottomNaviIndex = 0;
                    });
                  },
                  child: Icon(
                    Icons.face_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      bottomNaviIndex = 1;
                    });
                  },
                  child: Icon(
                    Icons.lightbulb_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, top: 8),
                transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                  border:
                      Border.all(width: 3.0, color: const Color(0xFFFFFFFF)),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      bottomNaviIndex = 2;
                    });
                  },
                  child: Icon(
                    Icons.local_fire_department_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      bottomNaviIndex = 3;
                    });
                  },
                  child: Icon(
                    Icons.batch_prediction_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      bottomNaviIndex = 4;
                    });
                  },
                  child: Icon(
                    Icons.bubble_chart_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
