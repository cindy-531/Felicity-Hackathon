import 'package:flutter/material.dart';
import 'pages.dart';

class Item {
  String url;
  String name;
  String duration;
  String location;
  String person_with_highest_bid;
  int bid = 1;

  Item(
      {this.url,
      this.name,
      this.duration,
      this.location,
      this.person_with_highest_bid});
}

class ThriftWidget extends StatefulWidget {
  @override
  _ThriftWidgetState createState() => _ThriftWidgetState();
}

class _ThriftWidgetState extends State<StatefulWidget> {
  List<Item> items = [
    Item(
        url: 'lib/assets/item1.jpeg',
        name: 'Textbook',
        duration: '3 days left',
        location: "Toronto, ON",
        person_with_highest_bid: "CanIHasC00kie"),
    Item(
        url: 'lib/assets/item2.jpeg',
        name: 'Clock',
        duration: '4 hours left',
        location: "Toronto, ON",
        person_with_highest_bid: "President Obama"),
  ];
  createAlertDialog(BuildContext context, Item item) {
    TextEditingController customController = TextEditingController();

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("Your Bid?"),
              content: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: '\$0.00'),
                controller: customController,
              ),
              actions: <Widget>[
                RaisedButton(
                    elevation: 5.0,
                    child: Text('Submit'),
                    onPressed: () {
                      // if (int.parse(customController.text) <= item.bid) {}
                      // Create error message for invalid Bids
                      setState(() {
                        item.bid = int.parse(customController.text);
                      });
                      Navigator.of(context).pop(context);
                    })
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 1000,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              Item item = items[index];
              return Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFFACB2C1),
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      width: 200,
                      child: Stack(children: [
                        Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            )),
                        Row(children: [
                          // mainAxisAlignment: MainAxisAlignment.start,
                          Stack(children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image(
                                      image: AssetImage(item.url),
                                      height: 180,
                                      width: 180,
                                      fit: BoxFit.cover,
                                    ))),
                            Positioned(
                                bottom: 10,
                                left: 10,
                                child: Row(children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  Text("${item.location}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.2)),
                                ])),
                          ]),
                          Column(
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                      width: 200,
                                      child: Row(children: <Widget>[
                                        Text("Item: ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          item.name,
                                          style: TextStyle(
                                            color: Colors.black,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ]))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                      width: 200,
                                      child: Row(children: <Widget>[
                                        Text("Duration: ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                          item.duration,
                                          style: TextStyle(
                                            color: Colors.black,
                                            letterSpacing: 1.2,
                                          ),
                                        ),
                                      ]))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                      width: 200,
                                      child: Row(children: <Widget>[
                                        Text("Current Bid:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text("\$${item.bid.toString()}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 1.2,
                                            )),
                                      ]))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                      width: 200,
                                      child: Row(children: <Widget>[
                                        Text("Bidder:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text("${item.person_with_highest_bid}",
                                            style: TextStyle(
                                              color: Colors.black,
                                              letterSpacing: 1.2,
                                            )),
                                      ]))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                      width: 200,
                                      child: Padding(
                                          padding: EdgeInsets.all(20),
                                          child: FlatButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    8.0)), // RoundedRectangleBorder
                                            color:
                                                Theme.of(context).accentColor,
                                            textColor: Colors.black,
                                            onPressed: () {
                                              createAlertDialog(context, item);
                                            },
                                            child: Text(
                                              'Make a Bid',
                                              style: TextStyle(
                                                  color: Color(0xFF7a7a7a),
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing: 1.2),
                                            ),
                                          ))))
                            ],
                          ),
                        ]),
                      ])));
            }));
  }
}
