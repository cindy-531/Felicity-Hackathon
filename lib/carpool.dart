import 'package:flutter/material.dart';
import 'pages.dart';

class CarPoolScreen extends StatefulWidget {
  @override
  _CarPoolScreenState createState() => _CarPoolScreenState();
}

class _CarPoolScreenState extends State<CarPoolScreen> {
  List<String> days = ["MON", "TUES", "WED", "THURS", "FRI", "SAT", "SUN"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20.0, 0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: days.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            children: [
              buildRow(index, context),
              SizedBox(height: 10),
              for (Car car in cars)
                if (car.day == days[index]) buildStack(car),
            ],
          );
        },
      ),
    );
  }

  Row buildRow(int index, BuildContext context) {
    return Row(
      children: [
        Text(
          days[index],
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
    );
  }

  Stack buildStack(Car car) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Container(
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (car.end == "AM")
                    Icon(
                      Icons.wb_sunny,
                      color: Color(0xFFFEE003),
                    )
                  else
                    Icon(
                      Icons.bedtime,
                      color: Color(0xFF9DB8DF),
                    ),
                  SizedBox(width: 2),
                  Text(
                    car.time,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    car.end,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage(car.url),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              Text(car.from),
              SizedBox(height: 5),
              Text(car.ppl),
            ],
          ),
        )
      ],
    );
  }
}
