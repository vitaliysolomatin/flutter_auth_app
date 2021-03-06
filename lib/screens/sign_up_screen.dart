import 'package:flutter/material.dart';
import 'package:auth_app/screens/sign_in_screen.dart';
import 'package:auth_app/widgets/bottom_link.dart';
import 'package:auth_app/widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  static const path = 'sign_up_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/burger_menu.png'),
            onPressed: null,
            padding: EdgeInsets.only(right: 30),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/lock_box.png',
                    width: 140,
                    height: 140,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 50),
                ),
                SignUpForm(),
                Container(
                  height: 30,
                ),
                BottomLink(
                  leftLabel: 'Already have an account? ',
                  rightLabel: 'Sign In',
                  onLinkPress: () {
                    Navigator.pushNamed(context, SignInScreen.path);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
