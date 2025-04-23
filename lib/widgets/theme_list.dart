import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/theme_list_options.dart';

class ThemeList extends StatefulWidget {
  const ThemeList({super.key});

  @override
  State<ThemeList> createState() => _ThemeListState();
}

class _ThemeListState extends State<ThemeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),

        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
      ),
      body: ThemeListOptions(),
    );
  }
}
