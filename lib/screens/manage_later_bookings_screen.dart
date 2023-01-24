import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class ManageLaterBookingsScreen extends StatefulWidget {
  const ManageLaterBookingsScreen({super.key});
  static const routeName = '/manage_later_bookings_screen';

  @override
  State<ManageLaterBookingsScreen> createState() =>
      _ManageLaterBookingsScreenState();
}

class _ManageLaterBookingsScreenState extends State<ManageLaterBookingsScreen> {
  TextEditingController searchcontroller = TextEditingController();

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
                child: Text("Manage Later Bookings",
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
                    SizedBox(
                      width: width / 8,
                      child: TextField(
                        controller: searchcontroller,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Search',
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Reset',
                          style: Theme.of(context).textTheme.bodyText1),
                    ),
                    const Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                  ]),
                ]),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: width / 20,
                          child: Text("S.No",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 15,
                          child: Text("Booking Id",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 7,
                          child: Text("From",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 7,
                          child: Text("To",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 15,
                          child: Text("Estimation",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 15,
                          child: Text("Total",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 12,
                          child: Text("Date",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 6,
                          child: Text("Status",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 6,
                          child: Text("View",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                    ]),
              ),
              const Divider(),
              // Padding(
              //   padding: const EdgeInsets.all(8),
              //   child: ListView.builder(
              //     itemCount: 2,
              //     itemBuilder: (_, i) => Column(
              //       children: [
              //         // UserProductItem(
              //         //   productsData.items[i].id,
              //         //   productsData.items[i].title,
              //         // ),
              //         const Divider(),
              //       ],
              //     ),
              //   ),
              // ),
            ]),
          ),
        ],
      ),
    );
  }
}
