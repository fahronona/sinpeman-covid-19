import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sinpeman_covid_19/res/res.dart';
import 'package:sinpeman_covid_19/view/splash_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Init.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
