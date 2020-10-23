import 'package:flutter/material.dart';

class AnimatedLogo extends StatefulWidget {
  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  Animation<double> rotation;
  AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    rotation = Tween(begin: 0.0, end: 50.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.ease));

    controller.addListener(() {
      print('Status: ${controller.status}');

      if (controller.status == AnimationStatus.completed) {
        controller.reverse();
      } else if (controller.status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        print(rotation.value);
        return Transform.translate(
          offset: Offset(0, rotation.value),
          child: Image.network(
            'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
            height: 100,
          ),
        );
      },
    );
  }
}
