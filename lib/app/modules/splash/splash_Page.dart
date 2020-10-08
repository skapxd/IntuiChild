import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/modules/splash/splash_Controller.dart';

class SplashPage extends StatelessWidget {
  static final String routName = '';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  begin: _.begin,
                  end: Alignment.bottomCenter,
                  colors: [
                    _.first,
                    _.second,
                    // _.three,
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              child: Center(
                child: Image.network(
                  'https://tynkere.com/wp-content/uploads/2020/09/cropped-Mesa-de-trabajo-9-copia-8.png',
                  height: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//  Container(
// decoration: BoxDecoration(
//   gradient: LinearGradient(
//     // begin: Alignment.topCenter,
//     begin: Alignment.center,
//     end: Alignment.bottomCenter,
//     colors: [
//       Colors.red[800],
//       Colors.yellow[800],
//       Colors.deepPurple[900],
//     ],
//   ),
// ),
//         ),
