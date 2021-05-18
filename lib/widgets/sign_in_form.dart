import 'package:flutter/material.dart';
import 'package:auth_app/widgets/filled_text_input.dart';
import 'package:auth_app/widgets/social_buttons.dart';
import 'package:auth_app/utils/validators.dart';
import 'package:auth_app/services/auth_service.dart';

class SignInForm extends StatelessWidget {
  final _signInFormKey = GlobalKey<FormState>();

  final _usernameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  final _usernameValidator = Validator(rules: [
    RequiredText(errorMessage: 'Please enter your username'),
    MaxLengthText(),
  ]);

  final _passwordValidator = Validator(rules: [
    RequiredText(errorMessage: 'Please enter your password'),
    MinLengthText(),
    MaxLengthText(),
  ]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _signInFormKey,
          child: Column(
            children: [
              FilledTextInput(
                controller: _usernameTextController,
                hint: 'Username',
                validator: _usernameValidator,
                keyboardType: TextInputType.emailAddress,
              ),
              FilledTextInput(
                controller: _passwordTextController,
                hint: 'Password',
                obscureText: true,
                validator: _passwordValidator,
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
              if (_signInFormKey.currentState.validate()) {
                AuthFirebase().signIn(
                  email: _usernameTextController.text,
                  password: _passwordTextController.text,
                  context: context,
                );
              }
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
