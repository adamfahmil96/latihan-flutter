import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Adam",
      "Age": 25,
      "favColor": [
        "Blue",
        "Black",
        "Amber",
        "Green",
        "White",
        "Pink",
        "Green light"
      ]
    },
    {
      "Name": "Eva",
      "Age": 24,
      "favColor": ["Red", "Black", "Green"]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('ID Apps')),
          body: ListView(
            children: myList.map((data) {
              List myFavColor = data["favColor"];
              return Card(
                margin: EdgeInsets.all(30),
                color: Colors.black.withOpacity(0),
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // avatar and ID data
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name: ${data["Name"]}'),
                              Text('Age: ${data["Age"]}')
                            ],
                          )
                        ],
                      ),
                      // favourite color
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: myFavColor.map((color) {
                            return Container(
                              color: Colors.amber,
                              margin: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 8,
                              ),
                              padding: EdgeInsets.all(10),
                              child: Text(color),
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          )),
    );
  }
}
