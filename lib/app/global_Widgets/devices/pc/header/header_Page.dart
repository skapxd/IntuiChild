import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'header_Controller.dart';

class HeaderPagePC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HeaderController>(
      init: HeaderController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Image.network(
              'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
              height: 70,
            ),
            SizedBox(
              width: context.width * 0.24,
            ),
            InkWell(
              onTap: () {},
              hoverColor: Colors.amberAccent,
              onHover: (value) => _.hoverContenido = value,
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 150),
                style: TextStyle(
                  color: _.hoverContenido ? Color(0xffa55afd) : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                child: Text(
                  'Contenidos',
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),
            Text(
              'Master Class',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),
            Text(
              'Casos',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),
            Text(
              'Proximos',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),
            Text(
              'Full',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              width: context.width * 0.09,
            ),
            Icon(
              FontAwesomeIcons.cartArrowDown,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
