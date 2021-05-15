import 'package:auth_app/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:auth_app/screens/sign_up_screen.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:auth_app/widgets/filledTextInput.dart';

class SignInScreen extends StatelessWidget {
  static const path = 'sign_in_screen';

  SignInScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                Form(
                  child: Column(
                    children: [
                      FilledTextInput(
                        hint: 'Username',
                      ),
                      FilledTextInput(
                        hint: 'Password',
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Text(
                        'Forgot your password?',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        ProfileScreen.path,
                      );
                    },
                    child: Text('Login'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                  child: Text('or'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AuthAppColors.borderGrey),
                      ),
                      child: IconButton(
                        icon: Image.asset('assets/images/facebook_icon.png'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AuthAppColors.borderGrey),
                      ),
                      child: IconButton(
                        icon: Image.asset('assets/images/twitter_icon.png'),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AuthAppColors.borderGrey),
                      ),
                      child: IconButton(
                        icon: Image.asset('assets/images/linkedin_icon.png'),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.path);
                      },
                      child: Text(
                        'Sign Up',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .merge(TextStyle(
                              color: AuthAppColors.primaryOrange,
                              decoration: TextDecoration.underline,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
