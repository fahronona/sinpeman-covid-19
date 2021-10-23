import 'package:flutter/material.dart';
import 'package:sinpeman_covid_19/components/form_login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              height: 100,
              width: 250,
              child: Image.asset("assets/logo.png"),
            ),
          ),
          FormLogin(
            icon: const Icon(
              Icons.email,
              color: Colors.blue,
            ),
            controller: emailCtrl,
            hintText: "Masukan email",
            marTop: 60,
            sufflixIcon: false,
          ),
          FormLogin(
            icon: const Icon(
              Icons.lock,
              color: Colors.blue,
            ),
            controller: passwordCtrl,
            hintText: "Masukan password",
            marTop: 30,
            sufflixIcon: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, right: 18, left: 18),
            child: Container(
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Daftar"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah memiliki akun ?  ',
                  style: TextStyle(fontSize: 17, color: Colors.grey[400]),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Daftar()));
                    },
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
