import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class AppConfigurationScreen extends StatefulWidget {
  const AppConfigurationScreen({super.key});

  static const routeName = '/app_configuration_screen';

  @override
  State<AppConfigurationScreen> createState() => _AppConfigurationScreenState();
}

class _AppConfigurationScreenState extends State<AppConfigurationScreen> {
  TextEditingController usercontroller1 = TextEditingController();
  TextEditingController usercontroller2 = TextEditingController();
  TextEditingController usercontroller3 = TextEditingController();
  TextEditingController usercontroller4 = TextEditingController();
  TextEditingController usercontroller5 = TextEditingController();
  TextEditingController usercontroller6 = TextEditingController();
  TextEditingController usercontroller7 = TextEditingController();
  TextEditingController usercontroller8 = TextEditingController();
  TextEditingController usercontroller9 = TextEditingController();
  TextEditingController usercontroller10 = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    userConfig() {
      return Container(
        color: color.kWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: Text("App Configuration",
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
                              controller: usercontroller1,
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
                              controller: usercontroller1,
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
                              controller: usercontroller2,
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
                              controller: usercontroller3,
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
                          Text("Maximum Trip Range (in km)",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: usercontroller4,
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
                              controller: usercontroller5,
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
                              controller: usercontroller6,
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
                          Text("REFERAL ENABLED",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: usercontroller7,
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
                          Text("REFERAL AMOUNT",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: usercontroller8,
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
                          Text("REFERAL DESCRIPTION",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: usercontroller9,
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
                          Text("ADMIN USER ID",
                              style: Theme.of(context).textTheme.bodyText1),
                          const Expanded(flex: 1, child: SizedBox()),
                          SizedBox(
                            width: width / 4,
                            child: TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: usercontroller10,
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
              userConfig(),
            ],
          ),
        ),
      ),
    );
  }
}
