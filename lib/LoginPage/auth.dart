import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthentificationService {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  AuthentificationService(this._firebaseAuth);

  Future<bool> signIn({required String email, required String password}) async {
    // email & password
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message ?? "Error");
      return false;
    }
    // Google
    // try {
    //   await _googleSignIn.signIn();
    //   return true;
    // } on FirebaseAuthException catch (e) {
    //   debugPrint(e.message ?? "Error");
    //   return false;
    // }
  }

  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.message ?? "Error");
      return false;
    }
  }
}
