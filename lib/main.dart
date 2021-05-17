import 'package:flutter/material.dart';
import 'package:auth_app/screens/sign_in_screen.dart';
import 'package:auth_app/screens/sign_up_screen.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:auth_app/assets/theme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(AuthApp());
}

class AuthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: generateTheme(),
      home: SignInScreen(),
      routes: {
        SignInScreen.path: (ctx) => SignInScreen(),
        SignUpScreen.path: (ctx) => SignUpScreen(),
        ProfileScreen.path: (ctx) => ProfileScreen(),
      },
    );
  }
}
