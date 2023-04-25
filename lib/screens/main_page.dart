import 'package:flutter/material.dart';
import 'package:whats_app/screens/screen_camera/camera_page.dart';
import 'package:whats_app/screens/widget/menu.dart';

import 'screen_call/call_page.dart';
import 'screen_camera/camera_page.dart';
import 'screen_chat/chat_page.dart';
import 'screen_status/status_page.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> sd = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          key: sd,
          appBar: AppBar(
            actions: [
              Container(width: 120, child: TextFormField()),
              Icon(Icons.search),

              //IconButton(
              //   onPressed: () {
              //   Post("title", "body");
              //},
              //icon: Icon(Icons.search)),

              IconButton(
                  onPressed: () {
                    sd.currentState?.openEndDrawer();
                  },
                  icon: Icon(Icons.menu)),
            ],
            backgroundColor: Colors.black.withOpacity(.7),
            centerTitle: true,
            title: Text("MahmoudApp"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.chat_sharp),
                text: "chat",
              ),
              Tab(
                icon: Icon(Icons.account_circle_sharp),
                text: "status",
              ),
              Tab(
                icon: Icon(Icons.call),
                text: "call",
              ),
              Icon(Icons.camera_alt_sharp),
            ]),
          ),
          endDrawer: Drawer(
            child: Menu()
          ),
          body: TabBarView(
            children: [
              ChatPage(),
              StatusPage(),
              CallPage(),
              Camera(),
            ],
          ),
        ));
  }
}
