import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/prectice/demo.dart';

class Home_Test extends StatefulWidget {
  final String name;
  final String lastName;
  final String age;
  final String email;
  final String mobileNumber;
  final String address;
  const Home_Test({
    Key? key,
    required this.age,
    required this.lastName,
    required this.name,
    required this.email,
    required this.mobileNumber,
    required this.address,
  }) : super(key: key);

  @override
  State<Home_Test> createState() => _Home_TestState();
}

class _Home_TestState extends State<Home_Test> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Show Data Screen"),
            centerTitle: true,
            // bottom: TabBar(tabs: [
            //   Tab(
            //     icon: Icon(Icons.home),
            //   ),
            //   Tab(
            //     icon: Icon(Icons.home),
            //   ),
            //   Tab(
            //     icon: Icon(Icons.home),
            //   ),
            //   Tab(
            //     icon: Icon(Icons.home),
            //   )
            // ]),
          ),
          body: ListView(children: [
            Text(
              widget.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(widget.lastName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text(widget.age,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.email,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.mobileNumber,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.address,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ]),
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Demo()));
              },
              child: Text("Skip")),
        ));
  }
}
