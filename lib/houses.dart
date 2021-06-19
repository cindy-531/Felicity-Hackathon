class House {
  int id;
  String adrs;
  String price;
  String month;
  String info;

  House({
    this.id,
    this.adrs,
    this.price,
    this.month,
    this.info,
  });
}

List<House> houses = [
  House(
    id: 1,
    adrs: "100 Lower Road",
    price: r"$900/Month",
    month: "May - Aug sublet",
    info: "1/6 Bedrooms Available",
  ),
  House(
    id: 2,
    adrs: "13 Alaska St",
    price: "Prices Negotiable",
    month: "Sep - Jan sublet",
    info: "1/5 Bedrooms Available",
  ),
  House(
    id: 3,
    adrs: "254 WindMill Walk",
    price: r"$650/Month",
    month: "May - Aug sublet",
    info: "3/6 Bedrooms",
  ),
];
