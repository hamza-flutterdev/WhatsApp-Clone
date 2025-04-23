import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/screens/settings_screen.dart';

class HomeSceenPopUpMenu extends StatelessWidget {
  const HomeSceenPopUpMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),

      onSelected: (value) {
        if (value == '1') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('This feature has not been implemented yet.'),
              duration: Duration(seconds: 2),
            ),
          );
        }
        if (value == '2') {
          Navigator.pushNamed(context, SettingsScreen.id);
        } else if (value == '3') {
          SystemNavigator.pop();
        }
      },
      itemBuilder:
          (context) => const [
            PopupMenuItem(value: '1', child: Text('New Group')),
            PopupMenuItem(value: '2', child: Text('Settings')),
            PopupMenuItem(value: '3', child: Text('Logout')),
          ],
    );
  }
}
