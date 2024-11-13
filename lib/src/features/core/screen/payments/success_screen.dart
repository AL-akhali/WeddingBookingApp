import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/features/core/screen/Layout/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_string.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(anSuccessGif)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 4),
                child: Text("تمت بنجاح ",style: txtTheme.displayMedium!.copyWith(
                    color: anDarkColor,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 4),
                child: Text("طريقة دفعك تمت بنجاح ",style: txtTheme.bodyLarge!.copyWith(
                    color: anDarkColor,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.maxFinite,

                child: MaterialButton(
                  onPressed: ()
                  {
                    Get.to(()=> LayoutScreen());
                  },
                  padding: EdgeInsets.symmetric(vertical: 2),
                  color: anPrimaryColor,
                  textColor: anDarkColor,
                  child: Text(
                    "موافق",
                    style: txtTheme.bodyMedium!
                        .copyWith(fontSize: 18, color: anDarkColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
