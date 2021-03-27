import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders4/staggared_grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaggaredGridExample(),
    );
  }
}
