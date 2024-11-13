import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:flutter/material.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  title: anLoginTitle,
                  subTitle: anLoginSubTitle,
                ),
                LoginForm(),
                LoginFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



