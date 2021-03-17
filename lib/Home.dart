import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD3D9DB),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text('Questions',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlue,
                  )),
              decoration: BoxDecoration(
                color: Color(0xFF2A2B31),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
            ),
          ),
          Text("Categories"),
          Column(
            children: [
              Row(
                children: [
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Category(),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Category(),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Category(),
                  // SizedBox(
                  //   width: 10,
                  // ),
                ],
              ),
              Row(
                children: [
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Category(),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Category(),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Category(),
                  // SizedBox(
                  //   width: 10,
                  // ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Container(
          child: Text(
            '8.2',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        ),
      ),
    );
  }
}
