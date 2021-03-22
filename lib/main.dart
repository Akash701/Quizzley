import 'package:flutter/material.dart';
import 'package:qna_app/Home.dart';
import 'package:qna_app/Science_Folder/Science.dart';
import 'package:get/get.dart';
import 'package:qna_app/Mathematics/Mathematics.dart';
import 'package:qna_app/World/World.dart';
import 'package:qna_app/Language/Language.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFD3D9DB),
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'science': (context) => Science(),
        'maths': (context) => Maths(),
        'world': (context) => World(),
        'language': (context) => Language(),
      },
    );
  }
}
