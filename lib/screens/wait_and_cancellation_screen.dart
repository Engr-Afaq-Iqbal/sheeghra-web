import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class WaitAndCancellationScreen extends StatefulWidget {
  const WaitAndCancellationScreen({super.key});

  static const routeName = '/wait_and_cancellation_screen';

  @override
  State<WaitAndCancellationScreen> createState() =>
      _WaitAndCancellationScreenState();
}

class _WaitAndCancellationScreenState extends State<WaitAndCancellationScreen> {
  TextEditingController drivercontroller1 = TextEditingController();
  TextEditingController drivercontroller2 = TextEditingController();
  TextEditingController drivercontroller3 = TextEditingController();
  TextEditingController drivercontroller4 = TextEditingController();
  TextEditingController drivercontroller5 = TextEditingController();
  TextEditingController drivercontroller6 = TextEditingController();
  TextEditingController drivercontroller7 = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    driverConfig() {
      return Container(
        color: color.kWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Text("Driver Configuration",
                  style: Theme.of(context).textTheme.bodyText1),
            ),
            const Divider(),
            Container(
              padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("Authentication Type",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller1,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("OTP Timer (in sec)",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller1,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("Google Map Api Key",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller2,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("Waiting Time (in sec)",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller3,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("Pickup Point Distance (in level range)",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller4,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("SOS NUMBER",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller5,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("Auth Key",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller6,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("DRIVER WAITING TIME",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: drivercontroller7,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const SizedBox(width: 20),
                        ]),
                    const Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 40),
                          Text("Manual Driver Approval",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                          ),
                          ElevatedButton(
                            child: const Text('Save'),
                            onPressed: () {},
                          ),
                          const Expanded(child: SizedBox()),
                        ]),
                  ]),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: color.kPurple,
        leading: Builder(
          builder: (context) => // Ensure Scaffold is in context
              IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  }),
        ),
        title: const Text("Sheeghra"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/signin_screen');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              driverConfig(),
            ],
          ),
        ),
      ),
    );
  }
}
