import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: anPrimaryColor,
      backgroundColor: anSeconderyColor,
      side: BorderSide(color: anPrimaryColor),
      padding: EdgeInsets.symmetric(vertical: anButtonHeight),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: anSeconderyColor,
      backgroundColor: anWhiteColor,
      side: BorderSide(color: anPrimaryColor),
      padding: EdgeInsets.symmetric(vertical: anButtonHeight),
    ),
  );

}