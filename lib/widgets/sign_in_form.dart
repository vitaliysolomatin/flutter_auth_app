import 'package:flutter/material.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:auth_app/widgets/filled_text_input.dart';
import 'package:auth_app/widgets/social_buttons.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        SocialButtons(),
      ],
    );
  }
}
