import 'dart:ui';

import 'package:flutter/material.dart';

Widget simpleForm(TextEditingController cntrl,
    {String title = "-", double mrTop = 10}) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, right: 18, left: 18),
    child: Container(
      color: Colors.transparent,
      height: 48,
      child: Material(
        elevation: 3.0,
        shadowColor: Colors.grey[300],
        child: TextField(
          controller: cntrl,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            hintText: title,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget numberForm(TextEditingController cntrl,
    {String title = "-", double mrTop = 10}) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, right: 18, left: 18),
    child: Container(
      color: Colors.transparent,
      height: 48,
      child: Material(
        elevation: 3.0,
        shadowColor: Colors.grey[300],
        child: TextField(
          keyboardType: TextInputType.number,
          controller: cntrl,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 20, right: 18, left: 18),
            hintText: title,
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget onTapForm(TextEditingController cntrl, void Function() onTap,
    {String title = "-", double mrTop = 10}) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, right: 18, left: 18),
    child: InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        height: 48,
        child: Material(
          elevation: 3.0,
          shadowColor: Colors.grey[300],
          child: TextField(
            enabled: false,
            controller: cntrl,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(top: 20, right: 18, left: 18),
              hintText: title,
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget titleForm({String title = "-", double mrTop = 10}) {
  return Padding(
    padding: EdgeInsets.only(top: mrTop, right: 18, left: 18),
    child: Text(title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        )),
  );
}
