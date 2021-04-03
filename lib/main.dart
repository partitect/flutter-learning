import 'package:flutter/material.dart';
import 'components/ders5/navigate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigateExample(),
    );
  }
}
