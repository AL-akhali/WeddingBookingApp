import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/Home/home_Screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/Layout/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/on_boarding_model.dart';
import '../login/login_screen.dart';
import '../signup/signup_screen.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(anDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.5,
          ),
          Center(
            child: Column(
              children: [
                Text(model.title,
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: anDarkColor)),
                Text(
                  model.subTitle,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            children: [
              Expanded(
                  child: OutlinedButton(
                    onPressed: () => Get.to(()=> LoginScreen()),
                    child: Text(anLogin),
                  )),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () => Get.to(()=> SignupScreen()),
                      child: Text(anRegister))
              ),
            ],
          ),
          MaterialButton(onPressed: () => Get.to(()=> LayoutScreen()),
            child: Text("الدخول كازائر",style: TextStyle(color: anSeconderyColor),),
          ),
        ],
      ),
    );
  }
}
