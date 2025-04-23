import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('lib/assets/images/Batfleck.jpg'),
          ),
          title: Text('Mr. Wayne'),
          subtitle: Text('I am whatever Gotham needs me to be!'),
          trailing: Text('12:46 AM'),
        );
      },
    );
  }
}
