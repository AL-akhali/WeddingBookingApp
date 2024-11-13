import 'package:bookingweddingapp/src/utils/theme/widget_themes/btn_nav_theme.dart';
import 'package:bookingweddingapp/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:bookingweddingapp/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:bookingweddingapp/src/utils/theme/widget_themes/text_form_theme.dart';
import 'package:bookingweddingapp/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {


  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TextFormTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TextFormTheme.darkInputDecorationTheme,
  );

  final _getStorage = GetStorage();
  final _getDarkKey = "isDarkTheme";

  void saveThemeData(bool isDarkMode) {
    _getStorage.write(_getDarkKey,isDarkMode);
  }

  bool isSaveDarkMode() {
    return _getStorage.read(_getDarkKey)?? false;
  }

  ThemeMode getThemeMode() {
    return isSaveDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void changeTheme() {
    Get.changeThemeMode(isSaveDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeData(!isSaveDarkMode());
  }
}