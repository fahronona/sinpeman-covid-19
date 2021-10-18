import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/components/option_com.dart';
import 'package:sinpeman_covid_19/components/screening_form.dart';

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  _ScreeningPageState createState() => _ScreeningPageState();
}

class _ScreeningPageState extends State<ScreeningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screening"),
      ),
      body: ListView(
        children: [
          titleForm(title: "Nama", mrTop: 20),
          simpleForm(TextEditingController(), mrTop: 10, title: "Masukan nama"),
          titleForm(title: "Umur", mrTop: 15),
          numberForm(TextEditingController(), mrTop: 10, title: "Masukan umur"),
          titleForm(title: "Tanggal screening", mrTop: 15),
          onTapForm(TextEditingController(), () {},
              mrTop: 10, title: "Masukan tanggal"),
          titleForm(
              title:
                  "1.  Apakah anda pernah Datang ke wilayah yang masuk zona merahterpapar Covid-19 ? ",
              mrTop: 20),
          const OptionComp(),
          titleForm(
              title:
                  "2.  Apakah anda pernah Berinteraksi dengan terduga pasien Covid-19 ? ",
              mrTop: 20),
          const OptionComp(),
          titleForm(
              title:
                  "3.  Apakah mengalami gejala yang berhubungan dengan Covid-19 ? ",
              mrTop: 20),
          OptionSingle(
              title: "Demam",
              title2: "Batuk kering",
              function: () {},
              function2: () {},
              cancel: () {},
              cancel2: () {}),
          OptionSingle(
              title: "Kelelahan",
              title2: "Sesak napas",
              function: () {},
              function2: () {},
              cancel: () {},
              cancel2: () {}),
          OptionSingle(
              title: "Nyeri otot",
              title2: "Sakit Kepala",
              function: () {},
              function2: () {},
              cancel: () {},
              cancel2: () {}),
          OptionSingle(
              title: "Mual muntah",
              title2: "Sakit tenggorokan",
              function: () {},
              function2: () {},
              cancel: () {},
              cancel2: () {}),
          OptionSingle(
              title: "Diare",
              title2: "Kehilangan kemampuan untuk membau",
              function: () {},
              function2: () {},
              cancel: () {},
              cancel2: () {}),
          titleForm(
              title:
                  "4.  Apakah pernah mengikuti acara yang dihadiri orang dalam jumlah banyak saat pandemi corona? ",
              mrTop: 20),
          const OptionComp(),
          Padding(
            padding: EdgeInsets.only(top: 40, right: 18, left: 18),
            child: Container(
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Screening"),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
