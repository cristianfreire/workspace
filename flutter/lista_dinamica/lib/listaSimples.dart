import 'package:flutter/material.dart';

buildListView() {
  final itens = List<String>.generate(10000, (i) => "Item $i");
  return ListView.builder(
    itemCount: itens.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('${itens[index]}'),
        onTap: () {
          debugPrint('${itens[index]} foi selecionado');
        },
      );
    },
  );
}
