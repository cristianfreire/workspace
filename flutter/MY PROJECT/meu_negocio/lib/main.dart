import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:meu_negocio/shared/const.dart';
import 'package:meu_negocio/views/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Negócio',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: LoginScreen(
        title: "Meu Negócio",
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
