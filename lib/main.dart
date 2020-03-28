import 'package:flutter/material.dart';

void main() => runApp(
      EightBall(),
    );

class EightBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
        ),
      ),
    );
  }
}
