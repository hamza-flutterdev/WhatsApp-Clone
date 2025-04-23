import 'package:flutter/material.dart';

import 'package:whatsapp_clone/widgets/theme_list.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'settings_screen';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeList();
  }
}
