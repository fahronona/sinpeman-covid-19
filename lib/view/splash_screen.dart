import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/view/main_page.dart';

import 'botto_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const BottomNavBar()),
          (Route<dynamic> route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: 250, width: 250, child: Image.asset("assets/logo.png")),
      ),
    );
  }
}
