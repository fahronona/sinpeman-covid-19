import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static Future<UserCredential?> singUp(String email, String password) async {
    try {
      UserCredential result = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return result;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  static Future<UserCredential?> singIn(String email, String password) async {
    try {
      UserCredential result = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return result;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
