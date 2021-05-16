import 'package:flutter/material.dart';
import 'package:auth_app/screens/profile_screen.dart';
import 'package:auth_app/widgets/filled_text_input.dart';
import 'package:auth_app/widgets/social_buttons.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          child: Column(
            children: [
              FilledTextInput(
                hint: 'Enter email',
              ),
              FilledTextInput(
                hint: 'Enter password',
              ),
              FilledTextInput(
                hint: 'Confirm password',
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
            child: Text('Sign Up'),
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
