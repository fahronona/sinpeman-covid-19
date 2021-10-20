import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sinpeman_covid_19/components/data_table.dart';
import 'package:sinpeman_covid_19/model/model_data.dart';

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
                          ...databox.values.map((e) {
                            var index = databox.values.toList().indexOf(e);
                            return DataDasboard(
                                no: (index + 1).toString(),
                                nama: e.nama,
                                tanggal: e.tanggal,
                                hasil: () {},
                                hapus: () {});
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
