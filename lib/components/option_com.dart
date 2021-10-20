import 'package:flutter/material.dart';

class OptionComp extends StatefulWidget {
  final Function function;
  final Function function2;
  const OptionComp({Key? key, required this.function, required this.function2})
      : super(key: key);

  @override
  _OptionCompState createState() => _OptionCompState();
}

class _OptionCompState extends State<OptionComp> {
  bool pernah = false;
  bool tidakp = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 0, left: 30),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              if (pernah == false) {
                pernah = true;
                tidakp = false;
                widget.function();
                setState(() {});
              } else {
                pernah = false;
                setState(() {});
              }
            },
            child: Container(
              child: pernah == false
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.grey[300],
                      size: 35,
                    )
                  : const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 35,
                    ),
              color: Colors.transparent,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("Pernah",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width / 4,
          ),
          InkWell(
            onTap: () {
              if (tidakp == false) {
                tidakp = true;
                pernah = false;
                widget.function2();
                setState(() {});
              } else {
                tidakp = false;

                setState(() {});
              }
            },
            child: Container(
              child: tidakp == false
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.grey[300],
                      size: 35,
                    )
                  : const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 35,
                    ),
              color: Colors.transparent,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text("Tidak pernah",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ))
        ],
      ),
    );
  }
}

class OptionSingle extends StatefulWidget {
  final String title;
  final String title2;
  final Function function;
  final Function function2;
  final Function cancel;
  final Function cancel2;
  const OptionSingle(
      {Key? key,
      this.title = "",
      required this.function,
      this.title2 = "",
      required this.function2,
      required this.cancel,
      required this.cancel2})
      : super(key: key);

  @override
  _OptionSingleState createState() => _OptionSingleState();
}

class _OptionSingleState extends State<OptionSingle> {
  bool pernah = false;
  bool pernah2 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 0, left: 30),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              if (pernah == false) {
                pernah = true;
                widget.function();
                setState(() {});
              } else {
                pernah = false;
                widget.cancel();
                setState(() {});
              }
            },
            child: Container(
              child: pernah == false
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.grey[300],
                      size: 35,
                    )
                  : const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 35,
                    ),
              color: Colors.transparent,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            color: Colors.transparent,
            child: Text(widget.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 7,
          ),
          InkWell(
            onTap: () {
              if (pernah2 == false) {
                pernah2 = true;
                widget.function2();
                setState(() {});
              } else {
                pernah2 = false;
                widget.cancel2();
                setState(() {});
              }
            },
            child: Container(
              child: pernah2 == false
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.grey[300],
                      size: 35,
                    )
                  : const Icon(
                      Icons.check_circle,
                      color: Colors.blue,
                      size: 35,
                    ),
              color: Colors.transparent,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 100,
            child: Text(widget.title2,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                )),
          ),
        ],
      ),
    );
  }
}
