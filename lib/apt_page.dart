import 'package:flutter/material.dart';
import 'pages.dart';

class ApartmentShowcase extends StatelessWidget {
  final int index;
  final String adrs;
  final String price;
  final String month;
  final String info;

  ApartmentShowcase(this.index, this.adrs, this.price, this.month, this.info);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apartment #' + (index + 1).toString()),
      ),
      body: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Image(
              image: AssetImage(
                  "lib/assets/sublet" + ((index % 3) + 1).toString() + ".jpeg"),
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  adrs,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  month,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  info,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
