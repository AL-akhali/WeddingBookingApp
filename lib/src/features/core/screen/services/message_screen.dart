import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back,color: anPrimaryColor,)
        ),
        title: Text("الــرســـائــل",style: TextStyle(color: anPrimaryColor),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(anChatGif,),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 4),
                child: Text("لاتوجد رسائل حالياً",style: txtTheme.displayMedium!.copyWith(
                    color: anDarkColor,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.maxFinite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
