import 'package:auth_app/assets/colors.dart';
import 'package:flutter/material.dart';

class BottomLink extends StatelessWidget {
  final String leftLabel;
  final String rightLabel;
  final Function onLinkPress;
  BottomLink({this.onLinkPress, this.leftLabel, this.rightLabel});

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(leftLabel),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onLinkPress,
          child: Text(
            rightLabel,
            style: Theme.of(context).textTheme.headline6.merge(
                  TextStyle(
                    color: AuthAppColors.primaryOrange,
                    decoration: TextDecoration.underline,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
