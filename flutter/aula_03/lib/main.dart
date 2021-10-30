import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cor Preferida",
      theme: ThemeData(primaryColor: Colors.orange),
      home: WidgetCorPreferida(),
    );
  }
}

class WidgetCorPreferida extends StatefulWidget {
  @override
  _WidgetCorPreferidaState createState() => _WidgetCorPreferidaState();
}

class _WidgetCorPreferidaState extends State<WidgetCorPreferida> {
  String nomeCor = "";

  @override
  Widget build(BuildContext context) {
    debugPrint("### widget foi criado");
    return Scaffold(
      appBar: AppBar(
        title: Text("StatefulWidget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String texto) {
                setState(() {
                  debugPrint("### setState foi chamado -> redesenhar o widget");
                  nomeCor = texto;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "A sua cor preferida é: $nomeCor",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
