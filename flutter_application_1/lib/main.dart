import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Widget> myList = [
    Container(
      width: 300,
      height: 100,
      color: Colors.green,
    ),
    Container(
      width: 300,
      height: 100,
      color: Colors.red,
    ),
    Container(
      width: 300,
      height: 100,
      color: Colors.blue,
    ),
    Container(
      width: 300,
      height: 100,
      color: Colors.black,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('List View')),
        body: ListView(scrollDirection: Axis.horizontal, children: myList),
      ),
    );
  }
}
