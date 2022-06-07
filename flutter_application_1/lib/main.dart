import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('List Tile')),
        body: ListView(
          children: const [
            ListTile(
              contentPadding: EdgeInsets.all(20),
              title: Text('Adam Fahmil'),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
              // tileColor: Colors.green,
              // dense: true,
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text('Eva Nur'),
              subtitle: Text('Halo selamat pagi...'),
              leading: CircleAvatar(),
              trailing: Text('09:00 AM'),
            ),
            Divider(color: Colors.black),
            ListTile(
              title: Text('Safira Nur'),
              subtitle: Text('Mas tolong jemput aku dong, please...'),
              leading: CircleAvatar(),
              trailing: Text('01:05 PM'),
            ),
          ],
        ),
      ),
    );
  }
}
