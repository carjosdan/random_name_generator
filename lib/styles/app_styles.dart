import 'package:flutter/material.dart';

class AppStyles {
  
  //colors
  static final Color primary = Colors.blue;
  static final Color secondary = Colors.white;
  
  //background color
  static Color rowBackgroundColor(int i) => (i % 2 == 0) ? Colors.white : Colors.grey[200]!;
  
  //fonts
  static final ThemeData myTheme = ThemeData(fontFamily: 'Lexend');
  static final TextStyle smallFont = TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);
  static final TextStyle bigFont = TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold);

  //padding
  static final EdgeInsets padd16 = EdgeInsets.all(16.0);

  //divider
  static final Divider divider = Divider(height: 1.0);

}