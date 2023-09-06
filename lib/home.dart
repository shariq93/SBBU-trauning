import 'package:demo_1/widgets/priduct_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> products = [
      {
        "name": "One Seat Pillow Yellow Sufa",
        "image":
            'https://www.demo.martvill.techvill.net/public/uploads/20221123/8455776f6791cd5479bb9a88c829876c.png',
        "price": '12'
      },
      {
        "name": "Modern Design Four Legs Chair withou Arms",
        "image":
            'https://www.demo.martvill.techvill.net/public/uploads/20221123/f8256ae374c1432ad6b8ac1e81fde25e.jpg',
        "price": '18'
      }
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              var prod = products[index];
              return ProductItem(
                  name: prod['name'],
                  image: prod['image'],
                  price: prod["price"]);
            }));
  }
}
