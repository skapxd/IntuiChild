import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/animated_Logo.dart';
import 'package:intui_child/app/modules/splash/splash_Controller.dart';

class SplashPage extends StatelessWidget {
  static final String routName = '';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  begin: _.begin,
                  end: Alignment.bottomCenter,
                  colors: [
                    _.first,
                    _.second,
                    _.three,
                    // _.fourd
                    // _.three,
                  ],
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.35,
              child: AnimatedLogo(),
              left: Get.width * 0.40,
            )
          ],
        ),
      ),
    );
  }
}
