import 'package:flutter/material.dart';
import 'package:auth_app/screens/sign_up_screen.dart';
import 'package:auth_app/widgets/bottom_link.dart';
import 'package:auth_app/widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  static const path = 'sign_in_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Sign In'),
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
                    'assets/images/pencil_abstraction.png',
                    width: 100,
                    height: 145,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 50),
                ),
                SignInForm(),
                Container(
                  height: 30,
                ),
                BottomLink(
                  leftLabel: "Don't have an account? ",
                  rightLabel: 'Sign Up',
                  onLinkPress: () {
                    Navigator.pushNamed(context, SignUpScreen.path);
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
