import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:intui_child/app/global_Widgets/search_Course.dart';
import 'package:intui_child/app/theme/header_Theme_Pc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'header_Controller.dart';

class HeaderPagePC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Firebase
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
                      forceWebView: true,
                      universalLinksOnly: true,
                      enableJavaScript: true,
                      enableDomStorage: true,
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
            HoverText(
              onTap: () => print('hola'),
              text: 'Contenido',
              color: HeaderThemePc.text,
              hoverColor: HeaderThemePc.primary,
            ),

            SizedBox(
              width: context.width * 0.005,
            ),

            // Master Class
            HoverText(
              text: 'Master Class',
              color: HeaderThemePc.text,
              hoverColor: HeaderThemePc.primary,
            ),
            SizedBox(
              width: context.width * 0.005,
            ),

            // Casos
            HoverText(
              text: 'Casos',
              color: HeaderThemePc.text,
              hoverColor: HeaderThemePc.primary,
            ),
            SizedBox(
              width: context.width * 0.005,
            ),

            // Proximos
            HoverText(
              text: 'Proximos',
              color: HeaderThemePc.text,
              hoverColor: HeaderThemePc.primary,
            ),
            SizedBox(
              width: context.width * 0.005,
            ),

            // Full
            HoverText(
              text: 'Full',
              color: HeaderThemePc.text,
              hoverColor: HeaderThemePc.primary,
            ),
            Expanded(
              child: Container(),
              flex: 1,
            ),

            // Icon cart

            HoverCrossFadeWidget(
              duration: Duration(milliseconds: 300),
              firstChild: Container(
                margin: EdgeInsets.only(top: 10),
                width: 100,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.cartArrowDown,
                  size: 20,
                  color: HeaderThemePc.text,
                ),
              ),
              secondChild: Container(
                margin: EdgeInsets.only(top: 10),
                width: 100,
                height: 50,
                child: Icon(
                  FontAwesomeIcons.cartArrowDown,
                  color: Color(0xffa55afd),
                  size: 20,
                ),
              ),
            ),

            Expanded(
              child: Container(),
              flex: 1,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 200,
              child: Search(),
            ),

            Expanded(
              child: Container(),
              flex: 1,
            ),

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

class HoverText extends StatelessWidget {
  final String text;
  final Color color;
  final Color hoverColor;
  final VoidCallback onTap;

  const HoverText({
    Key key,
    this.text,
    this.color,
    this.hoverColor,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverCrossFadeWidget(
      // cursor: SystemMouseCursors.none,
      duration: Duration(milliseconds: 300),
      firstChild: InkWell(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          // color: Colors.white.withOpacity(0.5),
          height: 50,
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
      secondChild: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          height: 50,
          child: Text(
            text,
            style: TextStyle(
              color: hoverColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
