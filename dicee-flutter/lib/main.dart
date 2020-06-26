import 'package:flutter/material.dart';
import 'dart:math';

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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdiceno = 1;
  int rightdiceno = 1;

  void changeDiceFace() {
    setState(() {
      //leftdiceno = 6;
      leftdiceno = Random().nextInt(6) + 1;
      rightdiceno = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                //print('left butoon got prsees');
                changeDiceFace();
              },
              child: Image.asset(
                ('images/dice$leftdiceno.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                //print('right got pressed');
                changeDiceFace();
              },
              child: Image(
                image: AssetImage('images/dice$rightdiceno.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
