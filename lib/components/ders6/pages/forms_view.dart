import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormsViewExample extends StatefulWidget {
  @override
  _FormsViewExampleState createState() => _FormsViewExampleState();
}

class _FormsViewExampleState extends State<FormsViewExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Forms Screen",
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
