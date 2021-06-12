class Car {
  String url;
  String from;
  String time;
  String ppl;

  Car({
    this.url,
    this.from,
    this.time,
    this.ppl,
  });
}

List<Car> cars = [
  Car(
    url: 'lib/assets/sublet1.jpeg',
    from: 'Waterloo -> Toronto',
    time: "7:30 PM",
    ppl: "1 seat available",
  ),
  Car(
    url: 'lib/assets/sublet1.jpeg',
    from: 'Waterloo -> London',
    time: "9:00 AM",
    ppl: "3 seats available",
  ),
  Car(
    url: 'lib/assets/sublet1.jpeg',
    from: 'Waterloo -> Kingston',
    time: "8:00 PM",
    ppl: "2 seats available",
  ),
];
