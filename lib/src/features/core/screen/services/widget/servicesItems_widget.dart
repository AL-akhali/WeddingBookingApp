import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:flutter/material.dart';

class ServicesItem extends StatelessWidget {
   ServicesItem({
    super.key,
    required this.txtTheme,
    this.height,
    this.width,
    this.radius,
    this.titleSize,
    this.image,
    this.title,
    this.color,
    this.paddingV,
    this.paddingH,
    required this.onTap,
  });

  final TextTheme txtTheme;
  final double? height,width,radius,titleSize,paddingV,paddingH;
  final String? image,title;
  final Color? color;
  late VoidCallback onTap;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: paddingV!,horizontal: paddingH!),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius!),
                border: Border.all(color: Colors.grey,width: 2),
                image: DecorationImage(image: AssetImage(image!),
                fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black45, BlendMode.hardLight)
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 30,
                width: 170,
                decoration: BoxDecoration(
                  color: anPrimaryColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                ),
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                        text: title,
                        style:
                        txtTheme.headlineLarge!.copyWith(fontSize: titleSize,color: anDarkColor)),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
