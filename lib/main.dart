import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/modules/home/home_Binding.dart';
import 'package:intui_child/app/modules/home/home_Page.dart';
import 'package:intui_child/app/routes/app_Pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pyndele',
      home: HomePage(),
      getPages: AppPage.pages,
      initialBinding: HomeBinding(),
    );
  }
}
