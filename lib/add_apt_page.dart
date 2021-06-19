import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'pages.dart';
import 'dart:math';

class AddApartment extends StatelessWidget {
  TextEditingController _adrsController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _monthController = TextEditingController();
  TextEditingController _infoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Add an apartment listing"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _adrsController,
              decoration: InputDecoration(
                hintText: "Address",
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
              maxLength: 20,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(
                hintText: "Price",
                labelText: "Dollars per month",
                border: OutlineInputBorder(),
              ),
              maxLength: 4,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _monthController,
              decoration: InputDecoration(
                hintText: "mmm - mmm",
                labelText: "Months Available",
                border: OutlineInputBorder(),
              ),
              maxLength: 9,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _infoController,
              decoration: InputDecoration(
                hintText: "[Available Rooms]/[Total Rooms]",
                labelText: "Rooms Available",
                border: OutlineInputBorder(),
              ),
              maxLength: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text(
                "Register Apt",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              onPressed: () {
                FirebaseFirestore.instance.collection("apartments").add({
                  "index": rng.nextInt(100),
                  "adrs": _adrsController.text,
                  "info": _infoController.text + " Bedrooms",
                  "month": _monthController.text + " Sublet",
                  "price": r"$" + _priceController.text + "/Month",
                });
                print("Info Pushed");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
