import 'package:flutter/material.dart';
import 'pages.dart';

void main() {
  runApp(SettingsUI());
}

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Setting UI",
        home: EditProfilePage());
  }
}
