import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/secure_controller.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final secureController = Get.put(SecureController());
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            TextFormField(
              decoration: InputDecoration(
                label: Text("الاسم كامل"),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text("البريد الاكتروني"),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text("رقم الهاتف"),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                label: Text("العنوان"),
                prefixIcon: Icon(Icons.location_on),
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
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("عمل حساب")),
            ),
          ],
        ),
      ),
    );
  }
}
