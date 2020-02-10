import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Expanded makes it so that the image tries to strech as much as possible depending on the parent widget.
        // For ex, since the parent widget is a Row, it tries to expand on the width as much as possible.
        Expanded(
          // Flex is used to determine how much space the Expanded widget should use.
          // For example, if the first expanded widget has a flex value of 3, and the second expanded widget has a flex value of 2,
          // The ratio would be a 3:2 size comparison.
          flex: 1,
          // Image.asset('images/dice2.png') is a short hand way of doing the commented code below.
          child: Image.asset('images/dice2.png'),
//          Image(
//            image: AssetImage('images/dice2.png'),
//          ),
        ),
        Expanded(
          flex: 1,
          child: Image.asset('images/dice2.png'),
        ),
      ],
    );
  }
}
