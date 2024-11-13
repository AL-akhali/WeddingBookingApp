import 'package:bookingweddingapp/src/common_widgets/form/form_header_widget.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordPhone extends StatelessWidget {
  const ForgetPasswordPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(anDefaultSize),
            child: Column(
              children:
              [
                SizedBox(height: anDefaultSize * 3,),
                FormHeader(
                  image: anForgetPasswordImage,
                  title: "نسيت الرمز",
                  subTitle: anForgetPasswordSubTitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0,),
                Form(
                    child: Column(
                      children:
                      [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text("رقم الهاتف"),
                            hintText: "رقم الهاتف",
                            prefixIcon: Icon(Icons.mail_outline_rounded),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        SizedBox(
                          width: double.infinity,child: ElevatedButton(
                          onPressed: (){
                            Get.to(() => OtpScreen());
                          },
                          child:Text("التالي"),
                        ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
