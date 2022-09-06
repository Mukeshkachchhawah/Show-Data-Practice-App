import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List View "),
        ),
        // List View Exmple Code
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.south_america),
                trailing: Icon(Icons.arrow_circle_right),
                title: Text('Hllor Word #$index'),
              );
            }));
  }
}
