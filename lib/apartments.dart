class Apartment {
  String url;
  String adrs;
  String price;
  String month;
  String info;

  Apartment({
    this.url,
    this.adrs,
    this.price,
    this.month,
    this.info,
  });
}

List<Apartment> apartments = [
  Apartment(
    url: 'lib/assets/sublet1.jpeg',
    adrs: '173 King Street N',
    price: r'$500/Month',
    month: "May - Aug sublet",
    info: "4/4 Bedrooms",
  ),
  Apartment(
    url: 'lib/assets/sublet2.jpeg',
    adrs: '330 Phillip St',
    price: r'$750/Month',
    month: "Sep - Jan sublet",
    info: "1/5 Bedrooms",
  ),
  Apartment(
    url: 'lib/assets/sublet3.jpeg',
    adrs: '254 Phillip Street',
    price: r'$600/Month',
    month: "May - Aug sublet",
    info: "2/3 Bedrooms",
  ),
];
