import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/constants/image_string.dart';
import 'package:bookingweddingapp/src/features/core/screen/cart/cart_screen.dart';
import 'package:bookingweddingapp/src/features/core/screen/services/message_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controller/calender_controller.dart';
import '../payments/payments_screen.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final calnderController = Get.put(CalenderController());

    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("اسم البــاقة")),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => CartScreen());
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: anWhiteColor,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 8.0, right: 8.0),
              child: IconButton(
                onPressed: () => print("اضافة اللى قائمة الحجوزات"),
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: anPrimaryColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 8.0,
              ),
              child: IconButton(
                onPressed: ()
                {
                  Get.to(()=>MessageScreen());
                },
                icon: Icon(
                  Icons.chat,
                  color: anPrimaryColor,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 52.0,
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
                    style: txtTheme.bodyMedium!
                        .copyWith(fontSize: 18, color: anDarkColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //الصوره
            Stack(
              children: [
                Container(
                  height: 250,
                  child: PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        anSingerImage,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 0.0,
                  right: 0.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      1,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        height: 8.0,
                        width: 24.0,
                        decoration: BoxDecoration(
                            color: anPrimaryColor,
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: anCardBgColor,
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    // العنوان
                    child: Text(
                      "عنوان الباقة",
                      style: txtTheme.headlineLarge!.copyWith(
                        color: anWhiteColor,
                        fontSize: 30
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  //السعر
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text(
                      "المبلغ",
                      style: txtTheme.bodyMedium!.copyWith(fontSize: 20.0),
                    ),
                  ),
                  Divider(),
                  //وعدد الحجوزات و التقييم
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
                        decoration: BoxDecoration(
                          color: anPrimaryColor,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "8.9",
                              style:
                                  TextStyle(color: anWhiteColor, fontSize: 18.0)),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.top,
                            child: Icon(
                              Icons.star,
                              size: 16.0,
                              color: Colors.orange,
                            ),
                          ),
                        ])),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 150.0),
                        child: Text(
                          "${81} عدد الحجوزات",
                          style: TextStyle(
                              color: anDarkColor.withOpacity(0.4), fontSize: 18.0),
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                  // التاريخ
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      MaterialButton(
                        color: anPrimaryColor,
                          height: 20,
                          onPressed: ()
                          {
                            calnderController.chooseDate();
                          },
                          child: Text("اختار تاريخ الحجز : ")
                      ),
                      Obx(
                            () => Text(
                          DateFormat("dd-mm-yyyy")
                              .format(calnderController.selectedData.value)
                              .toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  // الوصف
                  Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: anCardBgColor,
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                      child: Text("الوصف :",style: txtTheme.bodyMedium!.copyWith(fontSize: 20.0,color: anWhiteColor),)),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Text("هنا وصف الباقة المقدمه",style: txtTheme.bodyMedium!.copyWith(fontSize: 16.0),),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
