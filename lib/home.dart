import 'package:demo_1/model/product_model.dart';
import 'package:demo_1/service/api.dart';
import 'package:demo_1/widgets/priduct_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Product> products = [];

  getProduct() async {
    print("on INIIT");
    var prods = await Api().fetchProduct();
    setState(() {
      products = prods;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getProduct();
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
              return ProductItem(
                product: prod,
              );
            }));
  }
}
