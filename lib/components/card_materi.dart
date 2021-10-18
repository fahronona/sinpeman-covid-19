import 'package:flutter/material.dart';

Widget cardMateri() {
  return Padding(
    padding: const EdgeInsets.only(right: 18, left: 18, top: 20),
    child: Card(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 180,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            colors: [
              Color(0xff1689FD),
              Color(0xff57B7FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Pengertian Covid 19",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Pengertian Covid 19",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
