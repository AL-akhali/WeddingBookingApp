import 'package:bookingweddingapp/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:bookingweddingapp/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffffc6cc),
          Color(0xfffddcdf),
        ])),
        child: Column(
          children: [
            TFadeInAnimation(
              durationInMs: 2000,
              child: Padding(
                padding: const EdgeInsets.only(top: 100,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      anAppName,
                      style: TextStyle(
                        fontFamily: "Marhey",
                          fontWeight: FontWeight.bold,
                          fontSize: 70,
                          shadows: [
                            Shadow(
                                color: anWhiteColor,
                                offset: Offset.infinite,
                                blurRadius: 0.4)
                          ]),
                    ),
                    Text(
                      anAPPTagLine,
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: anSeconderyColor),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: TFadeInAnimation(
              durationInMs: 1600,
              animatePostion: TAnimatePostion(
                  topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
              child: Image(
                image: AssetImage(anSplashImage),
                width: 300,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
