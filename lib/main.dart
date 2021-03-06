import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'components/products.dart';
import 'package:shop_ecommerce/pages/cart.dart';

//Import files
import 'package:shop_ecommerce/components/horizontal_listview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/images/c1.jpg'),
          AssetImage('images/images/m2.jpg'),
          AssetImage('images/images/m1.jpeg'),
          AssetImage('images/images/w1.jpeg'),
          AssetImage('images/images/w3.jpeg'),
          AssetImage('images/images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        title: Text('Shop E-commerce'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Vincent'),
              accountEmail: Text('vincent@moovn.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent),
            ),

            //body
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.redAccent,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //Image Carousel
          image_carousel,
          //Padding
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Categories',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),

          //Horizontal List View begins here
          HorizontalList(),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Recent Products',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          //Grid View
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
