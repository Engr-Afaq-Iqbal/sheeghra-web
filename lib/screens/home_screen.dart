import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;
import '../widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  cardFunction(width, color, icon, iconcolor, name, data) {
    return Container(
        width: (width / 4) - 60,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black54,
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Icon(icon, color: iconcolor)),
          ),
          title: Text(name, style: Theme.of(context).textTheme.bodyText2),
          subtitle: Text(data, style: Theme.of(context).textTheme.bodyText2),
        ));
  }

  containerFunction(width, color, icon, iconcolor, name, data) {
    return Container(
        width: (width / 2) - 40,
        height: 200,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black38,
            child: Padding(
                padding: const EdgeInsets.all(5),
                child: Icon(icon, color: iconcolor)),
          ),
          title: Text(name, style: Theme.of(context).textTheme.bodyText2),
          subtitle: Text(data, style: Theme.of(context).textTheme.bodyText2),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    int? users = 1021, drivers = 520, services = 37, totalbookings = 1260;
    int? todayEarning = 1021,
        thisWeek = 1520,
        thisMonth = 3700,
        thisYear = 12609;

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
              Text("Dashboard", style: Theme.of(context).textTheme.bodyText1),

              // this show the Booking statistics
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(bottom: 10),
                color: color.kWhite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Booking statistics",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      const Divider(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            cardFunction(
                                width,
                                color.pageContainerFirstColor,
                                Icons.people_alt,
                                color.kWhite,
                                'Users',
                                users.toString()),
                            cardFunction(
                                width,
                                color.pageContainerSecondColor,
                                Icons.person,
                                color.kWhite,
                                'Drivers',
                                drivers.toString()),
                            cardFunction(
                                width,
                                color.pageContainerThirdColor,
                                Icons.workspace_premium_outlined,
                                color.kWhite,
                                'Services',
                                services.toString()),
                            cardFunction(
                                width,
                                color.pageContainerFourthColor,
                                Icons.local_activity_sharp,
                                color.kWhite,
                                'Total Booking',
                                totalbookings.toString()),
                          ])
                    ]),
              ),

              // this show the Earning statistics
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(bottom: 10),
                color: color.kWhite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Earning statistics",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      const Divider(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            cardFunction(
                                width,
                                color.pageContainerFirstColor,
                                Icons.people_alt,
                                color.kWhite,
                                'Today',
                                todayEarning.toString()),
                            cardFunction(
                                width,
                                color.pageContainerSecondColor,
                                Icons.person,
                                color.kWhite,
                                'This Week',
                                thisWeek.toString()),
                            cardFunction(
                                width,
                                color.pageContainerThirdColor,
                                Icons.workspace_premium_outlined,
                                color.kWhite,
                                'This Month',
                                thisMonth.toString()),
                            cardFunction(
                                width,
                                color.pageContainerFourthColor,
                                Icons.local_activity_sharp,
                                color.kWhite,
                                'This Year',
                                thisYear.toString()),
                          ])
                    ]),
              ),

              // this show the Booking list & users/providers
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.only(bottom: 10),
                color: color.kWhite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("Earning statistics",
                            style: Theme.of(context).textTheme.bodyText1),
                      ),
                      const Divider(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            containerFunction(
                                width,
                                color.kPurple.withOpacity(.7),
                                Icons.people_alt,
                                color.kWhite,
                                'Today',
                                todayEarning.toString()),
                            containerFunction(
                                width,
                                color.kPurple.withOpacity(.7),
                                Icons.person,
                                color.kWhite,
                                'This Week',
                                thisWeek.toString()),
                          ])
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
