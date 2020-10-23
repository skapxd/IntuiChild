import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/routes/app_Pages.dart';

import 'app/modules/splash/splash_Binding.dart';
import 'app/modules/splash/splash_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pyndele',
      home: SplashPage(),
      getPages: AppPage.pages,
      initialBinding: SplashBinding(),
    );
  }
}
