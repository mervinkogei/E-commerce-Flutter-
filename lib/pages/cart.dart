import 'package:flutter/material.dart';
import 'package:shop_ecommerce/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Shopping Cart'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        
        ],
      ),

      body: Cart_products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text('Total:'),
              subtitle: Text('\Ksh230'),),
              ),

              Expanded(child: MaterialButton(onPressed: (){},
              child: Text('Checkout', style: TextStyle(color: Colors.white),),
              color: Colors.redAccent,
              ))
          ],
        ),
      ),
      
    );
  }
}