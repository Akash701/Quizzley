import 'package:flutter/material.dart';

class Character extends StatelessWidget {
  Character({this.image, this.label});
  final String image;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10,
        ),
        Image.asset(
          image,
          height: 100,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
