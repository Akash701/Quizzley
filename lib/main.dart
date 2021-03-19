import 'package:flutter/material.dart';
import 'package:qna_app/Home.dart';
import 'package:qna_app/Science.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomeScreen(),
        'science': (context) => Science(),
      },
    );
  }
}
