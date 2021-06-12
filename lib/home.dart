import 'package:flutter/material.dart';
import 'pages.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected = 0;

  List<IconData> iconList = [
    Icons.house_outlined,
    Icons.car_rental,
    Icons.shopping_bag_outlined,
    Icons.emoji_food_beverage_outlined
  ];

  Widget _buildIcon(int i) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selected = i;
          });
        },
        child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: _selected == i
                  ? Theme.of(context).accentColor
                  : Color(0xFFdad9db),
            ),
            child: Icon(
              iconList[i],
              size: 40,
              color: _selected == i
                  ? Theme.of(context).primaryColor
                  : Color(0xFF7a7a7a),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEEF1F8),
        body: Container(
            //padding: EdgeInsets.all(20.0),
            child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
              child: Text(
                "What what you like to find?",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIcon(0),
                _buildIcon(1),
                _buildIcon(2),
                _buildIcon(3),
              ],
            ),
            SizedBox(height: 20),
            if (_selected == 0) HousesPage(),
            if (_selected == 1) CarPoolScreen(),
          ],
        )));
  }
}
