import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  var stackIndex = 0;
  var positioned = Alignment.bottomCenter;
  changePosition(Alignment newPosition) {
    setState(() {
      positioned = newPosition;
    });
  }

  changeStackIndex(stck) {
    setState(() {
      stackIndex = stck;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(bottomNaviIndex);
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(context),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: IndexedStack(
            index: stackIndex,
            alignment: positioned,
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
                    image: AssetImage("assets/img/1.jpeg"),
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
                    image: AssetImage("assets/img/4.jpeg"),
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
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.green,
        child: Container(
          height: 50.0,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: IconButton(
                        icon: const Icon(Icons.face_outlined),
                        tooltip: 'Increase volume by 10',
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            changePosition(Alignment.topLeft);
                          });
                        },
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: const Icon(Icons.batch_prediction_outlined),
                        tooltip: 'Increase volume by 10',
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            changeStackIndex(0);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: IconButton(
                        icon: const Icon(Icons.lightbulb_outline),
                        tooltip: 'Increase volume by 10',
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            changeStackIndex(1);
                          });
                        },
                      ),
                    ),
                    Container(
                      child: IconButton(
                        icon: const Icon(Icons.bubble_chart_outlined),
                        tooltip: 'Increase volume by 10',
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            changeStackIndex(2);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          changePosition(Alignment.bottomCenter);
        }),
        tooltip: 'Increment Counter',
        child: SvgPicture.asset(
          'assets/svg/logononcirclegreen.svg',
          height: 50.0,
          width: 50.0,
          color: Colors.white,
          allowDrawingOutsideViewBox: true,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
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
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
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
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      brightness: Brightness.dark,
      title: Text("Stack Example"),
      shadowColor: Colors.red,
      backgroundColor: Colors.green,
    );
  }
}
