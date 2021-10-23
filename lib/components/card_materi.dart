import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/view/isi_materi_page.dart';

class CardMateri extends StatefulWidget {
  final String judul;
  final String subJudul;
  final String materi;
  const CardMateri(
      {Key? key, this.judul = "", this.subJudul = "", this.materi = ""})
      : super(key: key);

  @override
  _CardMateriState createState() => _CardMateriState();
}

class _CardMateriState extends State<CardMateri> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18, top: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => IsiMateriPage(
                        judul: widget.judul,
                        materi: widget.materi,
                      )));
        },
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
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.judul,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.subJudul,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
