import 'package:flutter/material.dart';

class CallsList extends StatefulWidget {
  const CallsList({super.key});

  @override
  State<CallsList> createState() => _CallsListState();
}

class _CallsListState extends State<CallsList> {
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
          subtitle: Text('Today 12:46 AM'),
          trailing: (index == 0 ? Icon(Icons.video_call) : Icon(Icons.phone)),
        );
      },
    );
  }
}
