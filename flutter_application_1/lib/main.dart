import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Column')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 50,
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 30,
                color: Colors.blue,
              ),
              Container(
                width: 150,
                height: 90,
                color: Colors.black,
              )
            ]),
      ),
    );
  }
}
