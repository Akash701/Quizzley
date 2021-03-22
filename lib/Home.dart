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
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.all(20),
              child: Text('Fema',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white60,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            height: 300,
            decoration: BoxDecoration(
              color: Color(0xFF2A2B31),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                        setState(() {
                          Navigator.pushNamed(context, 'science');
                        });
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ('images/Science.png'),
                        label: ('Science'),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // ),
                  Expanded(
                    child: Category(
                      onPress: () {
                        setState(() {
                          Navigator.pushNamed(context, 'maths');
                        });
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/Maths.png"),
                        label: ('Mathematics'),
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
                        setState(() {
                          Navigator.pushNamed(context, 'world');
                        });
                      },
                      colour: Colors.white,
                      cardchild: Character(
                        image: ("images/World.png"),
                        label: ('World'),
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
                        image: ("images/Language.png"),
                        label: ('Language'),
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
