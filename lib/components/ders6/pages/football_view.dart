import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FootballPageScreen extends StatefulWidget {
  @override
  _FootballPageScreenState createState() => _FootballPageScreenState();
}

class _FootballPageScreenState extends State<FootballPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Companies Screen",
          style: GoogleFonts.notoSans(
            textStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
