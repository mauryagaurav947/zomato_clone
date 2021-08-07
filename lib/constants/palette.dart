import 'package:flutter/material.dart';

// Applications Palette
class Palette {
  // Primary color swatches
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(235, 52, 52, .1),
    100: Color.fromRGBO(235, 52, 52, .2),
    200: Color.fromRGBO(235, 52, 52, .3),
    300: Color.fromRGBO(235, 52, 52, .4),
    400: Color.fromRGBO(235, 52, 52, .5),
    500: Color.fromRGBO(235, 52, 52, .6),
    600: Color.fromRGBO(235, 52, 52, .7),
    700: Color.fromRGBO(235, 52, 52, .8),
    800: Color.fromRGBO(235, 52, 52, .9),
    900: Color.fromRGBO(235, 52, 52, 1),
  };

  // Primary color
  static const MaterialColor primaryColor =
      MaterialColor(0xffeb3434, primaryColorSwatch);

  // Button overlayColor
  static const Color buttonOverlayColor = const Color.fromRGBO(0, 0, 0, 0.05);

}
