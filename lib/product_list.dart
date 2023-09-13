import 'dart:convert';

import 'package:demo_1/model/product_model.dart';
import 'package:http/http.dart' as http;
import 'package:demo_1/widgets/priduct_item.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [];

  getProducts() async {
// get data from server
var url = Uri.parse("https://fakestoreapi.com/products");
   var response =  await http.get(url);

  dynamic list = jsonDecode(response.body);

  for (var item in list) {
   products.add(
    Product(title: item["title"], image: item['image'], price: item['price'].toString())
   );
   
  }
   setState(() {
     products = [...products];
   });
  }

@override
  void initState() {
    // TODO: implement initState
    getProducts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              var prod = products[index];
              return ProductItem(product: prod,);
            }));
  }
}
