import 'package:flutter/material.dart';

import '../../constants/image_string.dart';
import '../../constants/text_string.dart';


class FormHeader extends StatelessWidget {
  const FormHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageColor,
    this.heightBetween,
    this.imageHeight =0.2,
    this.crossAxisAlignment=CrossAxisAlignment.start,
    this.textAlign,
  });

  final String image , title, subTitle;
  final Color? imageColor;
  final double? heightBetween;
  final double imageHeight;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(image: AssetImage(image),height: size.height * imageHeight,),
        Text(title,textAlign: textAlign,style: Theme.of(context).textTheme.displayLarge,),
        Text(subTitle,textAlign: textAlign,style: Theme.of(context).textTheme.bodyLarge,),
      ],
    );
  }
}
