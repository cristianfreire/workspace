import 'package:flutter/material.dart';

class widgetScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 2021"),
        centerTitle: true,
      ),
      body: Container(color: Colors.white),
      drawer: Container(
        color: Colors.orange,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: () {
          print("Pressionado");
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 40.0,
          child: Row(
            children: [Text("Meu bottomAppBar"), Icon(Icons.home)],
          ),
        ),
        color: Colors.lime,
      ),
      persistentFooterButtons: [
        IconButton(icon: Icon(Icons.add_alarm), onPressed: null)
      ],
    );
  }
}
