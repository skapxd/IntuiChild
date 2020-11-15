import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';
import 'package:intui_child/app/global_Widgets/devices/pc/header/header_Page.dart';
// import 'package:intui_child/app/theme/background.dart';

import 'devices/pc/../../home_Controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (_) => Scaffold(
        backgroundColor: Color(0xff080113),
        body: Stack(
          children: [
            ListView(
              children: [
                // Background.background(),

                // PC
                SizedBox(
                  height: 200,
                ),
                // prettyphoto quick_view_ultimate_button quick_view_ultimate_click
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Product(
                      urlImagen:
                          'https://tynkere.com/wp-content/uploads/2020/08/Mesa-de-trabajo-4-8-300x300.png',
                      categoria: 'Categoria',
                      nombreCurso: 'Full Pass',
                      evaluacion: 0,
                      precio: '199.000\$',
                    ),
                    Product(
                      urlImagen:
                          'https://tynkere.com/wp-content/uploads/2020/08/Popup-pic-1-300x300.png',
                      categoria: 'Categoria',
                      nombreCurso: 'Creacion de curso Flutter',
                      evaluacion: 0,
                      precio: '0\$',
                    ),
                    Product(
                      urlImagen:
                          'https://tynkere.com/wp-content/uploads/2020/08/baner-01-300x300.jpg',
                      categoria: 'Categoria',
                      nombreCurso: 'Ejemplo 2',
                      evaluacion: 0,
                      precio: '15.000\$',
                    ),
                    Product(
                      urlImagen:
                          'https://tynkere.com/wp-content/uploads/2020/09/flutter-300x300.jpeg',
                      categoria: 'Categoria',
                      nombreCurso: 'Gestion de prioridades en el tiempo',
                      evaluacion: 0,
                      precio: '15.000\$',
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  color: Color(0xff1E0E36),
                  child: Text(
                    'Pie de página',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            context.width < 1140
                ? Container()
                : Container(
                    height: 120,
                    color: Color(0xff080113).withOpacity(0.75),
                  ),
            context.width < 1140 ? Container() : HeaderPagePC(),
          ],
        ),
      ),
    );
  }
}

class Product extends StatelessWidget {
  final String popUpImage;
  final String urlImagen;
  final String categoria;
  final String nombreCurso;
  final String disctadoPor;
  final String precio;
  final String profesion;
  final int evaluacion;
  final int index;
  const Product({
    Key key,
    @required this.urlImagen,
    @required this.categoria,
    @required this.nombreCurso,
    @required this.precio,
    @required this.evaluacion,
    this.popUpImage,
    this.disctadoPor = 'Manuel Londoño',
    this.profesion = 'Profesión',
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff222222),
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      height: 500,
      width: 300,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: Color(0xff222222),
                    contentPadding: EdgeInsets.zero,
                    content: Column(
                      children: [
                        Image.network(
                          urlImagen,
                          width: 630,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    nombreCurso,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Dictado por $disctadoPor - $profesion ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  Text(
                                    'Horas del curso',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    // alignment: Alignment.bottomCenter,
                                    height: 80,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Color(0xffa459fc),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Comprar Ahora ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          precio,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        width: 2,
                                        color: Color(
                                          0xffa459fc,
                                        ),
                                      ),
                                    ),
                                    height: 50,
                                    width: 200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          // FontAwesomeIcons.shoppingCart,
                                          Icons.shopping_cart,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Anadir al carrito',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          height: 1,
                          width: double.infinity,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 630,
                          child: Text(
                            'Est tempor proident dolore voluptate occaecat nisi enim cillum qui id id esse. Amet ea adipisicing velit Lorem irure fugiat occaecat reprehenderit non. Dolore minim duis deserunt veniam elit minim esse fugiat incididunt aliquip do.',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  InkWell(
                    child: Image.network(
                      urlImagen,
                      fit: BoxFit.cover,
                    ),
                  ),
                  GetBuilder<HomeController>(
                    builder: (_) {
                      return HoverAnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        height: 300,
                        width: 300,
                        color: Color.fromRGBO(0, 0, 0, 0),
                        hoverColor: Color(0xffa459fc).withOpacity(0.3),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          GetBuilder<HomeController>(
            builder: (_) {
              return InkWell(
                onTap: () => _.favorito = !_.favorito,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _.favorito
                        ? IconButton(
                            icon: Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Color(0xff8363a7),
                            ),
                            onPressed: () => _.favorito = !_.favorito,
                          )
                        : IconButton(
                            icon: Icon(
                              FontAwesomeIcons.heart,
                              color: Color(0xff8363a7),
                            ),
                            onPressed: () => _.favorito = !_.favorito,
                          ),
                    _.favorito
                        ? Text(
                            'Remover de la lista de favoritos',
                            style: TextStyle(
                              color: Color(0xff8363a7),
                            ),
                          )
                        : Text(
                            'Agregar a la lista de favoritos',
                            style: TextStyle(
                              color: Color(0xff8363a7),
                            ),
                          )
                  ],
                ),
              );
            },
          ),
          Text(
            categoria,
            style: TextStyle(color: Color(0xff776f80), fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            nombreCurso,
            style: TextStyle(color: Color(0xffe2e2e2), fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < 5; i++)
                Icon(
                  Icons.star_border,
                  color: Color(0xff8363a7),
                )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: HoverAnimatedContainer(
              height: 40,
              width: 150,
              hoverDecoration: BoxDecoration(
                color: Color(0xff8523F9),
                borderRadius: BorderRadius.circular(20),
              ),
              decoration: BoxDecoration(
                color: Color(0xffa459fc),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.credit_card_rounded, color: Colors.white),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    precio,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
