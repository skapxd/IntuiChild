import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/header_Controller.dart';

class Background {
  static background() {
    return GetBuilder<HeaderController>(
      init: HeaderController(),
      initState: (_) {},
      builder: (_) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.deepPurple[900],
                Colors.deepPurple[800],
              ],
            ),
          ),
        );
      },
    );
  }
}
