import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intui_child/app/modules/home/devices/pc/home_Binding.dart';
import 'package:intui_child/app/modules/home/devices/pc/home_Page.dart';
import 'package:intui_child/app/routes/app_Pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Pyndele',
      home: HomePage(),
      getPages: AppPage.pages,
      initialBinding: HomeBinding(),
      theme: ThemeData(
        textSelectionColor: Colors.deepPurple,
        textSelectionHandleColor: Color.fromRGBO(0, 0, 0, 0),
      ),
    );
  }
}

// import 'package:hovering/hovering.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final _key = GlobalKey<ScaffoldState>();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         key: _key,
//         appBar: AppBar(
//           title: Text('Hovering Demo'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Hover Widget Demo',
//                     textScaleFactor: 1.5,
//                   ),
//                   HoverWidget(
//                     hoverChild: Container(
//                       height: 200,
//                       width: 200,
//                       color: Colors.green,
//                       child: Center(
//                         child: Text('Hover Me..'),
//                       ),
//                     ),
//                     onHover: (event) {
//                       _key.currentState.showSnackBar(
//                         SnackBar(
//                           content: Text('Yaay! I am Hovered'),
//                         ),
//                       );
//                     },
//                     child: Container(
//                       height: 200,
//                       width: 200,
//                       color: Colors.red,
//                       child: Center(child: Text('Hover Me..')),
//                     ),
//                   )
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Hover Container Demo', textScaleFactor: 1.5),
//                   HoverContainer(
//                     width: 200,
//                     height: 200,
//                     hoverHeight: 220,
//                     hoverWidth: 220,
//                     color: Colors.red,
//                     hoverColor: Colors.green,
//                   )
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Hover AnimatedContainer Demo', textScaleFactor: 1.5),
//                   HoverAnimatedContainer(
//                     width: 200,
//                     height: 200,
//                     color: Colors.red,
//                     hoverColor: Colors.green,
//                   )
//                 ],
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text('Hover CrossFade Widget Demo', textScaleFactor: 1.5),
//                   HoverCrossFadeWidget(
//                     duration: Duration(milliseconds: 300),
//                     firstChild: Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                           color: Colors.red, shape: BoxShape.rectangle),
//                     ),
//                     secondChild: Container(
//                       width: 200,
//                       height: 200,
//                       decoration: BoxDecoration(
//                           color: Colors.green, shape: BoxShape.circle),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
