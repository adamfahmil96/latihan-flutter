import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Extract Widget')),
        // body: ListView( // Using Manual ListView
        //   children: [
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/1005/200/300',
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/1003/200/300',
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/1015/200/300',
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //     ChatItem(
        //       imageUrl: 'https://picsum.photos/id/1025/200/300',
        //       title: faker.person.name(),
        //       subtitle: faker.lorem.sentence(),
        //     ),
        //   ],
        // ),
        body: ListView.builder(
            // Geneate 30 random chats using ListView Builder
            itemCount: 30,
            itemBuilder: (context, index) {
              return ChatItem(
                  imageUrl: 'https://picsum.photos/id/$index/200/300',
                  title: faker.person.name(),
                  subtitle: faker.lorem.sentence());
            }),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text('10:00 PM'),
    );
  }
}
