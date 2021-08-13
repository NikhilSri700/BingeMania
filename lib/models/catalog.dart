class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "DDLJ",
        desc: "Good Movie",
        rating: 3.4,
        color: "#33505a",
        image: "https://wallpaperaccess.com/full/2218184.jpg")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num rating;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.rating,
      required this.color,
      required this.image});
}
