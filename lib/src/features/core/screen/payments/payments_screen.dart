import 'package:bookingweddingapp/src/constants/colors.dart';
import 'package:bookingweddingapp/src/features/core/screen/payments/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentsScreen extends StatefulWidget {
  PaymentsScreen({super.key});

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  int value = 0;

  final paymentLabels = [
    "الكريمي",
    "ون كاش",
    "مباشر",
  ];
  final paymentIcons = [
    Icons.payment,
    Icons.wallet,
    Icons.money_off,
  ];


  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(" الدفـــع"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("اختار طريقة الدفع : ",style: txtTheme.bodyLarge!.copyWith(
              color: anDarkColor,
              fontWeight: FontWeight.bold
            ),),
          ),
          Expanded(
            child: ListView.separated(
                itemCount: paymentLabels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                      activeColor: anPrimaryColor,
                      groupValue: value,
                      onChanged: (i) => setState(() => value = i!),
                      value: index,
                    ),
                    title: Text(
                      paymentLabels[index],
                      style: TextStyle(color: anDarkColor),
                    ),
                    trailing: Icon(paymentIcons[index],color: anDarkColor),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                }),
          ),
          Container(
            width: double.maxFinite,
            child: MaterialButton(
              onPressed: ()
              {
                Get.to(()=> SuccessScreen());
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
        ],
      ),
    );
  }
}
