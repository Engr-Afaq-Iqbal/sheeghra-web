import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AppBar(
              title: const Text('Admin Panel'),
              automaticallyImplyLeading: false,
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.miscellaneous_services),
              title: const Text('Logo Management'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/logo_management_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/home_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.manage_accounts),
              title: const Text('Manage Drivers'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/manage_drivers_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Manage Customers'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/manage_customers_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.drive_eta_outlined),
              title: const Text('Bookings'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/manage_bookings_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Ride Later Bookings'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/manage_later_bookings_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.car_repair_outlined),
              title: const Text('Vehicle'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/vehicle_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.car_crash_outlined),
              title: const Text('Price Per KM Setup'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/price_per_km_setup_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt_long),
              title: const Text('Wait Timer & Cancellation Charges Setup'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/wait_and_cancellation_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Push Notification'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/push_notification_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.location_on_outlined),
              title: const Text('Live Tracking'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/live_tracking_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('App Configuration'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/app_configuration_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.sync_outlined),
              title: const Text('App Slider Image Setup'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/app_slider_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Admin Manual Booking'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/admin_booking_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.reviews_outlined),
              title: const Text('Review Management'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/review_management_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.flourescent_rounded),
              title: const Text('Promo Code'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/promo_code_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.create_outlined),
              title: const Text('Create Pass'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/create_pass_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.pageview),
              title: const Text('Static Pages'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/static_pages_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_activity_outlined),
              title: const Text('Localization'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/localization_screen');
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt_rounded),
              title: const Text('Withdrawl Request'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/withdraw_request_screen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
