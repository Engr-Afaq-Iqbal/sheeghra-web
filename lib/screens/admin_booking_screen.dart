import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class AdminBookingScreen extends StatefulWidget {
  const AdminBookingScreen({super.key});
  static const routeName = '/admin_booking_screen';

  @override
  State<AdminBookingScreen> createState() => _AdminBookingScreenState();
}

class _AdminBookingScreenState extends State<AdminBookingScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

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
                child: Text("Admin Manual Booking",
                    style: Theme.of(context).textTheme.bodyText1),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: width / 2,
                          child: Column(children: [
                            Container(
                              width: width / 2.5,
                              child: TextField(
                                controller: controller1,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: 'Pickup Location',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: width / 2.5,
                              child: TextField(
                                controller: controller2,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: 'Drop Location',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: width / 2.5,
                              child: TextField(
                                controller: controller2,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: 'Select a Vehicle',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: width / 2.5,
                              child: TextField(
                                controller: controller3,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: 'User Name',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: width / 2.5,
                              child: TextField(
                                controller: controller4,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: 'User Mobile Number',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              color: color.kPurpleLight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text('Book Now',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
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
                              Container(
                                margin: const EdgeInsets.only(left: 20),
                                width: width / 3,
                                height: width / 3.5,
                                color: Colors.grey,
                              )
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
