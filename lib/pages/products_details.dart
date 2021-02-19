import 'package:flutter/material.dart';
import 'package:shop_ecommerce/main.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_old_price;
  final product_details_new_price;
  final product_details_picture;

  ProductDetails(
      {this.product_details_name,
      this.product_details_new_price,
      this.product_details_old_price,
      this.product_details_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Shop E-commerce')),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          // IconButton(
          //     icon: Icon(
          //       Icons.shopping_cart,
          //       color: Colors.white,
          //     ),
          //     onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_details_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "\Ksh${widget.product_details_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: Text(
                        "\Ksh${widget.product_details_new_price}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ======== The first Size Button ============

          Row(
            children: [
              // ============The Size  ================
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Size'),
                          content: Text('Choose the size'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Size")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),

              // ============The Size  ================
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Color'),
                          content: Text('Choose the Color'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Color")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),

              // ============The Size  ================
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Quantity'),
                          content: Text('Choose the Quantity'),
                          actions: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            )
                          ],
                        );
                      });
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(child: Text("Qty")),
                    Expanded(child: Icon(Icons.arrow_drop_down)),
                  ],
                ),
              )),
            ],
          ),

          // ======== The Second Size Button ============

          Row(
            children: [
              // ============The Size  ================
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.redAccent,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy Now")),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),

              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {})
            ],
          ),

          Divider(),
          ListTile(
            title: Text(
              'Product Details',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'A blazer is generally distinguished from a sport coat as a more formal garment and tailored from solid colour fabrics. Blazers often have naval-style metal buttons to reflect their origins as jackets worn by boating club members.',
              style: TextStyle(height: 1.8),
            ),
          ),

          Divider(),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Name',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.product_details_name),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Brand',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Brand X'),
              )
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Product Condition',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('Used Product'),
              )
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Similar Products", style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          // Single Product Selection
          Container(
            height: 360.0,
            child: Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final product_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod(
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
