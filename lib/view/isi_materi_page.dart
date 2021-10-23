import 'package:flutter/material.dart';

class IsiMateriPage extends StatefulWidget {
  const IsiMateriPage({Key? key}) : super(key: key);

  @override
  _IsiMateriPageState createState() => _IsiMateriPageState();
}

class _IsiMateriPageState extends State<IsiMateriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Judul covid"),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
