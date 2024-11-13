import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/servicesItems.dart';
import 'package:bookingweddingapp/src/features/core/screen/Home/search_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_details.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/widget/serviceView_widget.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/widget/servicesItems_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesDispalyScreen extends StatelessWidget {
  const ServicesDispalyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
               
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(
                onPressed: ()
                {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back),
              ),
                  Text(
                    "اسم الخدمه",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  IconButton(
                    onPressed: ()
                      {
                        Get.to(()=> SearchScreen());
                      },
                      icon: Icon(Icons.search)),
                ],
              ),
            ),
            Expanded(
                child: Container(
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 15),
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
                        Get.to(() => ServicesDetails());
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
                                          AssetImage(anClothesImage),
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
                                Text("مقدم الخدمة",style: txtTheme.bodyLarge!.copyWith(color: anDarkColor,fontWeight: FontWeight.bold),),
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
