import 'package:flutter/material.dart';
import 'package:intui_child/src/pages/page01_Home.dart';
import 'package:intui_child/src/provider/provider01_Main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: Page01Home.routName,
        routes: {
          Page01Home.routName: (_) => Page01Home(),
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff080113),
          fontFamily: 'RobotoMono',
        ),
      ),
    );
  }
}
