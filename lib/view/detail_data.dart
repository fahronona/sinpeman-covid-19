import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/components/screening_form.dart';

class DetailData extends StatefulWidget {
  final String nama;
  final String umur;
  final String tanggal;
  final List<String> dataGejala;
  final String hasil;
  const DetailData(
      {Key? key,
      this.nama = "",
      this.umur = "",
      this.tanggal = "",
      required this.dataGejala,
      this.hasil = ""})
      : super(key: key);

  @override
  _DetailDataState createState() => _DetailDataState();
}

class _DetailDataState extends State<DetailData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: ListView(
        children: [
          titleForm(title: "Nama", mrTop: 20),
          isiForm(title: widget.nama, mrTop: 5),
          titleForm(title: "Umur", mrTop: 10),
          isiForm(title: widget.umur, mrTop: 5),
          titleForm(title: "Tanggal Screening", mrTop: 10),
          isiForm(title: widget.tanggal, mrTop: 5),
          titleForm(
              title: "Gejala yang berhubungan dengan Covid-19", mrTop: 10),
          ...widget.dataGejala.map((e) {
            return isiForm(title: e, mrTop: 5);
          }),
          titleForm(title: "Hasil Screening", mrTop: 10),
          isiForm(title: widget.hasil, mrTop: 5),
        ],
      ),
    );
  }
}
