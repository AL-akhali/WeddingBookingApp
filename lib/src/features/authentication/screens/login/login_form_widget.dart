import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/features/authentication/controllers/secure_controller.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/forget_password/forget_password_option/forget_password_model_btn_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';
import '../forget_password/forget_password_option/forget_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final secureController = Get.put(SecureController());
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: "البريد الاكتروني",
                  hintText: "البريد الاكتروني",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            Obx(()=>
            TextFormField(
              obscureText: secureController.isPasswordHidden.value,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "كلمة المرور",
                hintText: "كلمة الامرور",
                border: OutlineInputBorder(),
                suffixIcon: InkWell(
                    onTap: ()
                    {
                      secureController.isPasswordHidden.value =
                          !secureController.isPasswordHidden.value;
                    },
                    child:Icon(secureController.isPasswordHidden.value?
                    Icons.remove_red_eye_sharp:Icons.visibility_off)),
              ),
            ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                  onPressed: ()
                  {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: Text("لقد نسيت كلمة المرور")
              ),
            ),
            SizedBox(width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("تسجيل الدخول ")),
            ),
          ],
        ),
      ),
    );
  }

}



