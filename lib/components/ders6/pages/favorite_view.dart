import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteViewExample extends StatefulWidget {
  @override
  _FavoriteViewExampleState createState() => _FavoriteViewExampleState();
}

class _FavoriteViewExampleState extends State<FavoriteViewExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Favorite Screen",
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
