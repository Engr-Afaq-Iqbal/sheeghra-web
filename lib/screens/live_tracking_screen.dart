import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class LiveTrackingScreen extends StatefulWidget {
  const LiveTrackingScreen({super.key});
  static const routeName = '/live_tracking_screen';

  @override
  State<LiveTrackingScreen> createState() => _LiveTrackingScreenState();
}

class _LiveTrackingScreenState extends State<LiveTrackingScreen> {
  TextEditingController controller1 = TextEditingController();

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
                child: Text("Live Tracking",
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
                                padding: const EdgeInsets.all(5),
                                child: Text('Driver',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                              ),
                              const Expanded(
                                flex: 1,
                                child: SizedBox(),
                              ),
                              Container(
                                width: width / 5,
                                child: TextField(
                                  controller: controller1,
                                  textInputAction: TextInputAction.next,
                                  decoration: const InputDecoration(
                                    hintText: 'Search',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.search))
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
                              Text("Map",
                                  style: Theme.of(context).textTheme.bodyText1),
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 20, top: 20),
                                width: width / 3,
                                height: width / 3.5,
                                color: Colors.grey,
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
