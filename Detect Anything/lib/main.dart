import 'package:flutter/material.dart';

import 'image_page.dart';
import 'login_page.dart';

void main() => runApp(new App());

const String mobile = "MobileNet";
const String ssd = "SSD MobileNet";
const String yolo = "Tiny YOLOv2";
const String deeplab = "DeepLab";
const String posenet = "PoseNet";

class App extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    ImagePage.tag: (context) => ImagePage(),
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classifier',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}

