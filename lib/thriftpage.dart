import 'package:flutter/material.dart';
import 'pages.dart';

class ThriftPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.all(10),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Auctions",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ))),
      ThriftWidget(),
    ]);
  }
}
