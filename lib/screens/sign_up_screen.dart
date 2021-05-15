import 'package:flutter/material.dart';

import 'package:auth_app/screens/sign_in_screen.dart';
import 'package:auth_app/screens/profile_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const path = 'sign_up_screen';

  SignUpScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('To Sign In'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              SignInScreen.path,
            );
          },
        ),
      ),
    );
  }
}
