import 'package:flutter/material.dart';
import 'components/curved_bottombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurvedBottomBar(),
    );
  }
}

//1 => Bottom App Bar 5 Icon olsun. Iconların her biri bir containeri aktif etsin ve containerler bir image a sahip olsun
//2=> Drawer olsun drawer header kısmına kendi containerinizi yerleştirin
//3=> Stack olsun 3 Resmi alt alta gösterelim, resimler üst üste binecek ve üzerilerinden taşacak
