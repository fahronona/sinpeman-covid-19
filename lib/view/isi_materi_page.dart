import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/components/materi_text.dart';

class IsiMateriPage extends StatefulWidget {
  final String materi;
  final String judul;
  const IsiMateriPage({Key? key, this.materi = "", this.judul = ""})
      : super(key: key);

  @override
  _IsiMateriPageState createState() => _IsiMateriPageState();
}

class _IsiMateriPageState extends State<IsiMateriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.judul),
      ),
      body: ListView(
        children: [materiTxt(widget.materi, 20)],
      ),
    );
  }
}
