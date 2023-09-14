import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;

import 'model/product_model.dart';



class ProductDetails extends StatefulWidget {
   ProductDetails({super.key,required this.productId});
  final String productId ;
  @override
  State<ProductDetails> createState() => _ProductDetailsState(productId: productId);
}

class _ProductDetailsState extends State<ProductDetails> {

   _ProductDetailsState({required this.productId});

   final String productId ;

  Product product = Product(id:"",title: "", image: "", price: "");

  getProductDetails(String id) async {
    var url = Uri.parse("https://fakestoreapi.com/products/$id");

    dynamic response = await http.get(url);

    var data = jsonDecode(response.body);
    setState(() {
      product = Product(id:data['id'].toString(),title: data['title'], image: data['image'], price:  data['price'].toString());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getProductDetails(productId);
    super.initState();
  }

  var PLACEHOLEDR_IMAGE =
      "https://t3.ftcdn.net/jpg/03/45/05/92/360_F_345059232_CPieT8RIWOUk4JqBkkWkIETYAkmz2b75.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
        ),
        body: Container(
          child: Column(children: [
            Image.network(
              (product.image == '' ? PLACEHOLEDR_IMAGE : product.image),
              width: double.infinity,
              height: 300,
            ),
            Text(
              product.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
             Text(
              "Price \$ ${product.price} ",
              style: TextStyle(fontSize: 20, ),
            ),
          ]),
        ),
      ),
    );
  }
}
