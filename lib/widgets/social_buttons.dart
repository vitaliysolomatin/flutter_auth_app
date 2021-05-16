import 'package:auth_app/assets/colors.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialButtonWrapper(
          iconPath: 'assets/images/facebook_icon.png',
          onIconPress: () {},
        ),
        SocialButtonWrapper(
          iconPath: 'assets/images/twitter_icon.png',
          onIconPress: () {},
        ),
        SocialButtonWrapper(
          iconPath: 'assets/images/linkedin_icon.png',
          onIconPress: () {},
        ),
      ],
    );
  }
}

class SocialButtonWrapper extends StatelessWidget {
  final String iconPath;
  final Function onIconPress;
  SocialButtonWrapper({this.iconPath, this.onIconPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AuthAppColors.borderGrey),
      ),
      child: IconButton(
        icon: Image.asset(iconPath),
        onPressed: onIconPress,
      ),
    );
  }
}
