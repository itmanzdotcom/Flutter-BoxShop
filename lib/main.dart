import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Boxs Shop"),
        backgroundColor: Colors.red,
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
              onPressed: () {}),
        ],
      ),
      drawer: _getDrawer(),
      body: ListView(
        children: <Widget>[
          _imageCarousel(),
        ],
      ),
    );
  }

  Widget _imageCarousel() {
    return Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.redAccent,
        dotBgColor: Colors.black38,
      ),
    );
  }

  /// Drawer Menu
  Widget _getDrawer() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // header
          UserAccountsDrawerHeader(
            accountName: Text("Johnny"),
            accountEmail: Text("johnny.dev@gmail.com"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.red)),
            ),
            decoration: BoxDecoration(color: Colors.red),
          ),
          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Home"),
            ),
          ),
          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text("My Account"),
            ),
          ),
          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.red,
              ),
              title: Text("My Order"),
            ),
          ),
          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Categories"),
            ),
          ),
          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.red,
              ),
              title: Text("Home"),
            ),
          ),
          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text("Favouries"),
            ),
          ),

          Divider(),

          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.red,
              ),
              title: Text("Settings"),
            ),
          ),

          InkWell(
            splashColor: Colors.red[50],
            onTap: () {},
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.red,
              ),
              title: Text("About"),
            ),
          ),
        ],
      ),
    );
  }
}
