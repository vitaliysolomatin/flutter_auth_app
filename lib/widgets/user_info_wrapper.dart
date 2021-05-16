import 'package:flutter/material.dart';
import 'package:auth_app/assets/colors.dart';
import 'package:auth_app/screens/sign_in_screen.dart';

class UserInfoWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 30,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Image.asset(
              'assets/images/profile_image.png',
              width: 125,
              height: 125,
            ),
          ),
        ),
        Text(
          'Username',
          style: Theme.of(context).textTheme.headline6.merge(
                TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AuthAppColors.primaryGrey,
                ),
              ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'New York',
                style: Theme.of(context).textTheme.headline6.merge(
                      TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: AuthAppColors.borderGrey,
                ),
              ),
              Text(
                'ID: 1120611',
                style: Theme.of(context).textTheme.headline6.merge(
                      TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              ),
            ],
          ),
        ),
        Text(
          'Edit',
          style: Theme.of(context).textTheme.headline6.merge(
                TextStyle(
                  color: AuthAppColors.primaryOrange,
                  decoration: TextDecoration.underline,
                ),
              ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(30, 24, 30, 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      AuthAppColors.white,
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: AuthAppColors.borderGrey,
                        ),
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      AuthAppColors.darkGrey,
                    ),
                  ),
                  onPressed: () {},
                  child: Text('About Me'),
                ),
              ),
              SizedBox(
                width: 150,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SignInScreen.path,
                    );
                  },
                  child: Text('Log Out'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
