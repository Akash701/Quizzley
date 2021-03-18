import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qna_app/Character.dart';

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
          Container(
            // alignment: Alignment.topCenter,
            // width: 0.5,
            child: Text('Questions',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightBlue,
                )),
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xFF2A2B31),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
          ),
          Text("Categories"),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {});
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ('images/Science.png'),
                        label: ('MALE'),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {});
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/Science.png"),
                        label: ('MALE'),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {});
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/Science.png"),
                        label: ('MALE'),
                      ),
                    ),
                  ),
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
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {});
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/Science.png"),
                        label: ('MALE'),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {});
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/Maths.png"),
                        label: ('MALE'),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {});
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/Science.png"),
                        label: ('MALE'),
                      ),
                    ),
                  ),
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
  Category({@required this.colour, this.cardchild, this.onPress});
  final Color colour;
  final Widget cardchild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
