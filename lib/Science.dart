import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Science extends StatefulWidget {
  @override
  _ScienceState createState() => _ScienceState();
}

class _ScienceState extends State<Science> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Science',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Question 1/10',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Row(
                children: [
                  Icon(Icons.minimize_rounded),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
