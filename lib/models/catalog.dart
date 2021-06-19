class Item {
  final String? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
    color: "#33505a",
    desc: "Apple 12 " * 5,
    id: "Shubham101",
    name: "IPhone 12 Pro",
    image: "",
    price: 12999,
  ),
];
