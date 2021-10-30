import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:listview_json/api.dart';
import 'package:listview_json/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Http-Json-ListView',
        home: BuildListView());
  }
}

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  var users = new List<User>();

  _getUser() {
    API.getUsers().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        users = lista.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  _BuildListViewState() {
    _getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Usuários"),
      ),
      body: listaUsuarios(),
    );
  }

  listaUsuarios() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(backgroundImage: NetworkImage("https://deliverysemfronteiras.com.br/wp-content/uploads/2020/09/Icone-Site-250x250-1.png")),
            title: Text(
              users[index].name,
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          );
        });
  }
}
