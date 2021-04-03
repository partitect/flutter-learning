import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileViewExample extends StatefulWidget {
  @override
  _ProfileViewExampleState createState() => _ProfileViewExampleState();
}

class _ProfileViewExampleState extends State<ProfileViewExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Profile Screen",
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
