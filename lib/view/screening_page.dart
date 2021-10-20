import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sinpeman_covid_19/components/option_com.dart';
import 'package:sinpeman_covid_19/components/screening_form.dart';
import 'package:intl/intl.dart';
import 'package:sinpeman_covid_19/model/model_data.dart';
import 'package:sinpeman_covid_19/view/botto_nav_bar.dart';

class ScreeningPage extends StatefulWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  _ScreeningPageState createState() => _ScreeningPageState();
}

class _ScreeningPageState extends State<ScreeningPage> {
  TextEditingController dateController = TextEditingController();
  TextEditingController namaCtrl = TextEditingController();
  TextEditingController umurCtrl = TextEditingController();
  String tanggal = "";
  late String input1 = "";
  late String input2 = "";
  List<String> input3 = [];
  late String input4 = "";

  Box<ModelData> databox = Hive.box<ModelData>("modeldata");

  DateTime selectedDate = DateTime.now();
  String pilihDate = " ";
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? d = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (d != null) {
      setState(() {
        pilihDate = DateFormat("dd/MM/yyyy").format(d);
        dateController.text = DateFormat("dd-MM-yyyy").format(d);
        tanggal = DateFormat("dd MMMM yyyy").format(d);
      });
    }
  }

  void popUpForm() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              color: Colors.transparent,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Center(
                      child: Text(
                    'Formulir tidak lengkap',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                        'Anda belum melengkapi data, Mohon lengkapi data terlebih dahulu',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void popPositif() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              color: Colors.transparent,
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                      child: Text(
                    'Hasil Screening',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                        'Hasil Screening anda terindikasi positif, Segera lakukan tes Antigen/PCR untuk tindakan lebih lanjut.',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 18, left: 18),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNavBar()),
                              (Route<dynamic> route) => false);
                        },
                        child: Text("Ok")),
                  )
                ],
              ),
            ),
          );
        });
  }

  void popNegatif() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              color: Colors.transparent,
              height: 140,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                      child: Text(
                    'Hasil Screening',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text('Hasil Screening anda terindikasi negatif',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 0, left: 0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BottomNavBar()),
                              (Route<dynamic> route) => false);
                        },
                        child: Text("Ok")),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screening"),
      ),
      body: ListView(
        children: [
          titleForm(title: "Nama", mrTop: 20),
          simpleForm(namaCtrl, mrTop: 10, title: "Masukan nama"),
          titleForm(title: "Umur", mrTop: 15),
          numberForm(umurCtrl, mrTop: 10, title: "Masukan umur"),
          titleForm(title: "Tanggal screening", mrTop: 15),
          onTapForm(dateController, () {
            //  print("tes");
            _selectDate(context);
          }, mrTop: 10, title: "Masukan tanggal"),
          titleForm(
              title:
                  "1.  Apakah anda pernah Datang ke wilayah yang masuk zona merahterpapar Covid-19 ? ",
              mrTop: 20),
          OptionComp(
            function: () {
              input1 = "pernah";
              print("aa");
              setState(() {});
            },
            function2: () {
              input1 = "tidak pernah";
              setState(() {});
            },
          ),
          titleForm(
              title:
                  "2.  Apakah anda pernah Berinteraksi dengan terduga pasien Covid-19 ? ",
              mrTop: 20),
          OptionComp(
            function: () {
              input2 = "pernah";
              setState(() {});
            },
            function2: () {
              input2 = "tidak pernah";
              setState(() {});
            },
          ),
          titleForm(
              title:
                  "3.  Apakah mengalami gejala yang berhubungan dengan Covid-19 ? ",
              mrTop: 20),
          OptionSingle(
              title: "Demam",
              title2: "Batuk kering",
              function: () {
                input3.add("Demam");
              },
              function2: () {
                input3.add("Batuk kering");
              },
              cancel: () {
                input3.removeWhere((e) => e == "Demam");
              },
              cancel2: () {
                input3.removeWhere((e) => e == "Batuk kering");
              }),
          OptionSingle(
              title: "Kelelahan",
              title2: "Sesak napas",
              function: () {
                input3.add("Kelelahan");
              },
              function2: () {
                input3.add("Sesak napas");
              },
              cancel: () {
                input3.removeWhere((e) => e == "Kelelahan");
              },
              cancel2: () {
                input3.removeWhere((e) => e == "Sesak napas");
              }),
          OptionSingle(
              title: "Nyeri otot",
              title2: "Sakit Kepala",
              function: () {
                input3.add("Nyeri otot");
              },
              function2: () {
                input3.add("Sakit Kepala");
              },
              cancel: () {
                input3.removeWhere((e) => e == "Nyeri otot");
              },
              cancel2: () {
                input3.removeWhere((e) => e == "Sakit Kepala");
              }),
          OptionSingle(
              title: "Mual muntah",
              title2: "Sakit tenggorokan",
              function: () {
                input3.add("Mual muntah");
              },
              function2: () {
                input3.add("Sakit tenggorokan");
              },
              cancel: () {
                input3.removeWhere((e) => e == "Mual muntah");
              },
              cancel2: () {
                input3.removeWhere((e) => e == "Sakit tenggorokan");
              }),
          OptionSingle(
              title: "Diare",
              title2: "Kehilangan kemampuan untuk membau",
              function: () {
                input3.add("Diare");
              },
              function2: () {
                input3.add("Kehilangan kemampuan untuk membau");
              },
              cancel: () {
                input3.removeWhere((e) => e == "Diare");
              },
              cancel2: () {
                input3.removeWhere(
                    (e) => e == "Kehilangan kemampuan untuk membau");
              }),
          titleForm(
              title:
                  "4.  Apakah pernah mengikuti acara yang dihadiri orang dalam jumlah banyak saat pandemi corona? ",
              mrTop: 20),
          OptionComp(
            function: () {
              input4 = "pernah";
              setState(() {});
            },
            function2: () {
              input4 = "tidak pernah";
              setState(() {});
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, right: 18, left: 18),
            child: Container(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  if (namaCtrl.text.isEmpty ||
                      umurCtrl.text.isEmpty ||
                      dateController.text.isEmpty ||
                      input1.isEmpty ||
                      input2.isEmpty ||
                      input4.isEmpty) {
                    print(input1);
                    popUpForm();
                  } else {
                    if (input1 == "pernah" ||
                        input2 == "pernah" ||
                        input4 == "pernah") {
                      popPositif();
                      databox.add(ModelData(namaCtrl.text, umurCtrl.text,
                          tanggal, input1, input2, input3, input4));
                    } else {
                      popNegatif();
                      databox.add(ModelData(namaCtrl.text, umurCtrl.text,
                          tanggal, input1, input2, input3, input4));
                    }
                  }
                },
                child: const Text("Screening"),
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
