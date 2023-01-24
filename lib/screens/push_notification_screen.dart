import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class PushNotificationScreen extends StatefulWidget {
  const PushNotificationScreen({super.key});
  static const routeName = '/push_notification_screen';

  @override
  State<PushNotificationScreen> createState() => _PushNotificationScreenState();
}

class _PushNotificationScreenState extends State<PushNotificationScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.only(bottom: 10),
            color: color.kWhite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: Text("Push Notification",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Container(
                      color: color.kPurpleLight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Refresh',
                            style: Theme.of(context).textTheme.bodyText2),
                      ),
                    ),
                  ]),
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: width / 2,
                          child: Column(children: [
                            Row(children: [
                              Container(
                                color: color.kPurpleLight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text('User',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Driver',
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ),
                            ]),
                            Row(children: [
                              const Expanded(
                                flex: 1,
                                child: SizedBox(),
                              ),
                              Text('Select All',
                                  style: Theme.of(context).textTheme.bodyText1),
                              Checkbox(
                                value: _isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isChecked = value!;
                                  });
                                },
                              )
                            ]),
                            Container(
                              height: height / 1.6,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: ListView.builder(
                                  itemCount: 2,
                                  itemBuilder: (_, i) => Container(
                                      width: (width / 2) - 30,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: color.kPurpleLight
                                              .withOpacity(0.8),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          backgroundColor: Colors.black54,
                                          child: Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: Icon(Icons.person,
                                                  color: color.kWhite)),
                                        ),
                                        title: Text('name',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2),
                                        subtitle: Text('data',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText2),
                                        trailing: Checkbox(
                                          value: _isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {});
                                          },
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ])),
                      const Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      SizedBox(
                        width: width / 2.5,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Push Message",
                                  style: Theme.of(context).textTheme.bodyText1),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 20),
                                width: width / 3,
                                child: TextField(
                                  controller: controller1,
                                  textInputAction: TextInputAction.next,
                                  decoration: const InputDecoration(
                                    hintText: 'Title',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 20),
                                width: width / 3,
                                child: TextField(
                                  controller: controller2,
                                  textInputAction: TextInputAction.next,
                                  decoration: const InputDecoration(
                                    hintText: 'Body',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(left: 20, top: 20),
                                  color: color.kPurpleLight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text('Send',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
