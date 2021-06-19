import 'package:flutter/material.dart';
import 'pages.dart';

class SubletScreen extends StatefulWidget {
  Apartment apt;
  SubletScreen(this.apt);

  @override
  _SubletScreenState createState() => _SubletScreenState(apt);
}

class _SubletScreenState extends State<SubletScreen> {
  Apartment apt;
  _SubletScreenState(this.apt);
  List<Color> colors = [
    Color(0xFFADCCFA),
    Color(0xFFFFDDF3),
    Color(0xFFE7F6D0),
    Color(0xFFD0F6DD),
    Color(0xFFF6D6D0)
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEEF1F8),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width - 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: Image(image: AssetImage(apt.url), fit: BoxFit.cover),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 40,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 30,
                      ),
                      Text(
                        apt.adrs,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Waterloo, ON  M4N 2J1",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Price: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        apt.price,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Availability: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        apt.info,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Term: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        apt.month,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Additional Info: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      buildRow("2 min walk to Laurier and Waterloo"),
                      buildRow("Close to bus and LRT routes"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Amenities: ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          buildContainer("Gym", colors[0]),
                          SizedBox(width: 5),
                          buildContainer("Internet", colors[1]),
                          SizedBox(width: 5),
                          buildContainer("Pool", colors[3]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          buildContainer("Laudry", colors[4]),
                          SizedBox(width: 5),
                          buildContainer("Rooftop Patio", colors[2]),
                          SizedBox(width: 5),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Container buildContainer(text, colour) {
    return Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colour,
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }

  Row buildRow(String text) {
    return Row(
      children: [
        Text(
          "\u2022",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(width: 3),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
