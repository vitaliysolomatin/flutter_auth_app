import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:auth_app/screens/sign_in_screen.dart';

abstract class Auth {
  Future<void> signIn({String email, String password, BuildContext context});

  Future<void> signUp({String email, String password, BuildContext context});

  Future<void> signOut({BuildContext context});
}

class AuthFirebase implements Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> signIn(
      {String email, String password, BuildContext context}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.popAndPushNamed(context, ProfileScreen.path);
    } on FirebaseAuthException catch (error) {
      print('Failed with error code: ${error.code}');
      print(error.message);
    }
  }

  Future<void> signUp(
      {String email, String password, BuildContext context}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.popAndPushNamed(context, ProfileScreen.path);
    } on FirebaseAuthException catch (error) {
      print('Failed with error code: ${error.code}');
      print(error.message);
    }
  }

  Future<void> signOut({BuildContext context}) async {
    try {
      await _firebaseAuth.signOut();
      Navigator.popAndPushNamed(context, SignInScreen.path);
    } on FirebaseAuthException catch (error) {
      print('Failed with error code: ${error.code}');
      print(error.message);
    }
  }
}
