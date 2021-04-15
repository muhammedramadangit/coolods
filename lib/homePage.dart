import 'package:coolods/component/horizontalListView.dart';
import 'package:coolods/component/product.dart';
import 'package:coolods/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 280.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Stack(
          children: [
            Carousel(
              boxFit: BoxFit.cover,
              images: [
                Image.asset('assets/new/a1.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a2.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a3.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a4.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a5.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a6.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a7.jpg', fit: BoxFit.cover),
                Image.asset('assets/new/a8.jpg', fit: BoxFit.cover),
              ],
              dotSize: 4.0,
              dotSpacing: 12.0,
              indicatorBgPadding: 10.0,
              dotBgColor: Colors.transparent,
              autoplay: false,
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.short_text_rounded,
                          color: Colors.white,
                          size: 36,
                        ),
                        onPressed: () {
                          scaffoldkey.currentState.openDrawer();
                        }),
                    SizedBox(
                      width: 200,
                    ),
                    IconButton(
                        icon: Icon(Icons.search, color: Colors.white),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoppingCart()));
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      key: scaffoldkey,
      /* appBar: new AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.short_text_rounded,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () {
              scaffoldkey.currentState.openDrawer();
            }),
        elevation: 0.0,
        backgroundColor: Color(0xFFffae00),
        title: Text(
          'COOLODS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingCart()));
              }),
        ],
      ), */
      drawer: new Drawer(
        elevation: 0.3,
        child: ListView(
          children: [
            //header
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color(0xFFffae00),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: [
                    Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/11.JPG',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Muhammed Rammadan',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 5,
                    ),
                    Text('m7md.romd@gmail.com',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
            /* UserAccountsDrawerHeader(
              accountName: Text('Muhammed Ramadan'),
              accountEmail: Text('m7md.romd@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Image.asset('assets/11.JPG'),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFffae00),
              ),
            ), */

            //body
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                leading: Icon(
                  Icons.home,
                  color: Color(0xFFffae00),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Account',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.person,
                  color: Color(0xFFffae00),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My orders',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color(0xFFffae00),
                ),
              ),
            ),

            InkWell(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ShoppingCart())),
              child: ListTile(
                title: Text('Shopping cart',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFFffae00),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.favorite,
                  color: Color(0xFFffae00),
                ),
              ),
            ),

            Divider(
              color: Color(0xFFffae00),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Setting',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                leading: Icon(Icons.settings, color: Colors.grey),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: [
          // image Carousel
          imageCarousel,

          // Padding Categories
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            child: Container(
                alignment: Alignment.centerLeft, child: Text('Categories')),
          ),

          //Horizontal List View
          HorizontalList(),

          // Padding Recent Products
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 8.0,
            ),
            child: Container(
                alignment: Alignment.centerLeft,
                child: Text('Recent Products')),
          ),
          // Grid View

          Flexible(child: Products()),
        ],
      ),
    );
  }
}
