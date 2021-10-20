import 'package:flutter/material.dart';

class DataTableDasboard extends StatelessWidget {
  const DataTableDasboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      // margin: EdgeInsets.only(right: 18, left: 18, top: 20),
      color: const Color(0xff1888FC),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 50,
            child: const Text("No",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 150,
            child: const Text("Tanggal",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 150,
            child: const Text("Nama",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 70,
            child: const Text("Hasil",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 70,
            child: const Text("Aksi",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal)),
          ),
        ],
      ),
    );
  }
}

class DataDasboard extends StatelessWidget {
  final String no;
  final String tanggal;
  final String nama;
  final void Function() hasil;
  final void Function() hapus;

  const DataDasboard(
      {Key? key,
      this.no = "",
      this.tanggal = "",
      this.nama = "",
      required this.hasil,
      required this.hapus})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      // margin: EdgeInsets.only(right: 5,left: 5),
      // color: Color(0xff10AFAF),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 50,
            child: Text(no,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 150,
            child: Text(tanggal,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            width: 150,
            child: Text(nama,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal)),
          ),
          Container(
              padding: EdgeInsets.only(right: 25),
              width: 70,
              child: Center(
                child: IconButton(
                    icon: Icon(
                      Icons.description,
                      color: const Color(0xff1888FC),
                      size: 25,
                    ),
                    onPressed: hasil),
              )),
          Container(
              padding: EdgeInsets.only(right: 25),
              width: 70,
              child: Center(
                child: IconButton(
                    icon: Icon(
                      Icons.delete_rounded,
                      color: const Color(0xff1888FC),
                      size: 25,
                    ),
                    onPressed: hapus),
              ))
        ],
      ),
    );
  }
}
