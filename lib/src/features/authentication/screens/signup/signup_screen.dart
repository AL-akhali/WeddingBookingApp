import 'package:bookingweddingapp/src/common_widgets/form/form_header_widget.dart';
import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/login/login_footer_widget.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/login/login_screen.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/signup/signup_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(anDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeader(
                  image: anWelcomeScreenImage,
                  title: anRegisterTitle,
                  subTitle: anRegisterSubTitle,
                ),
                SignUpForm(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("او"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          icon: Image(
                            image: AssetImage(anGoogleLogo),
                            width: 20.0,
                          ),
                          onPressed: () {},
                          label: Text("سجل عبر جوجل")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () => Get.to(()=> LoginScreen()),
                      child: Text.rich(
                        TextSpan(
                            text: anAlaredyHaveAccount,
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: [
                              TextSpan(
                                  text: " سجل دخولك ",
                                  style: TextStyle(color: Colors.blue))
                            ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
