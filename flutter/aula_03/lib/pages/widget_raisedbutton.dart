import 'package:flutter/material.dart';

widgetButton() {
  return Center(
    child: RaisedButton(
      textColor: Colors.white,
      color: Colors.orange,
      elevation: 20.0,
      child: Text("Clique-me"),
      onPressed: () => exibirTexto('pressionado'),
    ),
  );
}

void exibirTexto(String msg) {
  print(msg);
}
