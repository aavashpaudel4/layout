import 'package:flutter/material.dart';

class Util {
  static const String COFFEE_Url = 'http://bit.ly/fl_coffee';
  static const String CAPPACCINO_Url =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Italian_breakfast_cappucino%2C_Esino_Lario.jpg/1280px-Italian_breakfast_cappucino%2C_Esino_Lario.jpg';
  static const String TEA_Url = 'http://bit.ly/fl_coffee';

  static Widget buildHeroIcon(String path, String tag) {
    return Hero(
        tag: tag,
        child: Container(
          width: 100,
          height: 100,
          child: Image.network(
            path,
            fit: BoxFit.cover,
          ),
        ));
  }

  static Widget buildHeroDestination(String path, String tag, double width) {
    return Hero(
        tag: tag,
        child: Container(
          width: width,
          child: Image.network(
            path,
            fit: BoxFit.cover,
          ),
        ));
  }
}
