import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'shared/const.dart';
import 'views/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PEDE ITA',
      theme: ThemeData(
        primaryColor: themeColor,
      ),
      home: LoginScreen(title: 'PEDE ITA'),
      debugShowCheckedModeBanner: false,
    );
  }
}
