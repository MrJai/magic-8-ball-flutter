import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Magic8Ball(),
    ),
  ),
);

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {

  int ballNumber = 1;

  void randomizeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
              children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomizeBallNumber();
              },
              child: Image.asset(
                'images/ball$ballNumber.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
