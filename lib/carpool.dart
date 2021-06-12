import 'package:flutter/material.dart';
import 'pages.dart';

class CarPoolScreen extends StatefulWidget {
  @override
  _CarPoolScreenState createState() => _CarPoolScreenState();
}

class _CarPoolScreenState extends State<CarPoolScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'MON',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Theme.of(context).primaryColor),
              ),
              SizedBox(width: 10),
              Container(
                child: Expanded(
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: cars.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              Car car = cars[index];
              return Container(
                height: 100.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
