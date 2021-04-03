import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders6/lig_detay.dart';
import 'package:flutter_application_1/components/ders6/page/page_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageControllerView(),
    );
  }
}
