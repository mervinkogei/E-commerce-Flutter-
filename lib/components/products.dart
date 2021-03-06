import 'package:flutter/material.dart';
import 'package:shop_ecommerce/pages/products_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/images/products/blazer1.jpeg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Red Dress",
      "picture": "images/images/products/dress1.jpeg",
      "old_price": 1500,
      "price": 800,
    },
    {
      "name": "Heels Shoe",
      "picture": "images/images/products/hills1.jpeg",
      "old_price": 1200,
      "price": 1000,
    },
    {
      "name": "Jeans",
      "picture": "images/images/products/pants1.jpg",
      "old_price": 1300,
      "price": 900,
    },
    {
      "name": "Skirt",
      "picture": "images/images/products/skt1.jpeg",
      "old_price": 800,
      "price": 500,
    },
    {
      "name": "Ladies Blazzer",
      "picture": "images/images/products/blazer2.jpeg",
      "old_price": 2500,
      "price": 1800,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final product_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.product_picture,
      this.prod_old_price,
      this.prod_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                        //Passing the values of the product
                        product_details_name: prod_name,
                        product_details_new_price: prod_price,
                        product_details_old_price: prod_old_price,
                        product_details_picture: product_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)),
                        Text("\Ksh$prod_price", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
