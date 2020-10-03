import 'package:flutter/material.dart';
import 'package:intui_child/src/provider/provider01_Main.dart';
import 'package:provider/provider.dart';

class Page01Home extends StatelessWidget {
  static final String routName = 'Page01Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          BackgroundImage(),
          Header(),
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Image.network(
      'https://i.pinimg.com/originals/6a/d0/61/6ad061662e8adc82a68c7578dbee0a04.jpg',
      fit: BoxFit.cover,
      // height: height,
      width: width,
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List<bool> hover = Provider.of<HeaderProvider>(context).hover;
    final width = size.width;
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: width * 0.05,
            ),
            Container(
              width: size.width * 0.15,
              child: Image.network(
                'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
              ),
            ),
            SizedBox(
              width: width * 0.25,
            ),
            InkWell(
              hoverColor: Color(0xffa359fb),
              onHover: (value) => hover[0] = value,
              child: Text(
                'Contenidos',
                style: TextStyle(
                  color: hover[0] == true ? Color(0xffa359fb) : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            InkWell(
              hoverColor: Color(0xffa359fb),
              onHover: (value) => hover[1] = value,
              child: Text(
                'Master Class',
                style: TextStyle(
                  color: hover[1] == true ? Color(0xffa359fb) : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            InkWell(
              hoverColor: Color(0xffa359fb),
              onHover: (value) => hover[2] = value,
              child: Text(
                'Casos',
                style: TextStyle(
                  color: hover[2] == true ? Color(0xffa359fb) : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            InkWell(
              hoverColor: Color(0xffa359fb),
              onHover: (value) => hover[3] = value,
              child: Text(
                'Proximos',
                style: TextStyle(
                  color: hover[3] == true ? Color(0xffa359fb) : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: width * 0.05,
            ),
            InkWell(
              hoverColor: Color(0xffa359fb),
              onHover: (value) => hover[4] = value,
              child: Text(
                'Full pass',
                style: TextStyle(
                  color: hover[4] == true ? Color(0xffa359fb) : Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
