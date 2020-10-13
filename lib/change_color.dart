import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

Color defaultBackgroundColor = Colors.white;
const String defaultText = "Hey there";
Color _nextColor = generateRandomColor();
Color defaultTextColor = Colors.black;

class ChangeColorWidgetState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InkWell(
          onTap: () {
            setState(() {
              defaultBackgroundColor = _nextColor;
              _nextColor = generateRandomColor();
            });
          },
          splashColor: _nextColor,
          child: Center(
            child: Text(
              defaultText,
              style: TextStyle(
                  fontSize: 30.5, color: defaultBackgroundColor == Colors.black ? Colors.white : defaultTextColor),
            ),
          ),
        ),
        backgroundColor: defaultBackgroundColor,
      ),
    );
  }
}

generateRandomColor() {
  int red = Random().nextInt(256);
  int green = Random().nextInt(256);
  int blue = Random().nextInt(256);

  return Color.fromARGB(255, red, green, blue);
}
