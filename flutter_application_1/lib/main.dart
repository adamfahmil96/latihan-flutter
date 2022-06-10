import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Widget')),
        body: Center(
            child: Container(
          width: 350,
          height: 500,
          color: Colors.amber,
          child: Image.asset('images/Untitled.png'),
          // child: Image(
          //   // image: AssetImage('images/Untitled.png') // Image from Asset
          //   image: NetworkImage(
          //       'https://picsum.photos/200/300'), // Image from Network
          //   fit: BoxFit.cover,
          // ),
        )),
      ),
    );
  }
}
