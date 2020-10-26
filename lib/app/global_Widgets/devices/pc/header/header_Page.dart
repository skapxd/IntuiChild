import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/local_Widgets/animated_Icon_Buy.dart';
import 'package:intui_child/app/global_Widgets/search_Course.dart';
import 'package:intui_child/app/theme/header_Theme_Pc.dart';
import 'package:url_launcher/url_launcher.dart';

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
              child: InkWell(
                onTap: () async {
                  const url = 'https://skapxd.github.io/IntuiChild/#/';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Container(
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  child: Image.network(
                    'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
                    height: 50,
                  ),
                ),
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
                        ? HeaderThemePc.primary
                        : HeaderThemePc.text,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  child: SelectableText(
                    'Contenidos',
                    // showCursor: true,
                    toolbarOptions: ToolbarOptions(copy: false),
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
                        ? HeaderThemePc.primary
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
              width: context.width * 0.002,
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
                    color: _.hoverCasos
                        ? HeaderThemePc.primary
                        : HeaderThemePc.text,
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
              width: context.width * 0.002,
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
                        ? HeaderThemePc.primary
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
              width: context.width * 0.002,
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
                    color: _.hoverFull
                        ? HeaderThemePc.primary
                        : HeaderThemePc.text,
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
              flex: 1,
            ),

            // Icon cart
            InkWell(
              onTap: () {},
              onHover: (value) => _.hoverIconCart = value,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 100,
                height: 50,
                child: AnimatedBuy(),
              ),
            ),
            Expanded(
              child: Container(),
              flex: 1,
            ),
            // SizedBox(
            //   width: context.width * 0.02,
            // ),

            Container(
              width: 200,
              child: Search(),
            ),

            Expanded(
              child: Container(),
              flex: 1,
            ),

            // SizedBox(
            //   width: context.width * 0.02,
            // ),

            // User
            _.hoverAuth
                ? _user(_)
                : Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.bottomCenter,
                    height: 50,
                    child: Row(
                      children: [
                        btnEntrar(_),
                        SizedBox(
                          width: 20,
                        ),
                        btnRegistro(_),
                      ],
                    ),
                  ),

            Expanded(
              child: Container(),
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }

  InkWell btnRegistro(HeaderController _) {
    return InkWell(
      onHover: (value) => _.hoverBtnRegistro = value,
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: 37,
        width: 80,
        decoration: BoxDecoration(
          color: _.hoverBtnRegistro
              ? HeaderThemePc.second
              : HeaderThemePc.transparent,
          border: new Border.all(
            color: HeaderThemePc.primary,
            width: 3.0,
          ),
          borderRadius: new BorderRadius.circular(5.0),
        ),
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 150),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HeaderThemePc.text,
          ),
          child: Text(
            'Registro',
          ),
        ),
      ),
    );
  }

  InkWell btnEntrar(HeaderController _) {
    return InkWell(
      onHover: (value) => _.hoverBtnEntrar = value,
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        height: 37,
        width: 80,
        decoration: BoxDecoration(
          color:
              _.hoverBtnEntrar ? HeaderThemePc.second : HeaderThemePc.primary,
          border: new Border.all(
            color:
                _.hoverBtnEntrar ? HeaderThemePc.second : HeaderThemePc.primary,
            width: 3.0,
          ),
          borderRadius: new BorderRadius.circular(5.0),
        ),
        alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 150),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HeaderThemePc.text,
          ),
          child: Text(
            'Entrar',
          ),
        ),
      ),
    );
  }

  InkWell _user(HeaderController _) {
    return InkWell(
      onTap: () {},
      onHover: (value) => _.hoverPerfil = value,
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
                    _.hoverPerfil ? HeaderThemePc.primary : HeaderThemePc.text,
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
    );
  }
}
