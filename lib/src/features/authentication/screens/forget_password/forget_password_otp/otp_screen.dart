import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(anDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(anOtpTitle,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),),
            Text(anOtpSubTitle,style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 40.0,),
            Text(anOtpMessage,textAlign: TextAlign.center,),
            SizedBox(height: 20.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code)
                {
                  print("الرمز هو => ${code}");
                },
              ),
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("التالي"),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
