import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/components/card_materi.dart';
import 'package:sinpeman_covid_19/model/model_materi.dart';

class MateriPage extends StatefulWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  List<ModelMateri> materi = [];

  Future<void> getDataMateri() async {
    String dataIn =
        await DefaultAssetBundle.of(context).loadString("assets/materi.json");
    final jsonResultIn = json.decode(dataIn);
    print(jsonResultIn);
    jsonResultIn["materi"].forEach((i) {
      materi.add(ModelMateri(i["judulMateri"], i["isiMateri"]));
    });
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataMateri();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 18, left: 18, top: 25),
          child: Text("Materi Seputar Covid 19",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        ...materi.map((e) {
          return CardMateri(
            judul: e.title,
            subJudul: "materi ${e.title}",
          );
        }),
      ],
    );
  }
}
