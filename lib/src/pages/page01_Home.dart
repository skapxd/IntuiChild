import 'package:flutter/material.dart';

class Page01Home extends StatelessWidget {
  static final String routName = 'Page01Home';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.network(
            'https://i.pinimg.com/originals/6a/d0/61/6ad061662e8adc82a68c7578dbee0a04.jpg',
            fit: BoxFit.cover,
            height: height,
            width: width,
          ),
          Column(
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
                    width: size.width * 0.12,
                    child: Image.network(
                      'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
                    ),
                  ),
                  SizedBox(
                    width: width * 0.25,
                  ),
                  InkWell(
                    child: Text(
                      'Contenidos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  InkWell(
                    child: Text(
                      'Master Class',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  InkWell(
                    child: Text(
                      'Casos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Proximos',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  InkWell(
                    child: Text(
                      'Full pass',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
