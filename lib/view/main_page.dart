import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sinpeman_covid_19/components/data_table.dart';
import 'package:sinpeman_covid_19/model/model_data.dart';
import 'package:sinpeman_covid_19/view/botto_nav_bar.dart';
import 'package:sinpeman_covid_19/view/detail_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Box<ModelData> databox = Hive.box<ModelData>("modeldata");
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
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
              child: Card(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Column(
                        children: [
                          DataTableDasboard(),
                          databox.values.isEmpty
                              ? Container(
                                  height: 200,
                                  width: 300,
                                  // color: Colors.black,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.folder,
                                          size: 45,
                                          color: Colors.grey[200],
                                        ),
                                        Text(
                                          'Data Kosong',
                                          style: TextStyle(
                                              color: Colors.grey[300]),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              : Container(),
                          ...databox.values.map((e) {
                            var index = databox.values.toList().indexOf(e);
                            return DataDasboard(
                                no: (index + 1).toString(),
                                nama: e.nama,
                                tanggal: e.tanggal,
                                hasil: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetailData(
                                                dataGejala: e.input3,
                                                nama: e.nama,
                                                umur: e.umur,
                                                tanggal: e.tanggal,
                                                hasil: e.hasil,
                                              )));
                                },
                                hapus: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  databox.deleteAt(index);
                                                  Navigator.pop(context);

                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              BottomNavBar()),
                                                      (Route<dynamic> route) =>
                                                          false);
                                                },
                                                child: const Text("Ya",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text("Tidak",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.red)))
                                          ],
                                          content: Container(
                                            height: 80,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Center(
                                                    child: Text(
                                                  'Hapus data',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Center(
                                                  child: Text(
                                                      'Anda yakin ingin menghapus data ? ',
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                });
                          })
                          // DataDasboard(
                          //   hapus: () {},
                          //   hasil: () {},
                          //   nama: "tes",
                          //   no: "1",
                          //   tanggal: "292",
                          // )
                        ],
                      ))),
            ),
          ],
        ))
      ],
    );
  }
}
