import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/modules/home/home_Page.dart';

class SplashController extends GetxController {
  Alignment begin = Alignment.center;
  // Color first = Colors.deepPurple[700];
  // Color second = Colors.deepPurple[800];
  // Color three = Colors.deepPurple[900];

  Color first = Colors.black;
  Color second = Colors.deepPurple[900];
  // Color three = Colors.blue[900];
  @override
  void onInit() {
    // TODO: implement onReady
    super.onInit();
    Future.delayed(Duration(seconds: 1)).then((value) {
      begin = Alignment.topCenter;
      update();
    });
  }
}
