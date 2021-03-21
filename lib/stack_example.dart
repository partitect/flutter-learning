import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackPageViee extends StatefulWidget {
  @override
  _StackPageVieeState createState() => _StackPageVieeState();
}

class _StackPageVieeState extends State<StackPageViee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.brown,
                image: DecorationImage(
                  image: AssetImage("assets/img/5.jpeg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(.5),
                    BlendMode.colorBurn,
                  ),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(child: Text("TeKa")),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              width: 300,
              height: 100,
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
            )
          ],
        ),
      ),
    );
  }
}
