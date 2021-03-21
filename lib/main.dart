import 'package:flutter/material.dart';
import 'package:qna_app/Home.dart';
import 'package:qna_app/Science.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'science': (context) => Science(),
      },
    );
  }
}
