import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final List images = [
    {
      "image":
          "https://www.demo.martvill.techvill.net/public/uploads/20221123/f8256ae374c1432ad6b8ac1e81fde25e.jpg",
      "title": "My Sofa"
    },
    {
      "image":
          "https://www.demo.martvill.techvill.net/public/uploads/20221123/8455776f6791cd5479bb9a88c829876c.png",
      "title": "My Sofa 2"
    },
    {
      "image":
          "https://www.demo.martvill.techvill.net/public/uploads/sizes/medium/20221116/8e4f7f9cffd21f3f267147d2cf3e79b1.jpg",
      "title": "My Key Chains"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Details"),
        ),
        body: Container(
          color: Colors.grey.shade300,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              CarouselSlider(
                options: CarouselOptions(
                    height: 240.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000)),
                items: images.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Image.network(
                              item['image'],
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              item["title"],
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
