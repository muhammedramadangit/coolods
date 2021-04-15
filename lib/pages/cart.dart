import 'package:coolods/component/cartProduct.dart';
import 'package:coolods/homePage.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            }),
        elevation: 0.1,
        backgroundColor: Color(0xFFffae00),
        title: InkWell(
          child: Center(
            child: Text(
              'Cart',
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: Stack(
        children: [
          CartProducts(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color(0xFFffae00),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Total\n',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                      TextSpan(
                          text: '200 \$',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w700)),
                    ])),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text('Check out',
                              style: TextStyle(
                                  color: Color(0xFFffae00),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500))),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      /* bottomNavigationBar: */
    );
  }
}

/* Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child: ListTile(
              title: Text('Total:'),
              subtitle: Text(
                '\$320',
                style: TextStyle(color: Color(0xFFffae00)),
              ),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: Text(
                'Check out',
                style: TextStyle(color: Colors.white),
              ),
              color: Color(0xFFffae00),
            ))
          ],
        ),
      ), */
