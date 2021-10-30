import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Lista Básica"),
      ),
      body: buildListView(),
    ));
  }

  buildListView() {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("texto"),
          subtitle: Text("meu texto"),
          trailing: Icon(Icons.add_shopping_cart),
          selected: true,
          onTap: () {
            print("ok");
          },
        ),
        ListTile(
          leading: Icon(Icons.add_a_photo),
          title: Text("texto"),
          subtitle: Text("meu texto"),
          trailing: Icon(Icons.add_shopping_cart),
          //enabled: false,
          onLongPress: () {
            print("pressioanmento longo");
          },
        ),
        Text("Texto de exemplo"),
        Container(
          color: Colors.green,
          height: 60.0,
        )
      ],
    );
  }
}
