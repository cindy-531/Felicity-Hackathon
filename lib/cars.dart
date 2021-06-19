class Car {
  String url;
  String from;
  String time;
  String ppl;
  String day;
  String end;

  Car({
    this.url,
    this.from,
    this.time,
    this.ppl,
    this.day,
    this.end,
  });
}

List<Car> cars = [
  Car(
    url: 'lib/assets/pfp.jpeg',
    from: 'Waterloo -> Toronto',
    time: "7:30 ",
    end: "PM",
    ppl: "1 seat available",
    day: "MON",
  ),
  Car(
    url: 'lib/assets/pfp.jpeg',
    from: 'Waterloo -> London',
    time: "9:00 ",
    end: "PM",
    ppl: "3 seats available",
    day: "WED",
  ),
  Car(
    url: 'lib/assets/pfp2.jpg',
    from: 'Waterloo -> Kingston',
    time: "9:00 ",
    end: "PM",
    ppl: "3 seats available",
    day: "WED",
  ),
  Car(
    url: 'lib/assets/pfp.jpeg',
    from: 'Waterloo -> Ottawa',
    time: "8:00 ",
    end: "AM",
    ppl: "1 seats available",
    day: "FRI",
  ),
  Car(
    url: 'lib/assets/pfp2.jpg',
    from: 'Waterloo -> Kingston',
    time: "8:00 ",
    end: "AM",
    ppl: "2 seats available",
    day: "SAT",
  ),
  Car(
    url: 'lib/assets/pfp2.jpg',
    from: 'Waterloo -> Toronto',
    time: "8:00 ",
    end: "PM",
    ppl: "2 seats available",
    day: "SUN",
  ),
  Car(
    url: 'lib/assets/pfp.jpeg',
    from: 'Waterloo -> Toronto',
    time: "8:00 ",
    end: "PM",
    ppl: "2 seats available",
    day: "SUN",
  ),
];
