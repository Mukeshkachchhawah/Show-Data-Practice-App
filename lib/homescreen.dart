import 'package:flutter/material.dart';
import 'package:flutter_application_1/nextpage.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {}),
        title: Text("gndkljg"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(icon: Icon(Icons.email)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(icon: Icon(Icons.lock)),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NextPage()));
            },
            child: Text("Sing in")),
        TextButton(onPressed: () {}, child: Text("Sing up"))
      ]),
    );
  }
}
