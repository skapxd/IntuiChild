import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/modules/home/home_Page.dart';

class SplashController extends GetxController {
  Alignment begin = Alignment.center;

  double fTop = Get.height * 0.45;

  Color first = Colors.black;
  Color second = Colors.deepPurple[900];

  Color three = Colors.deepPurple[800];
  Color fourd = Colors.blue[900];

  @override
  void onInit() {
    // TODO: implement onReady
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(Duration(seconds: 1)).then((value) {
      fTop = Get.height * 0.5;
      begin = Alignment.topCenter;
      int times = 3;
      for (var i = 0; i < times; i++) {}
      update();
    });
  }
}
