import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Example for Stateful, the variable of 'counter' will change on the UI
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Dynamic Apps')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(counter.toString(),
                style: TextStyle(
                    fontSize: 50 +
                        double.parse(counter
                            .toString()))), // the font size will change every updated on counter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (counter != 0) {
                      setState(() {
                        // re-render the UI, will build new context
                        counter--;
                      });
                    }
                    print(counter);
                  },
                  child: Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  },
                  child: Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // Example for Stateless, the variable of 'counter' did not change on the UI
//   int counter = 1;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Dynamic Apps')),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Text(counter.toString(), style: TextStyle(fontSize: 20)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     if (counter != 0) {
//                       counter--;
//                     }
//                     print(counter);
//                   },
//                   child: Icon(Icons.remove),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     counter++;
//                     print(counter);
//                   },
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
