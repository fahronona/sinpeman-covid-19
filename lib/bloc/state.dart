import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/view/main_page.dart';
import 'package:sinpeman_covid_19/view/materi_page.dart';

abstract class NavbarState {}

class ShowHomePage extends NavbarState {
  final Widget body = const MainPage();
  final int itemIndex = 0;
  final Color appBarColor = const Color(0xff1888FC);
  final Color iconColor = Colors.white;
  //final String asset = "assets/logo_appbar.png";
}

class ShowMateriPage extends NavbarState {
  final Widget body = const MateriPage();
  final int itemIndex = 2;
  final Color appBarColor = Colors.white;
  final Color iconColor = const Color(0xff1888FC);
  //final String asset = "assets/logo_banner.png";
}
