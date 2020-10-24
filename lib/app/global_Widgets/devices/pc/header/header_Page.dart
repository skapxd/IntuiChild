import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/local_Widgets/animated_Icon_Buy.dart';
import 'package:intui_child/app/theme/header_Theme_Pc.dart';

import 'header_Controller.dart';

class HeaderPagePC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HeaderController>(
      init: HeaderController(),
      builder: (_) => Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: Image.network(
                'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
                height: 70,
              ),
            ),
            Expanded(
              child: Container(),
              flex: 20,
            ),

            // Contenidos
            InkWell(
              onTap: () {},
              onHover: (value) => _.hoverContenido = value,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                width: 100,
                alignment: Alignment.bottomCenter,
                height: 50,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 150),
                  style: TextStyle(
                    color: _.hoverContenido
                        ? Color(0xffa55afd)
                        : HeaderThemePc.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: Text(
                    'Contenidos',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),

            // Master Class
            InkWell(
              onTap: () {},
              onHover: (value) => _.hoverMasterClass = value,
              child: Container(
                width: 100,
                alignment: Alignment.bottomCenter,
                height: 50,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 150),
                  style: TextStyle(
                    color: _.hoverMasterClass
                        ? Color(0xffa55afd)
                        : HeaderThemePc.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: Text(
                    'Master Class',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),

            // Casos
            InkWell(
              onTap: () {},
              onHover: (value) => _.hoverCasos = value,
              child: Container(
                width: 100,
                alignment: Alignment.bottomCenter,
                height: 50,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 150),
                  style: TextStyle(
                    color:
                        _.hoverCasos ? Color(0xffa55afd) : HeaderThemePc.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: Text(
                    'Casos',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),

            // Proximos
            InkWell(
              onTap: () {},
              onHover: (value) => _.hoverProximos = value,
              child: Container(
                // width: 100,
                alignment: Alignment.bottomCenter,
                height: 50,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 150),
                  style: TextStyle(
                    color: _.hoverProximos
                        ? Color(0xffa55afd)
                        : HeaderThemePc.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: Text(
                    'Proximos',
                  ),
                ),
              ),
            ),
            SizedBox(
              width: context.width * 0.02,
            ),

            // Full
            InkWell(
              onTap: () {},
              onHover: (value) => _.hoverFull = value,
              child: Container(
                width: 100,
                alignment: Alignment.bottomCenter,
                height: 50,
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 150),
                  style: TextStyle(
                    color: _.hoverFull ? Color(0xffa55afd) : HeaderThemePc.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: Text(
                    'Full',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(),
              flex: 5,
            ),

            // Icon cart
            InkWell(
              onTap: () {},
              onHover: (value) => _.iconCart = value,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 100,
                height: 50,
                child: AnimatedBuy(),
              ),
            ),
            Expanded(
              child: Container(),
              flex: 5,
            ),

            // User
            InkWell(
              onTap: () {},
              onHover: (value) => _.perfil = value,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.bottomCenter,
                // width: 200,
                height: 50,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                      child: Icon(FontAwesomeIcons.user),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 150),
                      style: TextStyle(
                        color:
                            _.perfil ? Color(0xffa55afd) : HeaderThemePc.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      child: Text(
                        'Hola  Manuel',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Container(),
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
