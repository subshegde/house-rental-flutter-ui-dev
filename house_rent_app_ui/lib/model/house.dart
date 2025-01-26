class House {
  String name;
  String address;

  String imageUrl;
  String price;
  String description;

  House(
    this.name,
    this.address,
    this.imageUrl,
    this.price,
    this.description,
  );
}

// for cayegory
final categoryList = [
  'Top Recommended',
  'Near you',
  'Agency Recommended',
];

final recommendedList = [
  House(
    'Ocean View Villa',
    'B12, Malibu Beach, California',
    'assets/images/ocean_view_villa.jpg',
    '\$7200',
    'A luxurious villa with a stunning view of the ocean. Spacious rooms with modern amenities, perfect for a relaxing getaway.'
  ),
 House(
    'The Dream House',
    'P133, Washington, D.C ',
    'assets/images/house02.jpeg',
    '\$5500',
    'Washington, D.C,formally the District of Columbia and commonly called Washington.'
  ),
  House(
    'City Skyline Apartment',
    'L47, Downtown, New York City',
    'assets/images/c_s_a.jpg',
    '\$5000',
    'A sleek, contemporary apartment with breathtaking views of the New York City skyline. Ideal for those who love urban living.'
  ),
];

