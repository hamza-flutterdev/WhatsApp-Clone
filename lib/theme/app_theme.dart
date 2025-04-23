import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/app_fonts.dart';

class AppTheme {
  static const Color whatsAppGreen = Colors.teal;
  static const Color whatsAppLightGreen = Color(0xFF25D366);
  static const Color whatsAppBackground = Color(0xFFECE5DD);
  static const Color chatBackground = Color(0xFFFFFFFF);

  static const Color darkAppBar = Color(0xFF1F2C34);
  static const Color darkBackground = Color(0xFF121B22);
  static const Color darkChatBackground = Color(0xFF0B141A);

  static ThemeData lightTheme = ThemeData(
    primaryColor: whatsAppGreen,
    scaffoldBackgroundColor: whatsAppBackground,

    appBarTheme: AppBarTheme(
      backgroundColor: whatsAppGreen,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: whatsAppLightGreen,
      foregroundColor: Colors.white,
    ),

    textTheme: TextTheme(
      bodyLarge: AppFonts.bodyLargeLight,
      bodyMedium: AppFonts.bodyMediumLight,
      titleLarge: AppFonts.titleLargeLight,
    ),

    tabBarTheme: TabBarTheme(
      unselectedLabelColor: whatsAppBackground,
      labelColor: whatsAppBackground,
      indicatorColor: whatsAppBackground,
    ),

    listTileTheme: ListTileThemeData(
      textColor: Colors.black,
      subtitleTextStyle: TextStyle(color: Colors.black87),
      iconColor: Colors.black87,
    ),

    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: whatsAppLightGreen,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkBackground,
    primaryColor: whatsAppGreen,

    appBarTheme: const AppBarTheme(
      backgroundColor: darkAppBar,
      foregroundColor: Colors.white,
      elevation: 0,
    ),

    textTheme: TextTheme(
      bodyLarge: AppFonts.bodyLargeDark,
      bodyMedium: AppFonts.bodyMediumDark,
      titleLarge: AppFonts.titleLargeDark,
    ),

    tabBarTheme: TabBarTheme(
      unselectedLabelColor: whatsAppBackground,
      labelColor: whatsAppBackground,
      indicatorColor: whatsAppBackground,
    ),

    listTileTheme: ListTileThemeData(
      textColor: Colors.white,
      subtitleTextStyle: TextStyle(color: Colors.white70),
      iconColor: Colors.white70,
    ),

    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: whatsAppLightGreen,
    ),
  );
}
