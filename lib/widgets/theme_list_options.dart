import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/theme/theme_provider.dart';

class ThemeListOptions extends StatefulWidget {
  const ThemeListOptions({super.key});

  @override
  State<ThemeListOptions> createState() => _ThemeListOptionsState();
}

class _ThemeListOptionsState extends State<ThemeListOptions> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    
    return ListView(
      
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            child: Text(
              'Theme',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color:
                    Theme.of(context).colorScheme.primary, 
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          RadioListTile<ThemeMode>(
            title: const Text('Light'),
            value: ThemeMode.light,
            groupValue: themeProvider.themeMode,
            onChanged: (ThemeMode? value) {
              if (value != null) {
                themeProvider.setThemeMode(value);
              }
            },

            activeColor: Theme.of(context).colorScheme.secondary,
            secondary: const Icon(Icons.wb_sunny),

            tileColor: Theme.of(context).listTileTheme.tileColor,
          ),

          RadioListTile<ThemeMode>(
            title: const Text('Dark'),
            value: ThemeMode.dark,
            groupValue: themeProvider.themeMode,
            onChanged: (ThemeMode? value) {
              if (value != null) {
                themeProvider.setThemeMode(value);
              }
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            secondary: const Icon(Icons.nightlight_round),
            tileColor: Theme.of(context).listTileTheme.tileColor,
          ),

          RadioListTile<ThemeMode>(
            title: const Text('System Default'),
            value: ThemeMode.system,
            groupValue: themeProvider.themeMode,
            onChanged: (ThemeMode? value) {
              if (value != null) {
                themeProvider.setThemeMode(value);
              }
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            secondary: const Icon(Icons.settings_brightness),
            tileColor: Theme.of(context).listTileTheme.tileColor,
          ),
        ],
      
    );
  }
}