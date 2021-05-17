import 'package:flutter/material.dart';
import 'package:auth_app/widgets/filled_text_input.dart';
import 'package:auth_app/widgets/social_buttons.dart';
import 'package:auth_app/utils/validators.dart';

class SignUpForm extends StatefulWidget {
  final Function handleSignUp;
  SignUpForm({@required this.handleSignUp});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _signUpFormKey = GlobalKey<FormState>();

  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmPasswordTextController = TextEditingController();

  Validator _emailValidator;
  Validator _passwordValidator;
  Validator _confirmPasswordValidator;

  @override
  void initState() {
    _emailValidator = Validator(rules: [
      RequiredText(errorMessage: 'Please enter your username'),
      MaxLengthText(),
    ]);

    _passwordValidator = Validator(rules: [
      RequiredText(errorMessage: 'Please enter your password'),
      MinLengthText(),
      MaxLengthText(),
    ]);

    _confirmPasswordValidator = Validator(rules: [
      RequiredText(errorMessage: 'Please confirm your password'),
      MinLengthText(),
      MaxLengthText(),
      SameAsText(
        errorMessage: 'Please make sure your password match',
        textController: _passwordTextController,
      ),
    ]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _signUpFormKey,
          child: Column(
            children: [
              FilledTextInput(
                controller: _emailTextController,
                hint: 'Enter email',
                validator: _emailValidator,
                keyboardType: TextInputType.emailAddress,
              ),
              FilledTextInput(
                controller: _passwordTextController,
                hint: 'Enter password',
                validator: _passwordValidator,
                obscureText: true,
              ),
              FilledTextInput(
                controller: _confirmPasswordTextController,
                hint: 'Confirm password',
                validator: _confirmPasswordValidator,
                obscureText: true,
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              if (_signUpFormKey.currentState.validate()) {
                widget.handleSignUp(
                  email: _emailTextController.text,
                  password: _passwordTextController.text,
                  context: context,
                );
              }
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
