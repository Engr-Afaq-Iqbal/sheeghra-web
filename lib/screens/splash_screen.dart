import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/colors.dart' as color;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/signin_screen');
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: color.kPurpleLight,
        ),
        height: height,
        width: width,
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: height / 2,
            width: height / 2,
          ),
        ),
      ),
    );
  }
}
