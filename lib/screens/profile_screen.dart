import 'package:auth_app/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/widgets/profile_info_block.dart';
import 'package:auth_app/widgets/user_info_wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileScreen extends StatelessWidget {
  static const path = 'profile_screen';
  final firebaseAuth = FirebaseAuth.instance;

  handleSignOut({BuildContext context}) {
    firebaseAuth.signOut();
    Navigator.popAndPushNamed(context, SignInScreen.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: <Widget>[
          IconButton(
            icon: Image.asset('assets/images/burger_menu.png'),
            onPressed: null,
            padding: EdgeInsets.only(right: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: UserInfoWrapper(
              handleSignOut: handleSignOut,
            ),
          ),
          Expanded(
            flex: 5,
            child: ProfileInfoBlock(),
          ),
        ],
      ),
    );
  }
}
