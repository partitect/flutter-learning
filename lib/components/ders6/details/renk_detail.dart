import 'package:flutter/material.dart';

class RenkDetailWidget extends StatefulWidget {
  final color;
  RenkDetailWidget({@required this.color});
  @override
  _RenkDetailWidgetState createState() => _RenkDetailWidgetState();
}

class _RenkDetailWidgetState extends State<RenkDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 350,
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              widget.color,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
