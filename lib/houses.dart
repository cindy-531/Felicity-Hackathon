class House {
  String url;
  String adrs;
  String price;
  String month;
  String info;

  House({
    this.url,
    this.adrs,
    this.price,
    this.month,
    this.info,
  });
}

List<House> houses = [
  House(
    url: 'lib/assets/house1.jpeg',
    adrs: '100 Lower Road',
    price: r'$900/Month',
    month: "May - August sublet",
    info: "1/6 Bedrooms Available",
  ),
  House(
    url: 'lib/assets/house2.jpeg',
    adrs: '13 Alaska St',
    price: 'Prices Negotiable',
    month: "Sept - Jan sublet",
    info: "1/5 Bedrooms Available",
  ),
  House(
    url: 'lib/assets/house3.jpeg',
    adrs: '254 WindMill Walk',
    price: r'$650/Month',
    month: "May - August sublet",
    info: "3/6 Bedrooms Available",
  ),
];
