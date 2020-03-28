import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Ask Me Anything',
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
//                begin: Alignment.topRight,
//                end: Alignment.bottomLeft,
                radius: 1,
                colors: [Colors.pink, Colors.lightBlueAccent]),
          ),
          child: EightBall(),
        ),
      ),
    ),
  );
}

class EightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BallPage();
  }
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumer = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: FlatButton(
          onPressed: () => setState(() {
            ballNumer = Random().nextInt(5) + 1;
            print('I got clicked $ballNumer');
          }),
          child: Image.asset('images/ball$ballNumer.png'),
        ),
      ),
    );
  }
}
