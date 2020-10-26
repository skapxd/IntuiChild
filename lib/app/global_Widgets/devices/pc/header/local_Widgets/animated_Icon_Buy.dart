import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/theme/header_Theme_Pc.dart';

import '../header_Controller.dart';

class AnimatedBuy extends StatefulWidget {
  // final forward;
  @override
  _AnimatedBuyState createState() => _AnimatedBuyState();
}

class _AnimatedBuyState extends State<AnimatedBuy>
    with SingleTickerProviderStateMixin {
  Animation<Color> color;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    color = ColorTween(begin: HeaderThemePc.text, end: Color(0xffa55afd))
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    controller.addListener(() {
      // print('Status: ${controller.status}');

      if (controller.status == AnimationStatus.completed) {
        controller.reverse();
      } else if (controller.status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    // controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HeaderController>(
      init: HeaderController(),
      initState: (_) {},
      builder: (_) {
        return AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, Widget child) {
            if (_.hoverIconCart) {
              controller.forward();
            } else {
              controller.reverse();
            }
            return Icon(
              FontAwesomeIcons.cartArrowDown,
              color: color.value,
            );
          },
        );
      },
    );
  }
}
