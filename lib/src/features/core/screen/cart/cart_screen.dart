import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/payments/payments_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/profile_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context)
                  {
                    return Container(
                      color: anPrimaryColor,
                      height: 150.0,
                      padding: EdgeInsets.symmetric(horizontal: 32.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children:
                        [
                          Text("هل انت متاكد من مغادرة التطبيق ؟",
                            style: TextStyle(
                              color: anDarkColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                          Row(
                            children:
                            [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: ()
                                  {
                                    Navigator.of(context).pop();
                                  },
                                  color: anWhiteColor,
                                  child: Text("تسجيل الخروج",
                                    style:TextStyle(
                                      color: anPrimaryColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ) ,),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: ()
                                  {
                                    Navigator.of(context).pop();
                                  },
                                  color: anPrimaryColor,
                                  child: Text("الغـــاء",
                                    style:TextStyle(
                                      color: anWhiteColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ) ,),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
              );
            },
            icon: Icon(Icons.power_settings_new_outlined)
        ),
        backgroundColor: anCardBgColor,
        title: Text("الحـــجــوزات",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => Get.to(()=> ProfileScreen()),
            icon: Icon(Icons.account_circle,color: anAccentColor,),
          ),
        ],
      ),

      bottomNavigationBar: Material(
        color: anWhiteColor,
        child: Row(
          children: [
            Expanded(
              child: Text(
                "المجموع : 395",
                textAlign: TextAlign.center,
                style: txtTheme.bodyMedium!.copyWith(
                  color: anDarkColor
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: ()
                {
                  Get.to(()=>PaymentsScreen());
                },
                padding: EdgeInsets.symmetric(vertical: 2),
                color: anPrimaryColor,
                textColor: anDarkColor,
                child: Text(
                  "ادفع",
                  style: txtTheme.bodyMedium!.copyWith(fontSize: 18,color: anDarkColor),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 5,left: 5,right: 5),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(color: anPrimaryColor)),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(anReservrImage),
                    height: 110,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "العنوان",
                            overflow: TextOverflow.ellipsis,
                            style: txtTheme.headlineLarge!.copyWith(fontSize: 20),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "الوصف",
                            overflow: TextOverflow.ellipsis,
                            style: txtTheme.bodyLarge!
                                .copyWith(fontSize: 12.0, color: Colors.grey),
                          ),
                          SizedBox(height: 5,),
                          Text("السعر"),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: anCardBgColor,
                                  )),
                              Container(
                                width: 80.0,
                                height: 44.0,
                                padding: EdgeInsets.only(top: 22.0),
                                color: Colors.grey[300],
                                child: TextField(
                                  cursorHeight: 44.0,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "0",
                                    hintStyle: TextStyle(color: anDarkColor),
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle,
                                    color: anCardBgColor,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
