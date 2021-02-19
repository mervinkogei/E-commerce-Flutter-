import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_cart = [
    {
      "name": "Blazer",
      "picture": "images/images/products/blazer1.jpeg",
      "price": 850,
      "size": "M",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Ladies Blazzer",
      "picture": "images/images/products/blazer2.jpeg",
      "price": 1500,
      "size": "M",
      "color": "Black",
      "quantity": 1
    },
    {
      "name": "Skirt",
      "picture": "images/images/products/skt1.jpeg",
      "price": 2500,
      "size": "L",
      "color": "Red",
      "quantity": 1
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Products_on_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_prod_name: Products_on_cart[index]["name"],
          cart_product_color: Products_on_cart[index]["color"],
          cart_product_picture: Products_on_cart[index]["picture"],
          cart_product_price: Products_on_cart[index]["price"],
          cart_product_quantity: Products_on_cart[index]["quantity"],
          cart_product_size: Products_on_cart[index]["size"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_product_picture,
      this.cart_product_color,
      this.cart_product_price,
      this.cart_product_quantity,
      this.cart_product_size});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(cart_prod_name),
        subtitle: Column(
          children: [
            Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Size:"),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(cart_product_size),
                 ),

                   Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Color:"),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text(cart_product_color),
                 ),
              ],
            )
        ],),
      ),
    );
  }
}
