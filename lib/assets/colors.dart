import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:auth_app/utils/createMaterialColor.dart';

class AuthAppColors {
  static MaterialColor white = createMaterialColor(
    Color.fromRGBO(255, 255, 255, 1),
  );
  static MaterialColor primaryGreen = createMaterialColor(
    Color.fromRGBO(32, 195, 175, 1),
  );
  static MaterialColor primaryGrey = createMaterialColor(
    Color.fromRGBO(82, 84, 100, 1),
  );
  static MaterialColor lightGrey = createMaterialColor(
    Color.fromRGBO(247, 247, 247, 1),
  );
  static MaterialColor mediumGrey = createMaterialColor(
    Color.fromRGBO(176, 176, 195, 1),
  );
  static MaterialColor darkGrey = createMaterialColor(
    Color.fromRGBO(131, 131, 145, 1),
  );
  static MaterialColor borderGrey = createMaterialColor(
    Color.fromRGBO(226, 226, 224, 1),
  );
  static MaterialColor primaryOrange = createMaterialColor(
    Color.fromRGBO(255, 177, 157, 1),
  );
  static MaterialColor errorRed = createMaterialColor(
    Color.fromRGBO(227, 0, 0, 1),
  );
}
