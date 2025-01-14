import 'dart:ui';

class ColorManager{
  static Color primary = Hexcolor.fromHex("#ED8728");
  static Color grey = Hexcolor.fromHex("#7e7a78");
  static Color darkGrey = Hexcolor.fromHex("#676564");
  static Color lightGrey = Hexcolor.fromHex("#2a2827");
}

extension Hexcolor on Color {
  static Color fromHex(String hexcolorString){
    hexcolorString = hexcolorString.replaceAll('#','');
    if( hexcolorString.length == 6){
      hexcolorString = "FF"+hexcolorString;
    }
    return Color(int.parse(hexcolorString,radix: 16));
  }
}