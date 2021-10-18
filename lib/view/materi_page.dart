import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/components/card_materi.dart';

class MateriPage extends StatefulWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 18, left: 18, top: 25),
          child: Text("Materi Seputar Covid 19",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        cardMateri(),
        cardMateri(),
        cardMateri(),
        cardMateri()
      ],
    );
  }
}
