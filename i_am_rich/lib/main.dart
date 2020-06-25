import 'package:flutter/material.dart';

//the main fn is the starting point for all our flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('I Am Rich'),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: Center(
            child: Image(image: AssetImage('images/diamond.png')),
//              image: NetworkImage(
//                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
//            ),
          )),
    ),
  );
}
//
