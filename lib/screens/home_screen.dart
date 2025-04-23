import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/tab_controller.dart';

class HomeScreen extends StatefulWidget {
  static const String id ="home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return TabsController();
  }
}
