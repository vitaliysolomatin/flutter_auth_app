import 'package:flutter/material.dart';
import 'package:auth_app/assets/colors.dart';
import 'package:auth_app/widgets/info_block.dart';

class ProfileInfoBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 352,
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 32,
      ),
      width: double.infinity,
      color: AuthAppColors.primaryGrey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: InfoBlock(
              bottomLabel: '+3788888888',
              icon: 'assets/images/phone_icon.png',
              topLabel: 'Phone Number',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: InfoBlock(
              bottomLabel: 'user@gmail.com',
              icon: 'assets/images/email_icon.png',
              topLabel: 'Email',
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: InfoBlock(
              bottomLabel: '248',
              icon: 'assets/images/circle_icon.png',
              topLabel: 'Completed projects',
            ),
          ),
        ],
      ),
    );
  }
}
