import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_theme.dart';

class StatusList extends StatefulWidget {
  const StatusList({super.key});

  @override
  State<StatusList> createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppTheme.whatsAppLightGreen, width: 2),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage('lib/assets/images/Batfleck.jpg'),
            ),
          ),
          title: Text('Mr. Wayne'),
          subtitle: Text('30 minutes ago'),
          //trailing: Text('12:46 AM'),
        );
      },
    );
  }
}
