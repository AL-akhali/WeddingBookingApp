import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

  final obcontroller = OnBoardingController();

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangeCallback ,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableLoop: false,
            enableSideReveal: true,
            positionSlideIcon: 0.7 ,
          ),
          Obx(
            () => Positioned(
              bottom: 200,
                right: 140,
                child: AnimatedSmoothIndicator(
              activeIndex: obcontroller.currentPage.value,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: anPrimaryColor,
                dotHeight: 5.0
                  ),
            )),
          )
        ],
      ),
    );
  }
}
