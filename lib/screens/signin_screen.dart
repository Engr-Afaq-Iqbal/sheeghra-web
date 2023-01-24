import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';

import '../utils/colors.dart' as color;

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  static const routeName = '/signin_screen';

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  var screensize;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Future<bool> loginProcess() async {
      // if (!await InternetConnectionChecker().hasConnection) {
      //   Fluttertoast.showToast(
      //     msg: 'No Internet',
      //   );
      //   hideLoading();
      //   return false;
      // } else {
      //   bool result = await auth.login(emailcontroller.text);
      //   if (result == true) {
      //     hideLoading();
      return true;
      //   } else {
      //     hideLoading();
      //     return false;
      //   }
      // }
    }

    void loginUserWithEmail() async {
      if (emailcontroller.text.isEmpty) {
        Fluttertoast.showToast(
            msg: 'Email address invalid. Please enter a valid email address.');
      } else if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(emailcontroller.text)) {
        Fluttertoast.showToast(
            msg: 'Email address invalid. Please enter a valid email address.');
      } else {
        bool finalreault = await loginProcess();
        if (finalreault == true) {
          Navigator.of(context).pushReplacementNamed('/home_screen');
        }
      }
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height / 3,
            width: height / 3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ),
          Center(
            child: Container(
              width: width / 3,
              decoration: BoxDecoration(
                color: color.kWhite,
                border: Border.all(color: color.kWhite),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: color.kBlack,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 10.0,
                      spreadRadius: 2.0),
                  BoxShadow(color: color.kWhite)
                ],
              ),
              child: Stack(
                children: [
                  Wrap(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(
                            top: 5, left: 10.0, right: 10.0),
                        child: Column(
                          children: [
                            Text("Welcome",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: color.kBlack)),
                            const SizedBox(height: 10),
                            TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: emailcontroller,
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              autocorrect: true,
                              textAlign: TextAlign.center,
                              controller: passwordcontroller,
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: 'Password',
                                hintStyle: TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.white70,
                              ),
                            ),
                            const SizedBox(height: 20),
                            MaterialButton(
                              minWidth: MediaQuery.of(context).size.width / 6,
                              height:
                                  MediaQuery.of(context).size.height * 0.1 - 30,
                              color: color.kPurpleLight,
                              onPressed: () {
                                loginUserWithEmail();
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text("Forgot Password?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 16,
                                    color: Colors.red)),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
