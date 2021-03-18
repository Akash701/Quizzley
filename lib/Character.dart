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
        Image.asset(
          image,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          // style: ,
        ),
      ],
    );
  }
}
