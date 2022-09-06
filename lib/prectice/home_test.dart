import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/prectice/show_data.dart';

class HomeScreenTest extends StatefulWidget {
  const HomeScreenTest({Key? key}) : super(key: key);

  @override
  State<HomeScreenTest> createState() => _HomeScreenTestState();
}

class _HomeScreenTestState extends State<HomeScreenTest> {
  final fristNameController = TextEditingController();
  final lastNameContoroller = TextEditingController();
  final ageContoroller = TextEditingController();
  final emailContoroller = TextEditingController();
  final mobilenumberContoroller = TextEditingController();
  final addressContoroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TextFild Exmple'),
        ),
        backgroundColor: Color.fromARGB(255, 241, 235, 235),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Icon(
              Icons.person,
              size: 90,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            //  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            border: OutlineInputBorder(),
                          ),
                          controller: fristNameController),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder(),
                        ),
                        controller: lastNameContoroller,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Age', border: OutlineInputBorder()),
                        controller: ageContoroller,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                        controller: emailContoroller,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          border: OutlineInputBorder(),
                        ),
                        controller: mobilenumberContoroller,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Address',
                          border: OutlineInputBorder(),
                        ),
                        controller: addressContoroller,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      onPressed: () {
                        print(fristNameController.text);
                        print(lastNameContoroller.text);
                        print(ageContoroller.text);
                        print(emailContoroller.text);
                        print(mobilenumberContoroller.text);
                        print(addressContoroller.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_Test(
                                      age: ageContoroller.text,
                                      lastName: lastNameContoroller.text,
                                      name: fristNameController.text,
                                      email: emailContoroller.text,
                                      mobileNumber:
                                          mobilenumberContoroller.text,
                                      address: addressContoroller.text,
                                    )));
                      },
                      color: Colors.blue,
                      child: Text("Sumbit"),
                    )
                  ],
                ),
              ),
            ),
          ],
        )));
  }
}
