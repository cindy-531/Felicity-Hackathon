import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'pages.dart';

class Apts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: StreamBuilder(
          stream:
              FirebaseFirestore.instance.collection('apartments').snapshots(),
          builder: (context, snapshot) {
            print(snapshot.data);
            if (!snapshot.hasData) return const Text('Loading...');
            return ListView.builder(
              itemCount: snapshot.data.docs.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                DocumentSnapshot apartment = snapshot.data.docs[index];
                return Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: () {
                      print("Clicked " + index.toString());
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ApartmentShowcase(
                            apartment['index'],
                            apartment['adrs'],
                            apartment['price'],
                            apartment['month'],
                            apartment['info'],
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 10,
                          child: Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    apartment['price'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(apartment['month']),
                                  SizedBox(height: 3),
                                  Text(apartment['info']),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
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
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: AssetImage("lib/assets/sublet" +
                                      ((index % 3) + 1).toString() +
                                      ".jpeg"),
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                          size: 13,
                                        ),
                                        Text(
                                          apartment['adrs'],
                                          style: TextStyle(
                                            color: Colors.white,
                                            letterSpacing: 1.2,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
