import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CommUnity',
      theme: ThemeData(
        primaryColor: Color(0XFF607DCC),
        accentColor: Color(0XFFBACAF3),
      ),
      home: HomeScreen(),
    );
  }
}
