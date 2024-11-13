import 'package:bookingweddingapp/src/features/authentication/screens/login/login_screen.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/Home/home_Screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/Layout/layout_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/package/package_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/payments/payments_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_details.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_dispaly_screen.dart';
import 'package:bookingweddingapp/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  await GetStorage.init();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale("ar"),
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: TAppTheme().getThemeMode(),
      debugShowCheckedModeBanner: false,
      transitionDuration: Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}