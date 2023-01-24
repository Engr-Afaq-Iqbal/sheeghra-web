import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class PricePerKMSetupScreen extends StatefulWidget {
  const PricePerKMSetupScreen({super.key});
  static const routeName = '/price_per_km_setup_screen';

  @override
  State<PricePerKMSetupScreen> createState() => _PricePerKMSetupScreenState();
}

class _PricePerKMSetupScreenState extends State<PricePerKMSetupScreen> {
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
                child: Text("Price Per KM Setup",
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
                        child: Text('Add',
                            style: Theme.of(context).textTheme.bodyText2),
                      ),
                    )
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
                          width: width / 7,
                          child: Text("Ride Type",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 7,
                          child: Text("Passive Icon",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 7,
                          child: Text("Active Icon",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 11,
                          child: Text("BaseCharge",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 11,
                          child: Text("Price Per(KM)",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 10,
                          child: Text("Status",
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.bodyText1)),
                      SizedBox(
                          width: width / 6,
                          child: Text("Action",
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
