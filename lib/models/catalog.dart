class CatalogModel {
  static final items = [
    Item(
      color: "#33505a",
      desc: "Apple 12 " * 5,
      id: 1,
      name: "IPhone 12 Pro",
      image:
          "https://images.yourstory.com/cs/images/people/shubhamA1-1596803012059.jpg",
      price: 12999,
    ),
    Item(
      color: "#33505a",
      desc: "Apple 12 " * 5,
      id: 2,
      name: "IPhone 12 Pro",
      image:
          "https://images.yourstory.com/cs/images/people/shubhamA1-1596803012059.jpg",
      price: 12999,
    ),
  ];
}

class Item {
  final int? id;
  final String name;
  final String desc;
  final num price;
  final String? color;
  final String image;

  Item({
    this.id,
    required this.name,
    required this.desc,
    required this.price,
    this.color,
    required this.image,
  });
}
