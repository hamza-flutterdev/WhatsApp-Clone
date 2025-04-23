import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/calls_list.dart';
import 'package:whatsapp_clone/widgets/camera.dart';

import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/home_sceen_pop_up_menu.dart';
import 'package:whatsapp_clone/widgets/status_list.dart';

class TabsController extends StatefulWidget {
  const TabsController({super.key});

  @override
  State<TabsController> createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 10),
            HomeSceenPopUpMenu(),
            SizedBox(width: 10),
          ],
        ),

        body: TabBarView(
          children: [Camera(), ChatList(), StatusList(), CallsList()],
        ),
      ),
    );
  }
}
