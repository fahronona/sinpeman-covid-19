import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/view/login_page.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 150, width: 150, child: Image.asset('assets/logo.png')),
            Container(height: 30),
            // Text('Aplikasi Screening Pengabain Pada Lansia',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff6D9FFC)),)
            const Text(
              'V 1.0.1',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),

            Container(
              height: 10,
            ),
            const Text(
              'Ideas and Concepts by',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1888FC)),
            ),
            Container(
              height: 10,
            ),
            const Text(
              'Jaji,S.Kep.,Ns.,M.kep.',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            Container(
              height: 8,
            ),
            const Text(
              'PSIK-FK UNSRI',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),
            const Text(
              'jaji.unsri@gmail.com',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),

            Container(
              height: 30,
            ),
            const Text(
              'Developed by',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff1888FC)),
            ),
            Container(
              height: 10,
            ),
            const Text(
              'FK Studio',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black54),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10),
              child: RaisedButton(
                color: const Color(0xff1888FC),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      (route) => false);
                },
                child: const Text(
                  'Keluar',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
