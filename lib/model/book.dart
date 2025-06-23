import 'package:flutter/foundation.dart';

class Book {
  final String id;
  final String title;
  final String author;
  final String description;
  final String coverImageUrl;
  final double price;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.coverImageUrl,
    required this.price,
  });
  void updatePages(int pages) {
    if (kDebugMode) {
      print('Updating pages for book $id to $pages');
    }
  }
}
