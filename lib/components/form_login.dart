import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  final String hintText;
  final Icon icon;
  final double marTop;
  final bool sufflixIcon;
  final TextEditingController controller;

  const FormLogin(
      {Key? key,
      this.hintText = "",
      required this.icon,
      this.marTop = 10,
      this.sufflixIcon = false,
      required this.controller})
      : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool obscure = true;

  void iconObscure() {
    setState(() {
      obscure = !obscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.marTop, right: 16, left: 16),
      child: Container(
        height: 45,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.grey[200]),
        // color:ThemeColors.MAIN_COLOR_B ,

        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.sufflixIcon == false ? !obscure : obscure,
            cursorColor: Colors.grey,
            style: TextStyle(color: Colors.blue),
            decoration: InputDecoration(
                icon: widget
                    .icon, //Icon(Icons.email,color: ThemeColors.TEXT_COLOR,),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey[200],
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.blue),
                suffixIcon: widget.sufflixIcon == false
                    ? Icon(Icons.arrow_drop_down, color: Colors.grey[200])
                    : GestureDetector(
                        onTap: () {
                          iconObscure();
                        },
                        child: Icon(
                            obscure ? Icons.visibility_off : Icons.visibility,
                            color: Colors.blue))),
          ),
        ),
      ),
    );
  }
}
