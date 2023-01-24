import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../screens/splash_screen.dart';
import '../screens/signin_screen.dart';
import '../screens/home_screen.dart';
import '../screens/logo_management_screen.dart';
import '../screens/manage_drivers_screen.dart';
import '../screens/manage_customers_screen.dart';
import '../screens/manage_bookings_screen.dart';
import '../screens/manage_later_bookings_screen.dart';
import '../screens/vehicle_screen.dart';
import '../screens/price_per_km_setup_screen.dart';
import '../screens/wait_and_cancellation_screen.dart';
import '../screens/push_notification_screen.dart';
import '../screens/live_tracking_screen.dart';
import '../screens/app_configuration_screen.dart';
import '../screens/app_slider_screen.dart';
import '../screens/admin_booking_screen.dart';
import '../screens/review_management_screen.dart';
import '../screens/promo_code_screen.dart';
import '../screens/create_pass_screen.dart';
import '../screens/static_pages_screen.dart';
import '../screens/localization_screen.dart';
import '../screens/withdraw_request_screen.dart';

import '../utils/colors.dart' as color;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  bool? isLogin = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialColor myColor = MaterialColor(0xFF631795, <int, Color>{
      50: color.kPurple,
      100: color.kPurple,
      200: color.kPurple,
      300: color.kPurple,
      400: color.kPurple,
      500: color.kPurple,
      600: color.kPurple,
      700: color.kPurple,
      800: color.kPurple,
      900: color.kPurple,
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: myColor,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
                fontFamily: 'OpenSans', fontSize: 16, color: color.kBlack),
            bodyText2: TextStyle(
                fontFamily: 'OpenSans', fontSize: 16, color: color.kWhite)),
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: color.kWhite)),
      ),
      home: HomeScreen(),
      routes: {
        '/signin_screen': (ctx) => const SigninScreen(),
        '/home_screen': (ctx) => const HomeScreen(),
        '/logo_management_screen': (ctx) => const LogoManagementScreen(),
        '/manage_drivers_screen': (ctx) => const ManageDriversScreen(),
        '/manage_customers_screen': (ctx) => const ManageCustomersScreen(),
        '/manage_bookings_screen': (ctx) => const ManageBookingsScreen(),
        '/manage_later_bookings_screen': (ctx) =>
            const ManageLaterBookingsScreen(),
        '/vehicle_screen': (ctx) => const VehicleScreen(),
        '/price_per_km_setup_screen': (ctx) => const PricePerKMSetupScreen(),
        '/wait_and_cancellation_screen': (ctx) =>
            const WaitAndCancellationScreen(),
        '/push_notification_screen': (ctx) => const PushNotificationScreen(),
        '/live_tracking_screen': (ctx) => const LiveTrackingScreen(),
        '/app_configuration_screen': (ctx) => const AppConfigurationScreen(),
        '/app_slider_screen': (ctx) => const AppSliderScreen(),
        '/admin_booking_screen': (ctx) => const AdminBookingScreen(),
        '/review_management_screen': (ctx) => const ReviewManagementScreen(),
        '/promo_code_screen': (ctx) => const PromoCodeScreen(),
        '/create_pass_screen': (ctx) => const CreatePassScreen(),
        '/static_pages_screen': (ctx) => const StaticPagesScreen(),
        '/localization_screen': (ctx) => const LocalizationScreen(),
        '/withdraw_request_screen': (ctx) => const WithdrawRequestScreen(),
      },
    );
  }
}
