import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TextFormTheme{
  TextFormTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor:anSeconderyColor,
      floatingLabelStyle : TextStyle(color: anSeconderyColor),
      focusedBorder: OutlineInputBorder(
        borderSide:BorderSide(width: 2.0,color: anSeconderyColor),
      )
  );

  static InputDecorationTheme darkInputDecorationTheme =
  InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor:anPrimaryColor,
      floatingLabelStyle : TextStyle(color: anPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderSide:BorderSide(width: 2.0,color: anPrimaryColor),
      )
  );

}