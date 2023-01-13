class DishTile {
  DishTile(
      {required this.index,
        required this.price,
        required this.rating,
        required this.time,
        required this.dish});
  int index;
  String dish;
  String time;
  String rating;

  String price;

  static List<DishTile> tile = <DishTile>[
    DishTile(
      index: 1,
      price: "\$12.99",
      rating: "4.8",
      time: "50min",
      dish: "Cheese Burgur",
    ),
    DishTile(
      index: 2,
      price: "\$4.88",
      rating: "4.5",
      time: "20min",
      dish: "Blub Burgur",
    ),
    DishTile(
      index: 3,
      price: "\$23.7",
      rating: "4.3",
      time: "55min",
      dish: "King Burgur",
    ),
    DishTile(
      index: 4,
      price: "\$ 12.99",
      rating: "5.0",
      time: "40min",
      dish: "Zinger Burgur",
    ),
  ];
}
