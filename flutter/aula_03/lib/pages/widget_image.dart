import 'package:flutter/material.dart';

widgetImage() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Image.network("https://deliverysemfronteiras.com.br/wp-content/uploads/2020/09/Icone-Site-250x250-1.png"), Imagem da internet
      Image.asset(
        "images/logo.png",
      ),
      Text(
        "Friends & Food",
        style: TextStyle(
            color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
    ],
  );
}
