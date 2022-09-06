import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  get currentIndex => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(66, 0, 0, 0),
            title: Text("WhatsApp Business"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(child: Text("Business tools")),
                        PopupMenuItem(child: Text("New group")),
                        PopupMenuItem(child: Text("New broadcast")),
                        PopupMenuItem(child: Text("Linked devices")),
                        PopupMenuItem(child: Text("Starred messages")),
                        PopupMenuItem(child: Text("Setting"))
                      ])
            ],
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.camera_alt_rounded,
                ),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ]),
          ),

          //TabBarView(children: [
          //   Center(
          //     child: Text("Camera"),
          //   ),
          //   Center(
          //     child: Text("chat"),
          //   ),
          //   Center(
          //     child: Text("Status"),
          //   ),
          //   Center(
          //     child: Text("Call"),
          //   )
          // ]
        ));
  }
}
