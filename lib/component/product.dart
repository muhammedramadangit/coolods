import 'package:coolods/pages/productDetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      'name': 'Pullover',
      'picture': 'assets/products/pullover.jpg',
      'oldPrice': 50,
      'price': 35,
    },
    {
      'name': 'Coat',
      'picture': 'assets/products/coat.jpg',
      'oldPrice': 120,
      'price': 75,
    },
    {
      'name': 'White Dress',
      'picture': 'assets/products/dress.jpg',
      'oldPrice': 85,
      'price': 40,
    },
    {
      'name': 'Jacket',
      'picture': 'assets/products/jacket1.jpg',
      'oldPrice': 100,
      'price': 65,
    },
    {
      'name': 'Converse',
      'picture': 'assets/products/shoe.jpg',
      'oldPrice': 40,
      'price': 25,
    },
    {
      'name': 'Jeans Pants',
      'picture': 'assets/products/jeans.jpg',
      'oldPrice': 80,
      'price': 65,
    },
    {
      'name': 'Sweatshirt',
      'picture': 'assets/products/sweatshirt.jpg',
      'oldPrice': 75,
      'price': 50,
    },
    {
      'name': 'Heels',
      'picture': 'assets/products/heels.jpg',
      'oldPrice': 90,
      'price': 55,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct(
      {this.productName,
      this.productPicture,
      this.productOldPrice,
      this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetails(
                  prodDetailsName: productName,
                  prodDetailsPicture: productPicture,
                  prodDetailsOldPrice: productOldPrice,
                  prodDetailsPrice: productPrice,
                ))),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              offset: Offset(3, 6),
              blurRadius: 8,
            )
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GridTile(
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
              footer: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black.withOpacity(0.9),
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.025),
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: ListTile(
                          leading: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(2.0, 10.0, 0.0, 0.0),
                            child: Text(
                              productName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          title: Text(
                            '$productPrice \$',
                            style: TextStyle(
                              color: Color(0xFFffae00),
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          subtitle: Text(
                            '$productOldPrice \$',
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.9),
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.lineThrough),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
