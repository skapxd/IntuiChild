import 'package:flutter/material.dart';

class Background {
  static Container background() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.deepPurple[900],
            Colors.deepPurple[800],
          ],
        ),
      ),
    );
  }
}
