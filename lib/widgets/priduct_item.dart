import 'package:demo_1/model/product_model.dart';
import 'package:demo_1/product_details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.product,
     });
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                product.image,
                width: 100,
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      softWrap: true,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Text('Price \$ ${product.price}')
                  ],
                ),
              )
            ],
          ),
          TextButton(onPressed: () {
              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  ProductDetails()));
                      
          }, child: Text("Show details"))
        ]),
      ),
    );
  }
}
