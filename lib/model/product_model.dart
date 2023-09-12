class Product {
// Product(this.title,this.image,this.price);

  final String title;
  final String image;
  final String price;
  Product({required this.title, required this.image, required this.price});

  factory Product.fromJson(dynamic json) {
    return Product(
        title: json['title'], image: json['image'], price: json['price'].toString());
  }
}


// Product p = Product('hhtp://Image.com',"My Title",10.00);
