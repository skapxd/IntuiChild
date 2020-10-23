import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/animated_Logo.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/header_Page.dart';
import 'package:intui_child/app/theme/background.dart';

import 'home_Controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            Background.background(),

            // PC
            context.width < 770 ? Container() : HeaderPagePC()
          ],
        ),
      ),
    );
  }
}
