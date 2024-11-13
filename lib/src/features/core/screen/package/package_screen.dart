import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/package/package_details.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/profile_screen.dart';

class PackageScreen extends StatelessWidget {
  const PackageScreen({super.key});

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
        title: Text("البـاقــات",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => Get.to(()=> ProfileScreen()),
            icon: Icon(Icons.account_circle,color: anAccentColor,),
          ),
        ],
      ),

      body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                      child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.70,
                          ),
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => PackageDetails());
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: anPrimaryColor),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                      ),
                                      child: Stack(
                                        children: [
                                          Center(
                                            child: CircleAvatar(
                                              radius: 200,
                                              backgroundColor: Colors.white,
                                              backgroundImage:
                                              AssetImage(anDashBannerImage2),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    decoration: BoxDecoration(
                                      color: anPrimaryColor,
                                      border: Border.all(color: anPrimaryColor),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20)),
                                    ),
                                    child: Column(
                                      children: [
                                        Text("اسم البـــاقة",style: txtTheme.bodyLarge!.copyWith(color: anDarkColor,fontWeight: FontWeight.bold),),
                                        Text("السعر",style: TextStyle(color: anDarkColor),),
                                        Center(
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 14.0, vertical: 4.0),
                                            child: Text.rich(TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "8.9",
                                                  style: TextStyle(
                                                      color: anWhiteColor,
                                                      fontSize: 18.0
                                                  ),
                                                ),
                                                WidgetSpan(
                                                  alignment: PlaceholderAlignment.top,
                                                  child: Icon(
                                                    Icons.star,
                                                    size: 16.0,
                                                    color: Colors.orange,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )),
              ],
            ),
          )),
    );
  }
}
