import 'package:librabry_management_system_odoo/Model/bookmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String _booksKey = 'books';

  // Save a list of books.
  static Future<void> saveBooks(List<Book> books) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> booksJson = books.map((book) => book.toJson()).toList();
    await prefs.setStringList(_booksKey, booksJson);
  }

  // Load the list of books.
  static Future<List<Book>> loadBooks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? booksJson = prefs.getStringList(_booksKey);

    if (booksJson == null) return [];

    return booksJson.map((bookJson) => Book.fromJson(bookJson)).toList();
  }
}
