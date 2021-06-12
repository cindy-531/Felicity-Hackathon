import 'package:flutter/material.dart';
import 'pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CommUnity',
      theme: ThemeData(
        primaryColor: Color(0XFF607DCC),
        accentColor: Color(0XFFBACAF3),
      ),
      home: HomeScreen(), //HomeScreen(),
    );
  }
}
