import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(anDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              anForgetPasswordTitle,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              anForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: 'البريد الاكتروني',
              subTitle: anResetViaEmail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordMail());
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: 'رقم الهاتف',
              subTitle: anResetViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => ForgetPasswordPhone());
              },
            ),
          ],
        ),
      ),
    );
  }
}
