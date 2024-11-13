import 'package:bookingweddingapp/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:bookingweddingapp/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/sizes.dart';
import '../../constants/text_string.dart';
import '../../features/authentication/controllers/splash_screen_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMs,
    this.animatePostion,
    required this.child,

  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePostion? animatePostion;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        child: Positioned(
          top: controller.animate.value ? animatePostion?.topAfter : animatePostion?.topBefore,
          right: controller.animate.value ? animatePostion?.rightAfter : animatePostion?.rightBefore,
          left: controller.animate.value ? animatePostion?.leftAfter : animatePostion?.leftBefore,
          bottom: controller.animate.value ? animatePostion?.bottomAfter : animatePostion?.bottomBefore,          child: AnimatedOpacity(
              duration: Duration(milliseconds: durationInMs),
              opacity: controller.animate.value ? 1 : 0,
              child:child,

        ),
        ),
      ),
    );
  }
}
