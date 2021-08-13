import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final String name;
  final String release;
  final String rating;
  final String image;
  Item(
    this.name,
    this.release,
    this.rating,
    this.image,
  );

  Item copyWith({
    String? name,
    String? release,
    String? rating,
    String? image,
  }) {
    return Item(
      name ?? this.name,
      release ?? this.release,
      rating ?? this.rating,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'release': release,
      'rating': rating,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['name'],
      map['release'],
      map['rating'],
      map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, release: $release, rating: $rating, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.name == name &&
        other.release == release &&
        other.rating == rating &&
        other.image == image;
  }

  @override
  int get hashCode {
    return name.hashCode ^ release.hashCode ^ rating.hashCode ^ image.hashCode;
  }
}
