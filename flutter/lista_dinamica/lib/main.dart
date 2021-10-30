import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista Dinâmica"),
        ),
        body: buildListView(),
      ),
    );
  }

  buildListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 1.0),
          color: Colors.lightGreen,
          child: Text('$index'),
        );
      },
    );
  }
}
