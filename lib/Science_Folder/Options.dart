import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFD3D9DB),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '1 Text',
            style: TextStyle(
              color: Color(0xFFD3D9DB),
              fontSize: 16,
            ),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xFFD3D9DB),
              ),
            ),
          ),
        ],
      ),
    );
  }
}