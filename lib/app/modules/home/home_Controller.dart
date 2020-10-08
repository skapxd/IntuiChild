import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Color color;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    color = Colors.blue;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    Future.delayed(Duration(seconds: 1)).then((value) {
      // color = Colors.red;
      // update();
    });
  }
}
