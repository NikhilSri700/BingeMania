import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
}

class Item {
  final String name;
  final String release;
  final num rating;
  static int i = 0;
  Item(this.name, this.release, this.rating);

  Item copyWith({
    String? name,
    String? release,
    num? rating,
  }) {
    return Item(
      name ?? this.name,
      release ?? this.release,
      rating ?? this.rating,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Title': name,
      'Release Date': release,
      'IMDB Rating': rating,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['Title'].toString(),
      map['Release Date'],
      (map['IMDB Rating'] == null ? 0 : map['IMDB Rating']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(name: $name, release: $release, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.name == name &&
        other.release == release &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return name.hashCode ^ release.hashCode ^ rating.hashCode;
  }
}
