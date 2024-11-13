import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/servicesItems.dart';
import 'package:bookingweddingapp/src/features/core/models/services_model.dart';
import 'package:bookingweddingapp/src/features/core/screen/Home/search_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_details.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_dispaly_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/widget/serviceView_widget.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/widget/servicesItems_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/profile_screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

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
        title: Text("الـــخدمـــات",style: TextStyle(color: Colors.black),),
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
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 0,),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio: 0.8,
                          ),
                          itemCount: ServicesList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => ServicesDispalyScreen());
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //الصوؤة
                                  Expanded(
                                    child: Container(
                                      width:MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage(ServicesList[index].image!),
                                            fit: BoxFit.cover,
                                            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.hardLight)
                                        ),
                                        border: Border.all(color: anPrimaryColor),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20)),
                                      ),
                                    ),
                                  ),
                                  //العنوان
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
                                        Text(ServicesList[index].categort!,style: txtTheme.bodyLarge!.copyWith(color: anDarkColor,fontWeight: FontWeight.bold,fontSize: 14),),
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
