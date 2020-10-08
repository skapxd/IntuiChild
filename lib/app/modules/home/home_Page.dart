import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_Controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (_) => Scaffold(
        backgroundColor: _.color == null ? Colors.red : _.color,
      ),
    );
  }
}
