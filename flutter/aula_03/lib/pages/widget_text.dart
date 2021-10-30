import 'package:flutter/material.dart';

Center widgetText() {
  return Center(
    child: Text(
      "Teste",  
      style: TextStyle(
          fontSize: 40.0,
          color: Colors.orange,
          decoration: TextDecoration.overline,
          decorationColor: Colors.blue,
          decorationStyle: TextDecorationStyle.wavy),
    ),
  );
}
