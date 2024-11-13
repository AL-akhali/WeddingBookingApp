import 'package:bookingweddingapp/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
      [
        Text("او"),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(image: AssetImage(anGoogleLogo),width: 20.0,),
              onPressed: (){},
              label: Text("سجل عبر جوجل")),
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () => Get.to(()=> SignupScreen()),
          child: Text.rich(
            TextSpan(
                text: anDontHaveAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children:
                [
                  TextSpan(
                      text:" عمل حساب ",
                      style: TextStyle(color: Colors.blue)
                  )
                ]
            ),
          ),
        ),
      ],
    );
  }
}
