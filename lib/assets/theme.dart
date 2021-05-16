import 'package:auth_app/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

generateTheme() => ThemeData(
      fontFamily: 'Roboto',
      primarySwatch: AuthAppColors.white,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: AuthAppColors.primaryGrey,
        ),
        elevation: 0,
        textTheme: TextTheme(
          headline6: TextStyle(
            color: AuthAppColors.primaryGrey,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      scaffoldBackgroundColor: AuthAppColors.white,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          fontSize: 16,
          color: AuthAppColors.mediumGrey,
        ),
        contentPadding: EdgeInsets.all(22),
        enabledBorder: InputBorder.none,
        filled: true,
        border: InputBorder.none,
        fillColor: AuthAppColors.lightGrey,
        focusedBorder: InputBorder.none,
        labelStyle: TextStyle(
          fontSize: 16,
          color: AuthAppColors.mediumGrey,
        ),
        errorStyle: TextStyle(
          color: AuthAppColors.primaryOrange,
        ),
      ),
      textButtonTheme: TextButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            AuthAppColors.primaryGreen,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            AuthAppColors.white,
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: AuthAppColors.darkGrey),
        headline6: TextStyle(
          color: AuthAppColors.darkGrey,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        bodyText2: TextStyle(
          color: AuthAppColors.darkGrey,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ), // style for Text
      ),
    );
