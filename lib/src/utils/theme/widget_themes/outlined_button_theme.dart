import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: anSeconderyColor,
      side: BorderSide(color: anSeconderyColor),
      padding: EdgeInsets.symmetric(vertical: anButtonHeight),
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      backgroundColor: anPrimaryColor,
      foregroundColor: anWhiteColor,
      side: BorderSide(color: anWhiteColor),
      padding: EdgeInsets.symmetric(vertical: anButtonHeight),
    ),
  );

}