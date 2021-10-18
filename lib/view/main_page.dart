import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.transparent,
          height: MediaQuery.of(context).size.width / 2,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/banner_up.png",
                  )),
              const Positioned(
                  top: 50,
                  left: 25,
                  child: Text(
                    "Selamat Datang,",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  )),
              const Positioned(
                  top: 78,
                  left: 25,
                  child: Text(
                    "Lakukan screening secara\nberkala, untuk mencegah\npenyebaran Covid 19",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
