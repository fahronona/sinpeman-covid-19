import 'package:flutter/material.dart';

Widget materiTxt(String isi, double mrTop) {
  return Padding(
    padding: EdgeInsets.only(right: 16, left: 16, top: mrTop),
    child: Text(
      isi,
      textAlign: TextAlign.justify,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.normal, height: 2),
    ),
  );
}
