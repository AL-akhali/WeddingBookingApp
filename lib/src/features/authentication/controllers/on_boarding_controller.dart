import 'package:bookingweddingapp/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_string.dart';
import '../models/on_boarding_model.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: anOnBoardingImage1,
        title: anOnBoardingTitle1,
        subTitle: anOnBoardingSubTitle1,
        counterText: anOnBoardingCounter1,
        bgColor: anOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: anOnBoardingImage2,
        title: anOnBoardingTitle2,
        subTitle: anOnBoardingSubTitle2,
        counterText: anOnBoardingCounter2,
        bgColor: anOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: anOnBoardingImage3,
        title: anOnBoardingTitle3,
        subTitle: anOnBoardingSubTitle3,
        counterText: anOnBoardingCounter3,
        bgColor: anOnBoardingPage3Color,
      ),
    ),
  ];



  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;

  }
}