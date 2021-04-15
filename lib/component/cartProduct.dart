import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var product_in_the_cart = [
    {
      'name': 'Pullover',
      'picture': 'assets/products/pullover.jpg',
      'price': 50,
      'size': 'M',
      'color': 'white',
      'quantity': 1,
    },
    {
      'name': 'Jacket',
      'picture': 'assets/products/jacket.jpg',
      'price': 60,
      'size': 'l',
      'color': 'brown',
      'quantity': 1,
    },
    {
      'name': 'Jeans Pants',
      'picture': 'assets/products/jeans.jpg',
      'price': 65,
      'size': '32',
      'color': 'blue',
      'quantity': 1,
    },
    {
      'name': 'Converse',
      'picture': 'assets/products/shoe.jpg',
      'price': 25,
      'size': '42',
      'color': 'black',
      'quantity': 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: product_in_the_cart.length,
      itemBuilder: (context, index) {
        return SingleCartProduct(
          productName: product_in_the_cart[index]['name'],
          productPicture: product_in_the_cart[index]['picture'],
          productPrice: product_in_the_cart[index]['price'],
          productSize: product_in_the_cart[index]['size'],
          productColor: product_in_the_cart[index]['color'],
          productQty: product_in_the_cart[index]['quantity'],
        );
      },
    );
  }
}

class SingleCartProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productSize;
  final productColor;
  final productQty;

  SingleCartProduct({
    this.productName,
    this.productPicture,
    this.productPrice,
    this.productSize,
    this.productColor,
    this.productQty,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      child: ListTile(
        leading: Image.asset(
          productPicture,
          width: 60.0,
          height: 80.0,
          fit: BoxFit.cover,
        ),
        title: Text(
          productName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 8.0, 5.0, 5.0),
                    child: Text('size :')),
                Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(productSize,
                        style: TextStyle(color: Color(0xFFffae00)))),
                Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 8.0, 5.0, 5.0),
                    child: Text('color :')),
                Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(productColor,
                        style: TextStyle(color: Color(0xFFffae00)))),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Text('\$$productPrice',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFffae00)))),
            ),
          ],
        ),
        /* trailing: Column(
            children: [
              IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
              IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
            ],
          ), */
      ),
    );
  }
}
