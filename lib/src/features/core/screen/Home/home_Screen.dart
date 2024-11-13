import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/constants/sizes.dart';
import 'package:bookingweddingapp/src/constants/text_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/Home/search_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/cart/cart_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/package/package_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_dispaly_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
                              color:anDarkColor,
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
        title: Text("زفــــــة",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => Get.to(()=> ProfileScreen()),
            icon: Icon(Icons.account_circle,color: anAccentColor,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(anDashTilte, style: txtTheme.bodyMedium),
              Text(
                anDashHeading,
                style: txtTheme.displayMedium,
              ),
              SizedBox(
                height: anDashboardPadding,
              ),
              //حق البحث
              InkWell(
                onTap: ()
                {
                  Get.to(()=> SearchScreen());
                },
                child: Container(
                  decoration:
                      BoxDecoration(border: Border(right: BorderSide(width: 4))),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        anDashSearch,
                        style: txtTheme.bodyLarge?.apply(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: anDashboardPadding,
              ),

              //الخدمات
              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon: Image(image: AssetImage(anOnBoardingImage1),),
                      title: "فنانين",
                      subTitle: "احصل على فنانك",
                    ),
                    SizedBox(
                      width: anDashboardCardPadding,
                    ),
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon: Image(image: AssetImage(anOnBoardingImage2),),
                      title: "قاعات",
                      subTitle: "اجمل القاعات هنا",
                    ),
                    SizedBox(
                      width: anDashboardCardPadding,
                    ),
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon:Image(image: AssetImage(anServiceImage1),),
                      title: "ضيافة",
                      subTitle: "اجمل تشكيلات الضياقة",
                    ),
                    SizedBox(
                      width: anDashboardCardPadding,
                    ),
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon: Image(image: AssetImage(anServiceImage2),),
                      title: "بدلات",
                      subTitle: "طقومات من اجمل الاشكال ",
                    ),
                    SizedBox(
                      width: anDashboardCardPadding,
                    ),
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon: Image(image: AssetImage(anServiceImage3),),
                      title: "تجميل",
                      subTitle: "تزين لحفلتك باجمل الطلات ",
                    ),
                    SizedBox(
                      width: anDashboardCardPadding,
                    ),
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon: Image(image: AssetImage(anServiceImage4),),
                      title: "سيارات",
                      subTitle: "تزيين واستئجار اجمل السيارات",
                    ),
                    SizedBox(
                      width: anDashboardCardPadding,
                    ),
                    SevicesWidget(
                      txtTheme: txtTheme,
                      imageIcon: Image(image: AssetImage(anServiceImage5),),
                      title: "تصوير",
                      subTitle: "اهتم بذكريات مع التصوير ",
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: anDashboardPadding,
              ),
              //الاقسام
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // الباقات
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: anPrimaryColor),
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Image(
                                image: AssetImage(anDashBannerImage2),
                                height: 200,
                              )),
                            ],
                          ),
                          Text(
                            anDashBannerTitle1,
                            style: txtTheme.headlineMedium!
                                .apply(color: anDarkColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            anDashBannerTitle2,
                            style:
                                txtTheme.bodyMedium!.apply(color: anDarkColor),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: ()
                              {
                                Get.to(()=>PackageScreen());
                              },
                              child: Text(
                                anDashButton,
                                style: TextStyle(color: anDarkColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: anDashboardCardPadding,
                  ),
                  // الخدماات
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: anPrimaryColor),
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Image(
                                  image: AssetImage(anDashBannerImage1),
                                  height: 200,
                                )),
                              ],
                            ),
                            Text(
                              anDashBannerTitle3,
                              style: txtTheme.headlineMedium!
                                  .apply(color: anDarkColor),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              anDashBannerTitle4,
                              style:
                                  txtTheme.bodyMedium!.apply(color: anDarkColor),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: () {
                                  Get.to(()=> ServicesScreen());
                                },
                                child: Text(
                                  anDashButton,
                                  style: TextStyle(color: anDarkColor),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),

              SizedBox(
                height: anDashboardPadding,
              ),
              // الحجز
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: anCardBgColor),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        anDashBannerTitle5,
                        style:
                            txtTheme.headlineMedium!.apply(color: anDarkColor),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(),
                            color: anPrimaryColor),
                        child: IconButton(
                          onPressed: ()
                          {
                            Get.to(()=> CartScreen());
                          },
                          icon: Icon(
                            Icons.shopping_cart,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SevicesWidget extends StatelessWidget {
  const SevicesWidget({
    super.key,
    required this.txtTheme,
    required this.imageIcon,
    required this.title,
    required this.subTitle,
  });

  final TextTheme txtTheme;
  final Image imageIcon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Get.to(()=>ServicesDispalyScreen());
      },
      child: SizedBox(
        width: 145,
        height: 50,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 1,),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: anPrimaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: imageIcon
              ),
              SizedBox(width: 7,),
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: txtTheme.bodyMedium!.copyWith(fontSize: 14,color: anDarkColor,fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    subTitle,
                    style: txtTheme.titleLarge!.copyWith(fontSize: 12 ,color: anDarkColor),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
