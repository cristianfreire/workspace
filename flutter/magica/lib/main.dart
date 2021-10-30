import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:dio/dio.dart';
import 'package:intent/intent.dart' as android_intent;
import 'package:intent/action.dart' as android_action;
import 'package:intent/flag.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final statuses = [Permission.storage].request();
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    final pages = PageView(
      controller: _controller,
      children: [HomeWidget(), PhotosWidget()],
    );
    return pages;
  }
}

class HomeWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    final children = new Scaffold(
      body: new Image.asset(
        'images/home1.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTapDown: _onTapDown,
      child: children,
    );
  }

  _onTapDown(TapDownDetails details) {
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;

    // or user the local position method to get the offset
    print(details.localPosition);

    int dx = (x / 80).floor();
    int dy = ((y - 180) / 100).floor();
    int posicao = dy * 5 + dx;
    print("results: x=$x y=$y $dx $dy $posicao");
    //_save(posicao);
    _saveImage();
  }

  _save(int posicao) async {
    var appDocDir = await getTemporaryDirectory();
    String savePath = appDocDir.path + "/efeito-$posicao.jpg";
    print(savePath);
    await Dio().download(
        'https://github.com/guilhermesilveira/flutter-magic/raw/main/efeito-$posicao.jpg',
        savePath);
    print("saved!");
    final result = await ImageGallerySaver.saveFile(savePath);
    print(result);
  }

  _saveImage() async {
    var appDocDir = await getTemporaryDirectory();
    String savePath = appDocDir.path + "/teste.jpg";
    await Dio().download(
        'https://github.com/guilhermesilveira/flutter-magic/raw/main/efeito-0.jpg',
        savePath);
    final result = await ImageGallerySaver.saveFile(savePath);
  }
}

class PhotosWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    final children = new Scaffold(
      body: new Image.asset(
        "images/home2.png",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
    return new GestureDetector(
      onTap: openGallery,
      child: children,
    );
  }

  void openGallery() {
    print("opening");
    android_intent.Intent()
      ..setAction(android_action.Action.ACTION_VIEW)
      ..setType("image/*")
      ..addFlag(Flag.FLAG_ACTIVITY_NEW_TASK)
      ..startActivity().catchError((e) => print(e));
  }
}
