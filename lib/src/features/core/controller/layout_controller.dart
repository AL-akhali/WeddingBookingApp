import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  var currentIndex = 0.obs;
  var textValue =0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  void increaseValue() {
    textValue.value++;
  }

}