import 'package:flutter/material.dart';
import 'package:auth_app/screens/sign_in_screen.dart';
import 'package:auth_app/screens/sign_up_screen.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:auth_app/screens/counter_screen.dart';
import 'package:auth_app/assets/theme.dart';

void main() {
  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: generateTheme(),
      home: SignInScreen(title: 'Sign In'),
      routes: {
        SignInScreen.path: (ctx) => SignInScreen(title: 'Sign In'),
        SignUpScreen.path: (ctx) => SignUpScreen(title: 'Sign Up'),
        ProfileScreen.path: (ctx) => ProfileScreen(title: ''),
        CounterScreen.path: (ctx) => CounterScreen(title: 'Counter'),
      },
    );
  }
}
