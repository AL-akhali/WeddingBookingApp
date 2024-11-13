import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalenderController extends GetxController{
  var selectedData = DateTime.now().obs;

  chooseDate()async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        firstDate: DateTime(2000),
        lastDate: DateTime(2030),
      initialEntryMode: DatePickerEntryMode.input,
      initialDatePickerMode: DatePickerMode.year,

    );
    if (pickedDate != null && pickedDate != selectedData.value)
      {
        selectedData.value =pickedDate;
      }
  }

}