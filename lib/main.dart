import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_clone/screens/home_screen.dart';
import 'package:whatsapp_clone/screens/settings_screen.dart';
import 'package:whatsapp_clone/theme/app_theme.dart';

import 'package:whatsapp_clone/theme/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const WhatsAppClone(),
    ),
  );
}

class WhatsAppClone extends StatelessWidget {
  const WhatsAppClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp Clone",

      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
      },
    );
  }
}
