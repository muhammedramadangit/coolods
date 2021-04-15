import 'package:coolods/homePage.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final prodDetailsName;
  final prodDetailsPicture;
  final prodDetailsOldPrice;
  final prodDetailsPrice;

  ProductDetails(
      {this.prodDetailsName,
      this.prodDetailsPicture,
      this.prodDetailsOldPrice,
      this.prodDetailsPrice});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      /* appBar: new AppBar(
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
              'COOLODS',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
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
      ), */
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      Image.asset(
                        widget.prodDetailsPicture,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [
                                Colors.black.withOpacity(0.9),
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
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  right: 30.0,
                                  top: 30.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      widget.prodDetailsName,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 28),
                                    ),
                                    /* 
                                    SizedBox(
                                      width: 60,
                                    ), */
                                    Text(
                                      "${widget.prodDetailsOldPrice} \$",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white.withOpacity(0.8),
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                    /* 
                                    SizedBox(
                                      width: 30,
                                    ), */
                                    Text("${widget.prodDetailsPrice} \$",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFFffae00),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /* new Container(
                height: 250.0,
                child: GridTile(
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      widget.prodDetailsPicture,
                    ),
                  ),
                  footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        widget.prodDetailsName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      title: Row(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0)),
                          Expanded(
                              child: new Text(
                            "\$${widget.prodDetailsOldPrice}",
                            style: TextStyle(
                                color: Colors.black45,
                                decoration: TextDecoration.lineThrough),
                          )),
                          Expanded(
                            child: new Text("\$${widget.prodDetailsPrice}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFffae00),
                                )),
                          )
                        ],
                      ),
                    ),
                  ), 
                ),
              ), */

//        =============== the first buttons ============
              new Row(
                children: [
//        =============== the size button ==============
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
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    'Close',
                                    style: TextStyle(color: Color(0xFFffae00)),
                                  ),
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
                        Expanded(child: Text('Size')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),

//        =============== the Color button ==============
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
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    'Close',
                                    style: TextStyle(color: Color(0xFFffae00)),
                                  ),
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
                        Expanded(child: Text('Color')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),

//        =============== the Quantity button ==============
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
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text(
                                    'Close',
                                    style: TextStyle(color: Color(0xFFffae00)),
                                  ),
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
                        Expanded(child: Text('Qty')),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  )),
                ],
              ),

//        =============== the second buttons ============
              Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: new Row(
                  children: [
                    Container(
                      height: 45,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xFFffae00),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Buy now',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    IconButton(
                        icon: Icon(Icons.add_shopping_cart),
                        color: Color(0xFFffae00),
                        onPressed: () {}),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                        icon: Icon(Icons.favorite_border),
                        color: Color(0xFFffae00),
                        onPressed: () {})

                    /*  Expanded(
                        child: IconButton(
                            icon: Icon(Icons.add_shopping_cart),
                            color: Colors.red,
                            onPressed: () {})),
                    Expanded(
                        child: IconButton(
                            icon: Icon(Icons.favorite_border),
                            color: Colors.red,
                            onPressed: () {})) */
                  ],
                ),
              ),

              Divider(),

              ListTile(
                title: Text('Product Details'),
                subtitle: Text(
                    'Fashion is a popular aesthetic expression at a particular period and place and in a specific context, especially in clothing, footwear, lifestyle, accessories, makeup, hairstyle, and body proportions.'),
              ),

              Divider(),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text('Product name',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(widget.prodDetailsName),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text('Product brand',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('brand X'),
                  )
                ],
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                    child: Text('Product condition',
                        style: TextStyle(color: Colors.grey)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text('New'),
                  )
                ],
              ),

              Divider(),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Similer Product'),
              ),

              Container(
                height: 320.0,
                child: SimilerProducts(),
              )
            ],
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 235,
                  ),
                  IconButton(
                      icon: Icon(Icons.home, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SimilerProducts extends StatefulWidget {
  @override
  _SimilerProductsState createState() => _SimilerProductsState();
}

class _SimilerProductsState extends State<SimilerProducts> {
  var productList = [
    {
      'name': 'Coat',
      'picture': 'assets/products/coat.jpg',
      'oldPrice': 120,
      'price': 75,
    },
    {
      'name': 'Pullover',
      'picture': 'assets/products/pull.jpg',
      'oldPrice': 50,
      'price': 35,
    },
    {
      'name': 'Jacket',
      'picture': 'assets/products/jacket.jpg',
      'oldPrice': 90,
      'price': 60,
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
          return SimilerSingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productOldPrice: productList[index]['oldPrice'],
            productPrice: productList[index]['price'],
          );
        });
  }
}

class SimilerSingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SimilerSingleProduct(
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
