import 'package:flutter/material.dart';
import 'package:auth_app/assets/colors.dart';

class InfoBlock extends StatelessWidget {
  final String icon;
  final String topLabel;
  final String bottomLabel;
  InfoBlock({this.icon, this.topLabel, this.bottomLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AuthAppColors.borderGrey, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 19,
          horizontal: 25,
        ),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 22,
              height: 22,
            ),
            Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: AuthAppColors.borderGrey, width: 1),
                ),
              ),
              padding: EdgeInsets.only(left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topLabel,
                    style: Theme.of(context).textTheme.headline6.merge(
                          TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                  ),
                  Text(
                    bottomLabel,
                    style: Theme.of(context).textTheme.headline6.merge(
                          TextStyle(color: AuthAppColors.white),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
