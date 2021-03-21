import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/stack_example.dart';
import 'package:flutter_application_1/stack_example.dart';
import 'drawer_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackViewExample(),
    );
  }
}

//1 => Bottom App Bar 5 Icon olsun. Iconların her biri bir containeri aktif etsin ve containerler bir image a sahip olsun
//2=> Drawer olsun drawer header kısmına kendi containerinizi yerleştirin
//3=> Stack olsun 3 Resmi alt alta gösterelim, resimler üst üste binecek ve üzerilerinden taşacak
