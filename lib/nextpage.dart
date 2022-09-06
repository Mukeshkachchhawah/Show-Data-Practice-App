import 'package:flutter/material.dart';
import 'package:flutter_application_1/mixScreenDemo/demopage.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gfldskgj lj"),
        actions: [
          IconButton(onPressed: showButtonSheet, icon: Icon(Icons.open_in_new)),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DemoPage()));
              },
              icon: Icon(Icons.skip_next))
        ],
      ),
      body: Center(
        child: Stepper(
          type: StepperType.horizontal,
          currentStep: currentStep,
          onStepTapped: (index) {
            setState(() => currentStep = index);
          },
          onStepContinue: () {
            if (currentStep != 2) {
              setState(() {
                currentStep++;
              });
            }
          },
          onStepCancel: () {
            if (currentStep != 0) {
              setState(() {
                currentStep--;
              });
            }
          },
          steps: [
            Step(
              isActive: currentStep >= 0,
              title: Text("step 1"),
              content: Text('Contune Step 1'),
            ),
            Step(
              isActive: currentStep >= 1,
              title: Text("step 2"),
              content: Text('Contune Step 1'),
            ),
            Step(
              isActive: currentStep >= 2,
              title: Text("step 1"),
              content: Text('Contune Step 1'),
            )
          ],
        ),
      ),
    );
  }

  void showButtonSheet() {
    showModalBottomSheet(
        enableDrag: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        context: context,
        builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("Share"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.link),
                  title: Text("Copy Link"),
                  onTap: () {},
                )
              ],
            ));
  }
}
