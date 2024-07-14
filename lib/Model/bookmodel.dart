import 'dart:convert';

class Book {
  String name;
  String author;
  String imageUrl;

  Book({required this.name, required this.author, required this.imageUrl});

  // Convert a Book into a Map.
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'author': author,
      'imageUrl': imageUrl,
    };
  }

  // Convert a Map into a Book.
  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      name: map['name'],
      author: map['author'],
      imageUrl: map['imageUrl'],
    );
  }

  // Encode a Book into JSON.
  String toJson() => json.encode(toMap());

  // Decode JSON into a Book.
  factory Book.fromJson(String source) => Book.fromMap(json.decode(source));
}
