import 'package:demo_1/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future<List<Product>> fetchProduct() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      List<Product> products = [];
      dynamic items = jsonDecode(response.body);
      for (var item in items) {
        print(item);
        products.add(Product.fromJson(item));
      }
      return products;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
